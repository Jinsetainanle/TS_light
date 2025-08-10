#include "holychip_define.h"
#include "led.h"
#include "power.h"
#include "key.h"

unsigned char LED_PWM[2] = {0};					//最终给到PWM寄存器的
unsigned char LED_ColorPwm[2] = {0};			//色温的pwm
unsigned char LED_DimPwm[2] = {0};				//调光的PWM
unsigned char LedColor = 0;						//LED颜色标志位

unsigned char LED_W_DimArray[7] = {0};			//白灯的亮度等级
unsigned char LED_Y_DimArray[7] = {0};			//黄灯的亮度等级
unsigned char LED_W_DimIndex = 0;				//白灯亮度等级索引
unsigned char LED_Y_DimIndex = 0;				//黄灯亮度等级索引

void led_Init(void)
{
	WDTEN=0;		//关闭WDT
	OPTION=0X00;	//使用高频时钟
	
	TMR2H=0x00;		//00：PB0 作为 TM1PWM 管脚，PB1 作为 TM2PWM
	PWM0E=1;		//PWM0输出波形
	PWM1E=1;		//PWM1输出波形
	
	
	T1=0x34;		//T1计数寄存器
	T1LOAD=0xf0;	//T1重装载寄存器
	PWM0P=0x0;		//PWM0占空比寄存器
	T1CON=0x40;		//预分频比1:1，时钟源Fcpu
		
	T1EN=1;			//开T1递减计数器

	T2=0x34;		//T2计数寄存器
	T2LOAD=0xf0;	//T2重装载寄存器
	PWM1P=0x0;		//PWM2占空比寄存器
	T2CON=0x40;		//预分频比1:1，时钟源Fcpu
		
	T2EN=1;			//开T2递减计数器

	LED_W_DimIndex = 6;
	LED_Y_DimIndex = 6;
	
	LED_W_DimArray[0] = 10;
	LED_W_DimArray[1] = 20;
	LED_W_DimArray[2] = 30;
	LED_W_DimArray[3] = 40;
	LED_W_DimArray[4] = 50;
	LED_W_DimArray[5] = 60;
	LED_W_DimArray[6] = 70;
	
	LED_Y_DimArray[0] = 10;
	LED_Y_DimArray[1] = 20;
	LED_Y_DimArray[2] = 30;
	LED_Y_DimArray[3] = 40;
	LED_Y_DimArray[4] = 50;
	LED_Y_DimArray[5] = 60;
	LED_Y_DimArray[6] = 70;
}
/***
PWM0高电平时间=(PWMOP)*Tl计数时钟周期
PWM0周期(Tl的溢出周期)=(TILOAD+1)*T1的计数时钟周期
PWM0占空比=(PWMOP/(TILOAD+1))
***/

//亮度控制
void LED_Dim(void)
{
	LED_DimIndex_Ctrl();
	
	LED_DimPwm[ LED_W_PWM_INDEX ] = LED_W_DimArray[ LED_W_DimIndex ];		
	LED_DimPwm[ LED_Y_PWM_INDEX ] = LED_Y_DimArray[ LED_Y_DimIndex ];
}

void LED_DimIndex_Ctrl(void)
{
	if(!EveDim)
	{
		return;
	}
	EveDim = 0;
	
	if(LedColor == LED_COLOR_W)
	{
		LED_W_DimIndex++;
		if(LED_W_DimIndex > 6)
		{
			LED_W_DimIndex = 0;
		}
	}
	else
	{
		LED_Y_DimIndex++;
		if(LED_Y_DimIndex > 6)
		{
			LED_Y_DimIndex = 0;
		}
	}
	
}

//颜色控制
/*
EveColor = 1，白灯亮LedColor = 0
*/
void LED_Color(void)
{
	unsigned char index = 0;
	if(EveColor)
	{
//		EveColor = 0;
		LedColor = LED_COLOR_W;
	}
//	if(PowerStatus == POWER_STATUS_OFF)
//	if(!EveColor )
	else
	{
//		EveColor = 1;
		LedColor = LED_COLOR_Y;
	}
	index = LedColor;
	
	switch(index)
	{
		case LED_COLOR_Y:			//黄灯亮 1
			{
				LED_ColorPwm[LED_W_PWM_INDEX] = 0;
				LED_ColorPwm[LED_Y_PWM_INDEX] = LED_DimPwm[ LED_Y_PWM_INDEX ];
			}
		break;
		
		case LED_COLOR_W:			//白灯亮 0
			{
				LED_ColorPwm[LED_Y_PWM_INDEX] = 0;
				LED_ColorPwm[LED_W_PWM_INDEX] = LED_DimPwm[ LED_W_PWM_INDEX ];
			}
		break;
		
		default:
			LED_ColorPwm[ LED_W_PWM_INDEX ] = LED_DimPwm[ LED_W_PWM_INDEX ]; 
			LED_ColorPwm[ LED_Y_PWM_INDEX ] = LED_DimPwm[ LED_Y_PWM_INDEX ];
		break;
	}
	
	
}

void LED_Status(void)
{
	unsigned char pwm[2] = {0};
	
	pwm[LED_W_PWM_INDEX] = LED_ColorPwm[LED_W_PWM_INDEX];
	pwm[LED_Y_PWM_INDEX] = LED_ColorPwm[LED_Y_PWM_INDEX];
	
	if( PowerStatus == POWER_STATUS_OFF )
	{
		pwm[ LED_W_PWM_INDEX ] = 0;
		pwm[ LED_Y_PWM_INDEX ] = 0;
	}
	
	LED_PWM[LED_W_PWM_INDEX] = pwm[LED_W_PWM_INDEX];
	LED_PWM[LED_Y_PWM_INDEX] = pwm[LED_Y_PWM_INDEX];
}

void LED_PWM_Set(void)
{
	LED_W_PWM_REG = LED_PWM[LED_W_PWM_INDEX];
	LED_Y_PWM_REG = LED_PWM[LED_Y_PWM_INDEX];	
}

void LED_Manage(void)
{
	LED_Dim();
	LED_Color();
	LED_Status();
	LED_PWM_Set();
}