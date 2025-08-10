#include "holychip_define.h"
#include "led.h"
#include "power.h"
#include "key.h"

unsigned char LED_PWM[2] = {0};					//���ո���PWM�Ĵ�����
unsigned char LED_ColorPwm[2] = {0};			//ɫ�µ�pwm
unsigned char LED_DimPwm[2] = {0};				//�����PWM
unsigned char LedColor = 0;						//LED��ɫ��־λ

unsigned char LED_W_DimArray[7] = {0};			//�׵Ƶ����ȵȼ�
unsigned char LED_Y_DimArray[7] = {0};			//�ƵƵ����ȵȼ�
unsigned char LED_W_DimIndex = 0;				//�׵����ȵȼ�����
unsigned char LED_Y_DimIndex = 0;				//�Ƶ����ȵȼ�����

void led_Init(void)
{
	WDTEN=0;		//�ر�WDT
	OPTION=0X00;	//ʹ�ø�Ƶʱ��
	
	TMR2H=0x00;		//00��PB0 ��Ϊ TM1PWM �ܽţ�PB1 ��Ϊ TM2PWM
	PWM0E=1;		//PWM0�������
	PWM1E=1;		//PWM1�������
	
	
	T1=0x34;		//T1�����Ĵ���
	T1LOAD=0xf0;	//T1��װ�ؼĴ���
	PWM0P=0x0;		//PWM0ռ�ձȼĴ���
	T1CON=0x40;		//Ԥ��Ƶ��1:1��ʱ��ԴFcpu
		
	T1EN=1;			//��T1�ݼ�������

	T2=0x34;		//T2�����Ĵ���
	T2LOAD=0xf0;	//T2��װ�ؼĴ���
	PWM1P=0x0;		//PWM2ռ�ձȼĴ���
	T2CON=0x40;		//Ԥ��Ƶ��1:1��ʱ��ԴFcpu
		
	T2EN=1;			//��T2�ݼ�������

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
PWM0�ߵ�ƽʱ��=(PWMOP)*Tl����ʱ������
PWM0����(Tl���������)=(TILOAD+1)*T1�ļ���ʱ������
PWM0ռ�ձ�=(PWMOP/(TILOAD+1))
***/

//���ȿ���
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

//��ɫ����
/*
EveColor = 1���׵���LedColor = 0
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
		case LED_COLOR_Y:			//�Ƶ��� 1
			{
				LED_ColorPwm[LED_W_PWM_INDEX] = 0;
				LED_ColorPwm[LED_Y_PWM_INDEX] = LED_DimPwm[ LED_Y_PWM_INDEX ];
			}
		break;
		
		case LED_COLOR_W:			//�׵��� 0
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