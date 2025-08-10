#include "holychip_define.h"
#include "charge.h"

bit ChargeStatus = 0;					//是否充电的状态标志
unsigned char Cnt1 = 0;					//计次
unsigned char Cnt2 = 0;					//计次
unsigned char ChargeDetectTick = 0;		//充电检测 计数

/*
**充电端口初始化
**VBUS_C接充电器VCC引脚，高电平时插上充电器了
**CHRG接电池管理芯片引脚，当充电器向电池充电时，CHRG引脚被内部开关拉到低电平，表示充电正在进行；当充电结束时，CHRG管脚处于高阻态
*/
void Charge_Init(void)
{
	*PORTB_REG_ADDR_DIR |= CHARGE_DETECT_PIN;		//对应位置1 输入
	*PORTB_REG_ADDR_PU |= CHARGE_DETECT_PIN;		//对应位置1 屏蔽上拉
	*PORTB_REG_ADDR_PD &= ~CHARGE_DETECT_PIN;		//对应位清0 使能下拉
	
	*PORTB_REG_ADDR_DIR |= CHARGE_FULL_PIN;			//对应位置1 输入	
	*PORTB_REG_ADDR_PU &= ~CHARGE_FULL_PIN;			//对应位清0 使能上拉	
	*PORTB_REG_ADDR_PD |= CHARGE_FULL_PIN;			//对应位置1 屏蔽下拉
}

void ChargeTick_Ctrl(void)
{
	if( ChargeDetectTick < CHARGE_DETECT_CYCLE )
	{
		ChargeDetectTick++;
	}
}

/*
**充电配置
*/
void Charge_Config(void)
{
	Charge_Init();
	ChargeStatus = CHARGE_STATUS_UNCHARGE;	
}

/*
**充电管理
*/
void Charge_Manage(void)
{
	Charge_Detect();
}

/*
**充电检测
*/
void Charge_Detect(void)
{
	if(ChargeDetectTick < CHARGE_DETECT_CYCLE)
	{
		return;
	}
	ChargeDetectTick = 0;
	
	if(CHARGE_DETECT_IO)
	{
		Cnt1++;
		Cnt2 = 0;
		if(Cnt1 > 20)
		{
			Cnt1 = 0;
			ChargeStatus = CHARGE_STATUS_CHARGING;
		}
	}
	else
	{
		Cnt2++;
		Cnt1 = 0;
		if(Cnt2 > 20)
		{
			Cnt2 = 0;
			ChargeStatus = CHARGE_STATUS_UNCHARGE;
		}
	}
}