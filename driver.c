#include "holychip_define.h"
#include "driver.h"

void Tick_Timer_Init(void)
{
	T2 = 0xFF;			//T2 计数寄存器
	TMR2H = 0x00;		//PB0 作为 TM1PWM 管脚，PB1 作为 TM2PWM
	T2LOAD = 0xFF;		//设置 Timer2 的重载值

	TickTimer_Open();
}

void TickTimer_Close(void)
{
	T2IE = 0;		//Timer2 溢出中断使能位
	T2EN = 0;		//T2 使能控制
	
	T2IF = 0;		//1 = Timer2 产生 Timer2 溢出中断(必须由软件清零)

}

void TickTimer_Open(void)
{
	T2IE = 1;		//Timer2 溢出中断使能位
	T2EN = 1;		//T2 使能控制
	
	T2IF = 0;		//1 = Timer2 产生 Timer2 溢出中断(必须由软件清零)
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
//	PBIE = 1;							//这个位，在中断请求产生时，影响到要不要进入中断服务函数
//	IOC_B |= CHARGE_DETECT_PIN;

	PBIE = 1;		
	IOCB6 = 1;
}

void ChargeDetect_Interrupt_Close(void)
{
//	PBIE = 0;
//	IOC_B &= ~CHARGE_DETECT_PIN;

	PBIE = 0;			//开启按键中断，用于唤醒
	IOCB6 = 0;
}

//******************************延时子程序******************************
/*
uS延时函数，含有输入参数 unsigned char t，无返回值
 unsigned char 是定义无符号字符变量，其值的范围是
 0~255 精确延时请使用汇编,大致延时
------------------------------------------------*/
void DelayUs2x(unsigned char t)
{   
 while(--t);
}
/*------------------------------------------------
 mS延时函数，含有输入参数 unsigned int t，无返回值
 unsigned int 是定义无符号字符变量，其值的范围是
 0~1024 精确延时请使用汇编
------------------------------------------------*/
void DelayMs(unsigned int t)
{
     
 while(t--)
 {
     //大致延时1mS
     DelayUs2x(120);
	 DelayUs2x(125);
 }
}