#ifndef __DRIVER__
#define __DRIVER__

void Tick_Timer_Init(void);
void TickTimer_Close(void);
void TickTimer_Open(void);

void Key_Interrupt_Open(void);
void Key_Interrupt_Close(void);
void ChargeDetect_Interrupt_Open(void);
void ChargeDetect_Interrupt_Close(void);

void DelayUs2x(unsigned char t);
void DelayMs(unsigned int t);

#endif