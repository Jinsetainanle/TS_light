#ifndef __EVE__
#define __EVE__

#define EVE_POWER_OFF			0
#define EVE_POWER_ON			1

extern bit EvePower;
extern bit EveDim;
extern bit EveColor;

void Eve_Detect(void);
void Eve_Manage(void);

#endif