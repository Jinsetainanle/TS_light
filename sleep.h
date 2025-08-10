#ifndef __SLEEP__
#define __SLEEP__

#define POWER_OFF_PREPARE_TO_SLEEP_TIME			10000				//关机10s后进睡眠


void Sleep_Manage(void);
void Sleep_Jump(void);
void Sleep_Init(void);
void SleepTick_Ctlr(void);
void Sleep_Wakeup(void);


#endif