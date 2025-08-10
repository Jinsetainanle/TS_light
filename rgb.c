#include "holychip_define.h"
#include "rgb.h"
#include "battery.h"

unsigned char RgbEffect = 0;				//要么闪烁，要么长亮，要么不亮
bit RgbStatus = 0;							//灯的开关
unsigned int RgbEffectTick = 0;

void RGB_Init(void)
{
	*PORTB_REG_ADDR_DIR &= ~RGB_PIN;		
	*PORTB_REG_ADDR_PU &= ~RGB_PIN;		
	*PORTB_REG_ADDR_PD |= RGB_PIN;				
	
	RGB_OFF;
}

void RGB_Tick_Ctrl(void)
{
	if( RgbEffectTick < RGB_EFFECT_CYCLY )
	{
		RgbEffectTick++;
	}
}

void RGB_Manage(void)
{

	RGB_Effect();
	RGB_Set();
}

void RGB_Effect_Judg(void)
{

	static unsigned char LastEffect = 0;

	LastEffect = RgbEffect;
	
	if( BatteryStatus == BATTERY_STATUS_FULL && ChargeStatus == CHARGE_STATUS_CHARGING )	//充电 且 电池满
	{
		RgbEffect = RGB_EFFECT_LIGHT;
	}
	else if( ChargeStatus == CHARGE_STATUS_CHARGING  )										//充电的时候	
	{
		RgbEffect = RGB_EFFECT_TWINKLING;													//慢闪
	}
	else if( BatteryStatus == BATTERY_STATUS_LOW && PowerStatus == POWER_STATUS_ON )		//低电量 且 在开机的时候
//	else if( BatteryStatus == BATTERY_STATUS_LOW )		//低电量 且 在开机的时候
	{
		RgbEffect = RGB_EFFECT_TWINK_FAST;													//快闪
	}
	else
	{
		RgbEffect = RGB_EFFECT_OFF;
	}


	if( LastEffect != RgbEffect )
	{
		LastEffect = RgbEffect;
		
		RgbEffectTick = 0;
	}
}

void RGB_Effect(void)
{
	unsigned char index = 0;

	RGB_Effect_Judg();

	index = RgbEffect;
	
	switch (index)
	{
		case RGB_EFFECT_OFF:
			RgbStatus = RGB_STATUS_OFF;
			RgbEffectTick = 0;
			break;
			
		case RGB_EFFECT_TWINK_FAST:
		
			if( RgbEffectTick >= (RGB_EFFECT_CYCLY >> 2) )
			{
				RgbEffectTick = 0;
				RgbStatus = (RgbStatus == RGB_STATUS_OFF ) ? RGB_STATUS_ON : RGB_STATUS_OFF;
			}
			break;
			
		case RGB_EFFECT_TWINKLING:
		
			if( RgbEffectTick >= RGB_EFFECT_CYCLY )
			{
				RgbEffectTick = 0;
				RgbStatus = (RgbStatus == RGB_STATUS_OFF ) ? RGB_STATUS_ON : RGB_STATUS_OFF;
			}
			break;
			
		case RGB_EFFECT_LIGHT:
			RgbStatus = RGB_STATUS_ON;
			RgbEffectTick = 0;
			break;	
			
		default:
		break;
		
	}
}

void RGB_Set(void)
{
	if( RgbStatus == RGB_STATUS_OFF )
	{
		RGB_OFF;
	}
	else
	{
		RGB_ON;
	}
}