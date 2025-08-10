#include "holychip_define.h"
#include "driver.h"

void Tick_Timer_Init(void)
{
	T2 = 0xFF;			//T2 �����Ĵ���
	TMR2H = 0x00;		//PB0 ��Ϊ TM1PWM �ܽţ�PB1 ��Ϊ TM2PWM
	T2LOAD = 0xFF;		//���� Timer2 ������ֵ

	TickTimer_Open();
}

void TickTimer_Close(void)
{
	T2IE = 0;		//Timer2 ����ж�ʹ��λ
	T2EN = 0;		//T2 ʹ�ܿ���
	
	T2IF = 0;		//1 = Timer2 ���� Timer2 ����ж�(�������������)

}

void TickTimer_Open(void)
{
	T2IE = 1;		//Timer2 ����ж�ʹ��λ
	T2EN = 1;		//T2 ʹ�ܿ���
	
	T2IF = 0;		//1 = Timer2 ���� Timer2 ����ж�(�������������)
}


void Key_Interrupt_Open(void)
{
	PBIE = 1;
	IOCB2 = 1;
}

void Key_Interrupt_Close(void)
{
	
	PBIE = 0;
	IOCB2 = 0;
	
}

void ChargeDetect_Interrupt_Open(void)
{
//	PBIE = 1;							//���λ�����ж��������ʱ��Ӱ�쵽Ҫ��Ҫ�����жϷ�����
//	IOC_B |= CHARGE_DETECT_PIN;

	PBIE = 1;		
	IOCB6 = 1;
}

void ChargeDetect_Interrupt_Close(void)
{
//	PBIE = 0;
//	IOC_B &= ~CHARGE_DETECT_PIN;

	PBIE = 0;			//���������жϣ����ڻ���
	IOCB6 = 0;
}

//******************************��ʱ�ӳ���******************************
/*
uS��ʱ����������������� unsigned char t���޷���ֵ
 unsigned char �Ƕ����޷����ַ���������ֵ�ķ�Χ��
 0~255 ��ȷ��ʱ��ʹ�û��,������ʱ
------------------------------------------------*/
void DelayUs2x(unsigned char t)
{   
 while(--t);
}
/*------------------------------------------------
 mS��ʱ����������������� unsigned int t���޷���ֵ
 unsigned int �Ƕ����޷����ַ���������ֵ�ķ�Χ��
 0~1024 ��ȷ��ʱ��ʹ�û��
------------------------------------------------*/
void DelayMs(unsigned int t)
{
     
 while(t--)
 {
     //������ʱ1mS
     DelayUs2x(120);
	 DelayUs2x(125);
 }
}