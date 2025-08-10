/*  ************************************************************************************
*								�Ϻ�оʥ���ӹɷ����޹�˾
*								    www.holychip.cn
*	************************************************************************************
*/
#include "holychip_define.h"
#include "inital.h"


////////////////////////////////////////////////////////////////////////
////////////////////////////	 �˿ڳ�ʼ��	////////////////////////////
////////////////////////////////////////////////////////////////////////
void inital(void)
{
	ANSELL=0X00;		//0=���֣�1=ģ��
	ANSELH=0X00;		//0=���֣�1=ģ��
	
	TRISA=0X00;			//1 input��0 output
	TRISB=0X00;			//1 input��0 output
	
	
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
////////////////////////	ϵͳ��ʼ�� 		////////////////////////////
////////////////////////////////////////////////////////////////////////
void sysinitial(void)
{

	T0OSCEN=1;
	OPTION=0xBF;
	
}

void ramInitial(void)
{
	FSR=0X3f;				//bank0��ͨ�üĴ���INITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x0f);
	
	FSR=0Xdf;				//bank1��ͨ�üĴ���INITIAL RAM
	do{
		INDF=0;
		FSR--;
	}while(FSR != 0x8f);
}