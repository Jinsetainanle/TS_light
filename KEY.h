#ifndef __KEY__
#define __KEY__

#define PORTB_REG_ADDR_DIR			(unsigned int *)0x46
#define PORTB_REG_ADDR_PU			(unsigned int *)0x0D
#define PORTB_REG_ADDR_PD			(unsigned int *)0x0B
#define PORTB_REG_ADDR_DATA			(unsigned int *)0x06
#define PORTB_REG_DATA			    (*(PORTB_REG_ADDR_DATA))

#define PORTx_Pin_2			(0x04)

#define KEY_PIN					PORTx_Pin_2
#define KEY_IO					( PORTB_REG_DATA & KEY_PIN )

extern unsigned char KeyTick;
extern bit KeyLongPressFlag;
extern bit KeyShortPressFlag;
extern bit KeyShortPressTwiceFlag;

void key_Init(void);
void Key_Detect(void);

//void Read_Key(void);
void Read_Key(unsigned int sys_time);

#endif