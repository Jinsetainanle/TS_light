#include "holychip_define.h"
#include "interrupt.h"
#include "battery.h"
#include "charge.h"
#include "sleep.h"

void interrupt Timer2_Isr(void)
{
	static unsigned char timer_1ms = 0;
	
	if(PBIF)
	{
		PBIF = 0;
	}
	
	if(T2IF)
	{
		T2IF = 0;		 //Clear T2IF
		T2EN = 0;		 //��T2EN=0ʱ��дT2LOAD���Զ����ص�T2�С�
		T2EN = 1;		 //�� T2EN=1ʱ��дT2LOAD�������T2�У���T2���ʱ�Զ����ص�T2�С�
		timer_1ms++;
		if(timer_1ms >= 16)		//4Mhz 1/4000000 0.25um, 0.25*256(8λ��ʱ��)=64um�� 0.064ms*16=1.024ms������һֱwhile�ȴ�
		{	
			timer_1ms=0;
			KeyTick++;
			
			BatteryTick_Ctrl();
			ChargeTick_Ctrl();
			SleepTick_Ctlr();
		}
	}
}