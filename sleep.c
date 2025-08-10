#include "holychip_define.h"
#include "sleep.h"
#include "driver.h"
#include "battery.h"
#include "charge.h"
#include "power.h"

bit SleepSig = 0;					
unsigned int PowerOffPrepareToSleepTick = 0;		//关机后计数一段时间后在睡眠


void SleepTick_Ctlr(void)
{
	if( PowerStatus == POWER_STATUS_OFF && ChargeStatus == CHARGE_STATUS_UNCHARGE )
	{
	
		if( PowerOffPrepareToSleepTick < POWER_OFF_PREPARE_TO_SLEEP_TIME )
		{
			PowerOffPrepareToSleepTick++;
		}
		else
		{
			PowerOffPrepareToSleepTick = 0;
			SleepSig = 1;
		}
	}
	else
	{
		PowerOffPrepareToSleepTick = 0;
		SleepSig = 0;
	}
}

void Sleep_Manage(void)
{
	if( !SleepSig )
	{
		return;
	}
	SleepSig = 0;

	Sleep_Init();
	
	Sleep_Jump();
	
	DelayMs(3);
	
	Battery_Init_Data();			//更新一下电池
	
	Sleep_Wakeup();
}

void Sleep_Init(void)
{
	TickTimer_Close();
	Key_Interrupt_Open();
	ChargeDetect_Interrupt_Open();
	
	GIE = 0;	
}

void Sleep_Wakeup(void)
{
	ChargeDetect_Interrupt_Close();
	Key_Interrupt_Close();
	TickTimer_Open();
	
	GIE = 1;
}

void Sleep_Jump(void)
{
	T0OSCEN=0;
	#asm
	nop
	nop
	sleep
	nop
	nop
	#endasm
}
