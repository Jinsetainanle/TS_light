#ifndef __RGB__
#define __RGB__

#include "driver.h"
#include "charge.h"
#include "battery.h"
#include "power.h"

/********************** RGB ************************/
#define RGB_PIN			PORTx_Pin_3
								  
#define RGB_OFF			( PORTB_REG_DATA |= RGB_PIN )
#define RGB_ON			( PORTB_REG_DATA &= ~RGB_PIN )
//#define RGB_TOGGLE		( PORTB_REG_DATA ^= RGB_PIN )			//不能用？？？
/********************** RGB ************************/

#define PORTB_REG_ADDR_DIR			(unsigned int *)0x46
#define PORTB_REG_ADDR_PU			(unsigned int *)0x0D
#define PORTB_REG_ADDR_PD			(unsigned int *)0x0B
#define PORTB_REG_ADDR_DATA			(unsigned int *)0x06
#define PORTB_REG_DATA			    (*(PORTB_REG_ADDR_DATA))

#define PORTx_Pin_0					(0x01)
#define PORTx_Pin_1					(0x02)
#define PORTx_Pin_2					(0x04)
#define PORTx_Pin_3					(0x08)	
#define PORTx_Pin_4					(0x10)
#define PORTx_Pin_5					(0x20)
#define PORTx_Pin_6					(0x40)
#define PORTx_Pin_7					(0x80)	

#define PORTA_REG_ADDR_DIR			(unsigned int *)0x45
#define PORTA_REG_ADDR_PU			(unsigned int *)0x43
#define PORTA_REG_ADDR_PD			(unsigned int *)0x42
#define PORTA_REG_ADDR_DATA			(unsigned int *)0x05
#define PORTA_REG_DATA			    (*(PORTB_REG_ADDR_DATA))

#define PORTx_Pin_0					(0x01)
#define PORTx_Pin_1					(0x02)
#define PORTx_Pin_2					(0x04)
#define PORTx_Pin_3					(0x08)	
#define PORTx_Pin_4					(0x10)
#define PORTx_Pin_5					(0x20)
#define PORTx_Pin_6					(0x40)
#define PORTx_Pin_7					(0x80)	




//#define RGB_EFFECT_CYCLY		1000			
#define RGB_EFFECT_CYCLY		950			//有误差，改成950			

#define RGB_EFFECT_OFF			0
#define RGB_EFFECT_TWINKLING	1
#define RGB_EFFECT_TWINK_FAST	2
#define RGB_EFFECT_LIGHT		3

#define RGB_STATUS_OFF			0
#define RGB_STATUS_ON			1


void RGB_Init(void);
void RGB_Set(void);
void RGB_Tick_Ctrl(void);
void RGB_Effect(void);
void RGB_Manage(void);
void RGB_Effect_Judg(void);

#endif