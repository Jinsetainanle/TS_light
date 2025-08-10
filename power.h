#ifndef __POWER__
#define __POWER__

#define POWER_STATUS_OFF			0
#define POWER_STATUS_ON				1

extern bit PowerStatus;

void Power_Manage(void);
void Power_Turn(void);
void Power_Init(void);


#endif