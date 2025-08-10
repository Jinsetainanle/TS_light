/*  ************************************************************************************
*								上海芯圣电子股份有限公司
*								    www.holychip.cn
*	************************************************************************************
*/
#include "holychip_define.h"
#include "inital.h"


////////////////////////////////////////////////////////////////////////
////////////////////////////	 端口初始化	////////////////////////////
////////////////////////////////////////////////////////////////////////
void inital(void)
{
	ANSELL=0X00;		//0=数字，1=模拟
	ANSELH=0X00;		//0=数字，1=模拟
	
	TRISA=0X00;			//1 input，0 output
	TRISB=0X00;			//1 input，0 output
	
	
	PORTA=0X00;			//1	high , 0 low
	PORTB=0X00;			//1	high , 0 low
	
	
	PHCON1=0XFF;			//1 disenable high pull ,0 enable high pull
	PHCON=0XFF;			//1 disenable high pull ,0 enable high pull
	
	
	PDCON1=0xFF;			//1 disenable down pull ,0 enable down pull
	PDCON=0xFF;			//1 disenable down pull ,0 enable down pull
	
	
	IOCA=0X00;			//0 disenable weak up 	,1 enable weak up 
	IOCB=0X00;			//0 disenable weak up 	,1 enable weak up 
	
	
    PBIE=0;			//0	disenable Port level change interrupt , 1 enable Port level change interrupt
	

}

////////////////////////////////////////////////////////////////////////
////////////////////////	系统初始化 		////////////////////////////
////////////////////////////////////////////////////////////////////////
void sysinitial(void)
{

	T0OSCEN=1;
	OPTION=0xBF;
	
}

void ramInitial(void)
{
	FSR=0X3f;				//bank0区通用寄存器INITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x0f);
	
	FSR=0Xdf;				//bank1区通用寄存器INITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x8f);
}