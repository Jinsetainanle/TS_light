#ifndef __CHARGE__
#define __CHARGE__


/********************** ����� ************************/
#define CHARGE_DETECT_PIN		PORTx_Pin_6									//VBUS_C
#define CHARGE_DETECT_IO		( PORTB_REG_DATA & CHARGE_DETECT_PIN )

#define CHARGE_FULL_PIN			PORTx_Pin_7									//CHRG
#define CHARGE_FULL_IO			( PORTB_REG_DATA & CHARGE_FULL_PIN )
/********************** ����� ************************/

#define CHARGE_DETECT_CYCLE			20								//�����ʱ��

#define CHARGE_STATUS_UNCHARGE			0							//û��		
#define CHARGE_STATUS_CHARGING			1							//���
	
extern bit ChargeStatus;											//���״̬λ

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


void Charge_Init(void);
void Charge_Config(void);
void Charge_Manage(void);
void Charge_Detect(void);
void ChargeTick_Ctrl(void);

#endif