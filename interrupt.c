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
		T2EN = 0;		 //当T2EN=0时，写T2LOAD将自动加载到T2中。
		T2EN = 1;		 //当 T2EN=1时，写T2LOAD不会加载T2中，在T2溢出时自动加载到T2中。
		timer_1ms++;
		if(timer_1ms >= 16)		//4Mhz 1/4000000 0.25um, 0.25*256(8位定时器)=64um， 0.064ms*16=1.024ms，不用一直while等待
		{	
			timer_1ms=0;
			KeyTick++;
			
			BatteryTick_Ctrl();
			ChargeTick_Ctrl();
			SleepTick_Ctlr();
		}
	}
}