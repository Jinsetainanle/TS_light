#ifndef __RGB4__
#define __RGB4__

/********************** RGB_PIN************************/
#define RGB_FIRST_PIN			PORTx_Pin_3								  
#define RGB_FIRST_ON		( PORTB_REG_DATA |= RGB_FIRST_PIN )          //set 1
#define RGB_FIRST_OFF		( PORTB_REG_DATA &= ~RGB_FIRST_PIN )         //set 0

#define RGB_SECOND_PIN          PORTx_Pin_4
#define RGB_SECOND_ON      ( PORTB_REG_DATA |= RGB_SECOND_PIN )        //set 1
#define RGB_SECOND_OFF      ( PORTB_REG_DATA &= ~RGB_SECOND_PIN )       //set 0

#define RGB_THIRD_PIN           PORTx_Pin_6
#define RGB_THIRD_ON       ( PORTB_REG_DATA |= RGB_THIRD_PIN )          //set 1
#define RGB_THIRD_OFF       ( PORTB_REG_DATA &= ~RGB_THIRD_PIN )      //set 0

#define RGB_FOURTH_PIN          PORTx_Pin_7
#define RGB_FOURTH_ON      ( PORTB_REG_DATA |= RGB_FOURTH_PIN )        //set 1
#define RGB_FOURTH_OFF       ( PORTB_REG_DATA &= ~RGB_FOURTH_PIN )     //set 0

/********************** RGB_PIN************************/



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

#define RGB4_EFFECT_CYCLY		950			//�����ĳ�950			

#define RGB4_EFFECT_OFF			0
#define RGB4_EFFECT_TWINKLING	1
#define RGB4_EFFECT_TWINK_FAST	2           //1 light twink
#define RGB4_EFFECT_LIGHT		3
#define RGB4_EFFECT_3LIGHT_ON	4
#define RGB4_EFFECT_2LIGHT_ON	5
#define RGB4_EFFECT_1LIGHT_ON	6



#define RGB4_STATUS_OFF			0
#define RGB4_STATUS_ON			1
#define RGB4_STATUS_TWINKLING	2
#define RGB4_STATUS_TWINK_FAST	3
#define RGB4_STATUS_3LIGHT_ON	4
#define RGB4_STATUS_2LIGHT_ON	5
#define RGB4_STATUS_1LIGHT_ON	6


void RGB4_Set(void);
void RGB4_Effect(void);
void RGB4_Init(void);
void RGB4_Tick_Ctrl(void);
void RGB4_Manage(void);




#endif