#ifndef __LED__
#define __LED__

#include "eve.h"

#define LED_COLOR_W				0	//°×É«
#define LED_COLOR_Y				1	//»ÆÉ«

#define LED_W_PWM_INDEX			0
#define LED_Y_PWM_INDEX			1

/********************** µÆÖé ************************/
#define LED_W_PWM_REG	PWM1P
#define LED_Y_PWM_REG	PWM0P
/********************** **** ************************/
void led_Init(void);
void LED_Manage(void);
void LED_PWM_Set(void);
void LED_Status(void);
void LED_Color(void);
void LED_Dim(void);
void LED_DimIndex_Ctrl(void);


#endif