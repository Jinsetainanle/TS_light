#include "holychip_define.h"
#include "power.h"
#include "eve.h"

bit PowerStatus = 0;					//¿ª¹Ø×´Ì¬

void Power_Manage(void)
{
	Power_Turn();
}

void Power_Turn(void)
{
	if(EvePower == EVE_POWER_OFF)
	{
		PowerStatus = POWER_STATUS_OFF;
	}
	else
	{
		PowerStatus = POWER_STATUS_ON;
	}
}

void Power_Init(void)
{
	PowerStatus = POWER_STATUS_OFF;
}