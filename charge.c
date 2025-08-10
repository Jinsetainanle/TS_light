#include "holychip_define.h"
#include "charge.h"

bit ChargeStatus = 0;					//�Ƿ����״̬��־
unsigned char Cnt1 = 0;					//�ƴ�
unsigned char Cnt2 = 0;					//�ƴ�
unsigned char ChargeDetectTick = 0;		//����� ����

/*
**���˿ڳ�ʼ��
**VBUS_C�ӳ����VCC���ţ��ߵ�ƽʱ���ϳ������
**CHRG�ӵ�ع���оƬ���ţ�����������س��ʱ��CHRG���ű��ڲ����������͵�ƽ����ʾ������ڽ��У���������ʱ��CHRG�ܽŴ��ڸ���̬
*/
void Charge_Init(void)
{
	*PORTB_REG_ADDR_DIR |= CHARGE_DETECT_PIN;		//��Ӧλ��1 ����
	*PORTB_REG_ADDR_PU |= CHARGE_DETECT_PIN;		//��Ӧλ��1 ��������
	*PORTB_REG_ADDR_PD &= ~CHARGE_DETECT_PIN;		//��Ӧλ��0 ʹ������
	
	*PORTB_REG_ADDR_DIR |= CHARGE_FULL_PIN;			//��Ӧλ��1 ����	
	*PORTB_REG_ADDR_PU &= ~CHARGE_FULL_PIN;			//��Ӧλ��0 ʹ������	
	*PORTB_REG_ADDR_PD |= CHARGE_FULL_PIN;			//��Ӧλ��1 ��������
}

void ChargeTick_Ctrl(void)
{
	if( ChargeDetectTick < CHARGE_DETECT_CYCLE )
	{
		ChargeDetectTick++;
	}
}

/*
**�������
*/
void Charge_Config(void)
{
	Charge_Init();
	ChargeStatus = CHARGE_STATUS_UNCHARGE;	
}

/*
**������
*/
void Charge_Manage(void)
{
	Charge_Detect();
}

/*
**�����
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