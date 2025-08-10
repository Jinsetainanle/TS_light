	global	Battery_Init_Data@BatteryLowCnt
	global	Battery_Init_Data@i
	global	DelayMs@t
	global	DelayUs2x@t
	global	Get_Lvdf@result
	global	Key_Detect@sys_time
	global	LED_Color@index
	global	LED_Status@pwm
	global	Read_Key@interval
	global	Read_Key@interval_1713
	global	Read_Key@sys_time
	global	SetLVD_Level@level
	global	Timer2_Isr@timer_1ms
	global	_ADCON0
	global	_ADCON1
	global	_ADCS0
	global	_ADCS1
	global	_ADCS2
	global	_ADEN
	global	_ADON
	global	_ADREF
	global	_ADRESH
	global	_ADRESL
	global	_ANSEL0
	global	_ANSEL1
	global	_ANSEL10
	global	_ANSEL11
	global	_ANSEL14
	global	_ANSEL15
	global	_ANSEL2
	global	_ANSEL3
	global	_ANSEL4
	global	_ANSEL5
	global	_ANSEL6
	global	_ANSEL7
	global	_ANSEL8
	global	_ANSEL9
	global	_ANSELH
	global	_ANSELL
	global	_BOR
	global	_BOREN
	global	_BatteryCurrCheckLevel
	global	_BatteryDieCntFinishFlag
	global	_BatteryDieCntSec
	global	_BatteryFullCnt1
	global	_BatteryFullCnt2
	global	_BatteryFullFlag
	global	_BatteryFullJudgTick
	global	_BatteryLvdCnt1
	global	_BatteryLvdCnt2
	global	_BatteryLvdStatus
	global	_BatteryLvdTick
	global	_BatteryStatus
	global	_BatteryStatusCnt1
	global	_BatteryStatusCnt2
	global	_BatteryStatusCnt3
	global	_BatteryStatusTick
	global	_BatteryTick_Ctrl
	signat	_BatteryTick_Ctrl,89
	global	_Battery_Full_Judg
	signat	_Battery_Full_Judg,89
	global	_Battery_Init
	signat	_Battery_Init,89
	FNCALL	_Battery_Init,_Battery_Init_Data
	global	_Battery_Init_Data
	signat	_Battery_Init_Data,89
	FNCALL	_Battery_Init_Data,_DelayMs
	FNCALL	_Battery_Init_Data,_Get_Lvdf
	FNCALL	_Battery_Init_Data,_Lvd_Init
	global	_Battery_LvdDetect
	signat	_Battery_LvdDetect,89
	FNCALL	_Battery_LvdDetect,_Get_Lvdf
	global	_Battery_Manage
	signat	_Battery_Manage,89
	FNCALL	_Battery_Manage,_Battery_Full_Judg
	FNCALL	_Battery_Manage,_Battery_LvdDetect
	FNCALL	_Battery_Manage,_Battery_StatusJudg
	global	_Battery_StatusJudg
	signat	_Battery_StatusJudg,89
	FNCALL	_Battery_StatusJudg,_SetLVD_Level
	global	_CHS0
	global	_CHS1
	global	_CHS2
	global	_CHS3
	global	_ChargeDetectTick
	global	_ChargeDetect_Interrupt_Close
	signat	_ChargeDetect_Interrupt_Close,89
	global	_ChargeDetect_Interrupt_Open
	signat	_ChargeDetect_Interrupt_Open,89
	global	_ChargeStatus
	global	_ChargeTick_Ctrl
	signat	_ChargeTick_Ctrl,89
	global	_Charge_Config
	signat	_Charge_Config,89
	FNCALL	_Charge_Config,_Charge_Init
	global	_Charge_Detect
	signat	_Charge_Detect,89
	global	_Charge_Init
	signat	_Charge_Init,89
	global	_Charge_Manage
	signat	_Charge_Manage,89
	FNCALL	_Charge_Manage,_Charge_Detect
	global	_Cnt1
	global	_Cnt2
	global	_DelayMs
	signat	_DelayMs,4217
	FNCALL	_DelayMs,_DelayUs2x
	global	_DelayUs2x
	signat	_DelayUs2x,4217
	global	_EveColor
	global	_EveDim
	global	_EvePower
	global	_Eve_Detect
	signat	_Eve_Detect,89
	global	_Eve_Manage
	signat	_Eve_Manage,89
	FNCALL	_Eve_Manage,_Eve_Detect
	FNCALL	_Eve_Manage,_Key_Detect
	global	_FSR
	global	_GIE
	global	_Get_Lvdf
	signat	_Get_Lvdf,88
	global	_INDF
	global	_INTEDG
	global	_IOCA
	global	_IOCB
	global	_IOCB2
	global	_IOCB6
	global	_KeyLongPressFlag
	global	_KeyPressTime
	global	_KeyShortPressFlag
	global	_KeyShortPressTwiceFlag
	global	_KeyTick
	global	_Key_Detect
	signat	_Key_Detect,89
	FNCALL	_Key_Detect,_Read_Key
	global	_Key_Interrupt_Close
	signat	_Key_Interrupt_Close,89
	global	_Key_Interrupt_Open
	signat	_Key_Interrupt_Open,89
	global	_LED_Color
	signat	_LED_Color,89
	global	_LED_ColorPwm
	global	_LED_Dim
	signat	_LED_Dim,89
	FNCALL	_LED_Dim,_LED_DimIndex_Ctrl
	global	_LED_DimIndex_Ctrl
	signat	_LED_DimIndex_Ctrl,89
	global	_LED_DimPwm
	global	_LED_Manage
	signat	_LED_Manage,89
	FNCALL	_LED_Manage,_LED_Color
	FNCALL	_LED_Manage,_LED_Dim
	FNCALL	_LED_Manage,_LED_PWM_Set
	FNCALL	_LED_Manage,_LED_Status
	global	_LED_PWM
	global	_LED_PWM_Set
	signat	_LED_PWM_Set,89
	global	_LED_Status
	signat	_LED_Status,89
	global	_LED_W_DimArray
	global	_LED_W_DimIndex
	global	_LED_Y_DimArray
	global	_LED_Y_DimIndex
	global	_LVDCR
	global	_LVDF
	global	_LastLongKeyFlag
	global	_LastShortPressTime
	global	_LedColor
	global	_Lvd_Init
	signat	_Lvd_Init,89
	global	_MTP_CLEN
	global	_OCCUPY0BE
	global	_OCCUPY0BF
	global	_OPTION
_OPTION	equ	65
	global	_PBIE
	global	_PBIF
	global	_PDA0
	global	_PDA1
	global	_PDA2
	global	_PDA3
	global	_PDA4
	global	_PDA5
	global	_PDA6
	global	_PDA7
	global	_PDCON
	global	_PDCON1
	global	_PHA0
	global	_PHA1
	global	_PHA2
	global	_PHA3
	global	_PHA4
	global	_PHA5
	global	_PHA6
	global	_PHA7
	global	_PHCON
	global	_PHCON1
	global	_PMADRH
	global	_PMADRL
	global	_PMCON
	global	_PMDATH
	global	_PMDATL
	global	_POR
	global	_PORTA
	global	_PORTB
	global	_PS0
	global	_PS1
	global	_PS2
	global	_PSA
	global	_PWM0E
	global	_PWM0P
	global	_PWM1E
	global	_PWM1P
	global	_PWM1_8
	global	_PWM1_9
	global	_PWMM
	global	_PWMS0
	global	_PWMS1
	global	_PWMSET
	global	_PowerOffPrepareToSleepTick
	global	_PowerStatus
	global	_Power_Init
	signat	_Power_Init,89
	global	_Power_Manage
	signat	_Power_Manage,89
	FNCALL	_Power_Manage,_Power_Turn
	global	_Power_Turn
	signat	_Power_Turn,89
	global	_RD_FLAG
	global	_RGB_Init
	signat	_RGB_Init,89
	global	_Read_Key
	signat	_Read_Key,4217
	global	_SCS
	global	_SetLVD_Level
	signat	_SetLVD_Level,4217
	global	_ShortIndex
	global	_ShortPressCount
	global	_SleepSig
	global	_SleepTick_Ctlr
	signat	_SleepTick_Ctlr,89
	global	_Sleep_Init
	signat	_Sleep_Init,89
	FNCALL	_Sleep_Init,_ChargeDetect_Interrupt_Open
	FNCALL	_Sleep_Init,_Key_Interrupt_Open
	FNCALL	_Sleep_Init,_TickTimer_Close
	global	_Sleep_Jump
	signat	_Sleep_Jump,89
	global	_Sleep_Manage
	signat	_Sleep_Manage,89
	FNCALL	_Sleep_Manage,_DelayMs
	FNCALL	_Sleep_Manage,_Battery_Init_Data
	FNCALL	_Sleep_Manage,_Sleep_Init
	FNCALL	_Sleep_Manage,_Sleep_Jump
	FNCALL	_Sleep_Manage,_Sleep_Wakeup
	global	_Sleep_Wakeup
	signat	_Sleep_Wakeup,89
	FNCALL	_Sleep_Wakeup,_TickTimer_Open
	FNCALL	_Sleep_Wakeup,_ChargeDetect_Interrupt_Close
	FNCALL	_Sleep_Wakeup,_Key_Interrupt_Close
	global	_T0CK
	global	_T0CS
	global	_T0OSCEN
	global	_T0SE
	global	_T1
	global	_T1CK0
	global	_T1CK1
	global	_T1CON
	global	_T1CR_AUXR
	global	_T1EN
	global	_T1IE
	global	_T1IF
	global	_T1LOAD
	global	_T1PR0
	global	_T1PR1
	global	_T1PR2
	global	_T2
	global	_T2CK0
	global	_T2CK1
	global	_T2CON
	global	_T2EN
	global	_T2IE
	global	_T2IF
	global	_T2LOAD
	global	_T2LOAD_8
	global	_T2LOAD_9
	global	_T2PR0
	global	_T2PR1
	global	_T2PR2
	global	_TIMER2_8
	global	_TIMER2_9
	global	_TMR2H
	global	_TRISA
	global	_TRISA0
	global	_TRISA1
	global	_TRISA2
	global	_TRISA3
	global	_TRISA4
	global	_TRISA5
	global	_TRISA6
	global	_TRISA7
	global	_TRISB
	global	_TRISB0
	global	_TRISB1
	global	_TRISB2
	global	_TRISB3
	global	_TRISB4
	global	_TRISB5
	global	_TRISB6
	global	_TRISB7
	global	_TickTimer_Close
	signat	_TickTimer_Close,89
	global	_TickTimer_Open
	signat	_TickTimer_Open,89
	global	_Tick_Timer_Init
	signat	_Tick_Timer_Init,89
	FNCALL	_Tick_Timer_Init,_TickTimer_Open
	global	_Timer2_Isr
	signat	_Timer2_Isr,89
	FNCALL	_Timer2_Isr,_BatteryTick_Ctrl
	FNCALL	_Timer2_Isr,_ChargeTick_Ctrl
	FNCALL	_Timer2_Isr,_SleepTick_Ctlr
	global	_VHS0
	global	_VHS1
	global	_VHS2
	global	_WDTEN
	global	___latbits
___latbits	equ	0
	global	__end_of_BatteryTick_Ctrl
	global	__end_of_Battery_Full_Judg
	global	__end_of_Battery_Init
	global	__end_of_Battery_Init_Data
	global	__end_of_Battery_LvdDetect
	global	__end_of_Battery_Manage
	global	__end_of_Battery_StatusJudg
	global	__end_of_ChargeDetect_Interrupt_Close
	global	__end_of_ChargeDetect_Interrupt_Open
	global	__end_of_ChargeTick_Ctrl
	global	__end_of_Charge_Config
	global	__end_of_Charge_Detect
	global	__end_of_Charge_Init
	global	__end_of_Charge_Manage
	global	__end_of_DelayMs
	global	__end_of_DelayUs2x
	global	__end_of_Eve_Detect
	global	__end_of_Eve_Manage
	global	__end_of_Get_Lvdf
	global	__end_of_Key_Detect
	global	__end_of_Key_Interrupt_Close
	global	__end_of_Key_Interrupt_Open
	global	__end_of_LED_Color
	global	__end_of_LED_Dim
	global	__end_of_LED_DimIndex_Ctrl
	global	__end_of_LED_Manage
	global	__end_of_LED_PWM_Set
	global	__end_of_LED_Status
	global	__end_of_Lvd_Init
	global	__end_of_Power_Init
	global	__end_of_Power_Manage
	global	__end_of_Power_Turn
	global	__end_of_RGB_Init
	global	__end_of_Read_Key
	global	__end_of_SetLVD_Level
	global	__end_of_SleepTick_Ctlr
	global	__end_of_Sleep_Init
	global	__end_of_Sleep_Jump
	global	__end_of_Sleep_Manage
	global	__end_of_Sleep_Wakeup
	global	__end_of_TickTimer_Close
	global	__end_of_TickTimer_Open
	global	__end_of_Tick_Timer_Init
	global	__end_of_Timer2_Isr
	global	__end_of__initialization
	global	__end_of_inital
	global	__end_of_key_Init
	global	__end_of_led_Init
	global	__end_of_main
	global	__end_of_ramInitial
	global	__end_of_sysinitial
	global	__initialization
	global	__pbitbssBANK0
	global	__pbssBANK0
	global	__pbssBANK1l
	global	__pcstackBANK0
	global	__pcstackCOMMON
	global	__pintentry
	global	__pmaintext
	global	__ptext0
	global	__ptext1
	global	__ptext10
	global	__ptext11
	global	__ptext12
	global	__ptext13
	global	__ptext14
	global	__ptext15
	global	__ptext16
	global	__ptext17
	global	__ptext18
	global	__ptext19
	global	__ptext2
	global	__ptext20
	global	__ptext21
	global	__ptext22
	global	__ptext23
	global	__ptext24
	global	__ptext25
	global	__ptext26
	global	__ptext27
	global	__ptext28
	global	__ptext29
	global	__ptext3
	global	__ptext30
	global	__ptext31
	global	__ptext32
	global	__ptext33
	global	__ptext34
	global	__ptext35
	global	__ptext36
	global	__ptext37
	global	__ptext38
	global	__ptext39
	global	__ptext4
	global	__ptext40
	global	__ptext41
	global	__ptext42
	global	__ptext43
	global	__ptext44
	global	__ptext45
	global	__ptext46
	global	__ptext47
	global	__ptext48
	global	__ptext49
	global	__ptext5
	global	__ptext6
	global	__ptext7
	global	__ptext8
	global	__ptext9
	global	__size_of_BatteryTick_Ctrl
__size_of_BatteryTick_Ctrl	equ	__end_of_BatteryTick_Ctrl-_BatteryTick_Ctrl
	global	__size_of_Battery_Full_Judg
__size_of_Battery_Full_Judg	equ	__end_of_Battery_Full_Judg-_Battery_Full_Judg
	global	__size_of_Battery_Init
__size_of_Battery_Init	equ	__end_of_Battery_Init-_Battery_Init
	global	__size_of_Battery_Init_Data
__size_of_Battery_Init_Data	equ	__end_of_Battery_Init_Data-_Battery_Init_Data
	global	__size_of_Battery_LvdDetect
__size_of_Battery_LvdDetect	equ	__end_of_Battery_LvdDetect-_Battery_LvdDetect
	global	__size_of_Battery_Manage
__size_of_Battery_Manage	equ	__end_of_Battery_Manage-_Battery_Manage
	global	__size_of_Battery_StatusJudg
__size_of_Battery_StatusJudg	equ	__end_of_Battery_StatusJudg-_Battery_StatusJudg
	global	__size_of_ChargeDetect_Interrupt_Close
__size_of_ChargeDetect_Interrupt_Close	equ	__end_of_ChargeDetect_Interrupt_Close-_ChargeDetect_Interrupt_Close
	global	__size_of_ChargeDetect_Interrupt_Open
__size_of_ChargeDetect_Interrupt_Open	equ	__end_of_ChargeDetect_Interrupt_Open-_ChargeDetect_Interrupt_Open
	global	__size_of_ChargeTick_Ctrl
__size_of_ChargeTick_Ctrl	equ	__end_of_ChargeTick_Ctrl-_ChargeTick_Ctrl
	global	__size_of_Charge_Config
__size_of_Charge_Config	equ	__end_of_Charge_Config-_Charge_Config
	global	__size_of_Charge_Detect
__size_of_Charge_Detect	equ	__end_of_Charge_Detect-_Charge_Detect
	global	__size_of_Charge_Init
__size_of_Charge_Init	equ	__end_of_Charge_Init-_Charge_Init
	global	__size_of_Charge_Manage
__size_of_Charge_Manage	equ	__end_of_Charge_Manage-_Charge_Manage
	global	__size_of_DelayMs
__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	global	__size_of_DelayUs2x
__size_of_DelayUs2x	equ	__end_of_DelayUs2x-_DelayUs2x
	global	__size_of_Eve_Detect
__size_of_Eve_Detect	equ	__end_of_Eve_Detect-_Eve_Detect
	global	__size_of_Eve_Manage
__size_of_Eve_Manage	equ	__end_of_Eve_Manage-_Eve_Manage
	global	__size_of_Get_Lvdf
__size_of_Get_Lvdf	equ	__end_of_Get_Lvdf-_Get_Lvdf
	global	__size_of_Key_Detect
__size_of_Key_Detect	equ	__end_of_Key_Detect-_Key_Detect
	global	__size_of_Key_Interrupt_Close
__size_of_Key_Interrupt_Close	equ	__end_of_Key_Interrupt_Close-_Key_Interrupt_Close
	global	__size_of_Key_Interrupt_Open
__size_of_Key_Interrupt_Open	equ	__end_of_Key_Interrupt_Open-_Key_Interrupt_Open
	global	__size_of_LED_Color
__size_of_LED_Color	equ	__end_of_LED_Color-_LED_Color
	global	__size_of_LED_Dim
__size_of_LED_Dim	equ	__end_of_LED_Dim-_LED_Dim
	global	__size_of_LED_DimIndex_Ctrl
__size_of_LED_DimIndex_Ctrl	equ	__end_of_LED_DimIndex_Ctrl-_LED_DimIndex_Ctrl
	global	__size_of_LED_Manage
__size_of_LED_Manage	equ	__end_of_LED_Manage-_LED_Manage
	global	__size_of_LED_PWM_Set
__size_of_LED_PWM_Set	equ	__end_of_LED_PWM_Set-_LED_PWM_Set
	global	__size_of_LED_Status
__size_of_LED_Status	equ	__end_of_LED_Status-_LED_Status
	global	__size_of_Lvd_Init
__size_of_Lvd_Init	equ	__end_of_Lvd_Init-_Lvd_Init
	global	__size_of_Power_Init
__size_of_Power_Init	equ	__end_of_Power_Init-_Power_Init
	global	__size_of_Power_Manage
__size_of_Power_Manage	equ	__end_of_Power_Manage-_Power_Manage
	global	__size_of_Power_Turn
__size_of_Power_Turn	equ	__end_of_Power_Turn-_Power_Turn
	global	__size_of_RGB_Init
__size_of_RGB_Init	equ	__end_of_RGB_Init-_RGB_Init
	global	__size_of_Read_Key
__size_of_Read_Key	equ	__end_of_Read_Key-_Read_Key
	global	__size_of_SetLVD_Level
__size_of_SetLVD_Level	equ	__end_of_SetLVD_Level-_SetLVD_Level
	global	__size_of_SleepTick_Ctlr
__size_of_SleepTick_Ctlr	equ	__end_of_SleepTick_Ctlr-_SleepTick_Ctlr
	global	__size_of_Sleep_Init
__size_of_Sleep_Init	equ	__end_of_Sleep_Init-_Sleep_Init
	global	__size_of_Sleep_Jump
__size_of_Sleep_Jump	equ	__end_of_Sleep_Jump-_Sleep_Jump
	global	__size_of_Sleep_Manage
__size_of_Sleep_Manage	equ	__end_of_Sleep_Manage-_Sleep_Manage
	global	__size_of_Sleep_Wakeup
__size_of_Sleep_Wakeup	equ	__end_of_Sleep_Wakeup-_Sleep_Wakeup
	global	__size_of_TickTimer_Close
__size_of_TickTimer_Close	equ	__end_of_TickTimer_Close-_TickTimer_Close
	global	__size_of_TickTimer_Open
__size_of_TickTimer_Open	equ	__end_of_TickTimer_Open-_TickTimer_Open
	global	__size_of_Tick_Timer_Init
__size_of_Tick_Timer_Init	equ	__end_of_Tick_Timer_Init-_Tick_Timer_Init
	global	__size_of_Timer2_Isr
__size_of_Timer2_Isr	equ	__end_of_Timer2_Isr-_Timer2_Isr
	global	__size_of_inital
__size_of_inital	equ	__end_of_inital-_inital
	global	__size_of_key_Init
__size_of_key_Init	equ	__end_of_key_Init-_key_Init
	global	__size_of_led_Init
__size_of_led_Init	equ	__end_of_led_Init-_led_Init
	global	__size_of_main
__size_of_main	equ	__end_of_main-_main
	global	__size_of_ramInitial
__size_of_ramInitial	equ	__end_of_ramInitial-_ramInitial
	global	__size_of_sysinitial
__size_of_sysinitial	equ	__end_of_sysinitial-_sysinitial
	global	_inital
	signat	_inital,89
	global	_key_Init
	signat	_key_Init,89
	global	_led_Init
	signat	_led_Init,89
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_Battery_Init
	FNCALL	_main,_Battery_Manage
	FNCALL	_main,_Charge_Config
	FNCALL	_main,_Charge_Manage
	FNCALL	_main,_DelayMs
	FNCALL	_main,_Eve_Manage
	FNCALL	_main,_LED_Manage
	FNCALL	_main,_Power_Init
	FNCALL	_main,_Power_Manage
	FNCALL	_main,_RGB_Init
	FNCALL	_main,_Sleep_Manage
	FNCALL	_main,_Tick_Timer_Init
	FNCALL	_main,_inital
	FNCALL	_main,_key_Init
	FNCALL	_main,_led_Init
	FNCALL	_main,_ramInitial
	FNCALL	_main,_sysinitial
	global	_ramInitial
	signat	_ramInitial,89
	global	_sysinitial
	signat	_sysinitial,89
	global	btemp
	global	end_of_initialization
	global	interrupt_function
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	intlevel1,_Timer2_Isr
	global	saved_w
	global	start
	global	start_initialization
	global	wtemp0
	processor	18m121b1
	opt	pw 120
	opt	pm
	psect	text0,local,class=CODE,merge=1,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bssBANK0,global,class=BANK0,space=1
	psect	bitbssBANK0,global,bit,class=BANK0,space=1
	psect	bssBANK1l,global,class=BANK1,space=1
	psect	cstackCOMMON,global,class=COMMON,space=1
	psect	cstackBANK0,global,class=BANK0,space=1
	psect	maintext,global,class=CODE,split=1,delta=2
	psect	text1,local,class=CODE,merge=1,delta=2
	psect	text2,local,class=CODE,merge=1,delta=2
	psect	text3,local,class=CODE,merge=1,delta=2
	psect	text4,local,class=CODE,merge=1,delta=2
	psect	text5,local,class=CODE,merge=1,delta=2
	psect	text6,local,class=CODE,merge=1,delta=2
	psect	text7,local,class=CODE,merge=1,delta=2
	psect	text8,local,class=CODE,merge=1,delta=2
	psect	text9,local,class=CODE,merge=1,delta=2
	psect	text10,local,class=CODE,merge=1,delta=2
	psect	text11,local,class=CODE,merge=1,delta=2
	psect	text12,local,class=CODE,merge=1,delta=2
	psect	text13,local,class=CODE,merge=1,delta=2
	psect	text14,local,class=CODE,merge=1,delta=2
	psect	text15,local,class=CODE,merge=1,delta=2
	psect	text16,local,class=CODE,merge=1,delta=2
	psect	text17,local,class=CODE,merge=1,delta=2
	psect	text18,local,class=CODE,merge=1,delta=2
	psect	text19,local,class=CODE,merge=1,delta=2
	psect	text20,local,class=CODE,merge=1,delta=2
	psect	text21,local,class=CODE,merge=1,delta=2
	psect	text22,local,class=CODE,merge=1,delta=2
	psect	text23,local,class=CODE,merge=1,delta=2
	psect	text24,local,class=CODE,merge=1,delta=2
	psect	text25,local,class=CODE,merge=1,delta=2
	psect	text26,local,class=CODE,merge=1,delta=2
	psect	text27,local,class=CODE,merge=1,delta=2
	psect	text28,local,class=CODE,merge=1,delta=2
	psect	text29,local,class=CODE,merge=1,delta=2
	psect	text30,local,class=CODE,merge=1,delta=2
	psect	text31,local,class=CODE,merge=1,delta=2
	psect	text32,local,class=CODE,merge=1,delta=2
	psect	text33,local,class=CODE,merge=1,delta=2
	psect	text34,local,class=CODE,merge=1,delta=2
	psect	text35,local,class=CODE,merge=1,delta=2
	psect	text36,local,class=CODE,merge=1,delta=2
	psect	text37,local,class=CODE,merge=1,delta=2
	psect	text38,local,class=CODE,merge=1,delta=2
	psect	text39,local,class=CODE,merge=1,delta=2
	psect	text40,local,class=CODE,merge=1,delta=2
	psect	text41,local,class=CODE,merge=1,delta=2
	psect	text42,local,class=CODE,merge=1,delta=2
	psect	text43,local,class=CODE,merge=1,delta=2
	psect	text44,local,class=CODE,merge=1,delta=2
	psect	text45,local,class=CODE,merge=1,delta=2
	psect	text46,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	text47,local,class=CODE,merge=1,delta=2
	psect	text48,local,class=CODE,merge=1,delta=2
	psect	text49,local,class=CODE,merge=1,delta=2
	psect	pa_nodes0,global,class=CODE,delta=2
	dabs	1,0x5B,1,_ADCON1
	dabs	1,0x5A,1,_ADCON0
	dabs	1,0x59,1,_ADRESH
	dabs	1,0x58,1,_ADRESL
	dabs	1,0x57,1,_ANSELH
	dabs	1,0x56,1,_ANSELL
	dabs	1,0x55,1,_PWMSET
	dabs	1,0x54,1,_PWM1P
	dabs	1,0x53,1,_T2LOAD
	dabs	1,0x52,1,_T2
	dabs	1,0x51,1,_TMR2H
	dabs	1,0x50,1,_T2CON
	dabs	1,0x4F,1,_PWM0P
	dabs	1,0x4E,1,_T1LOAD
	dabs	1,0x4D,1,_T1
	dabs	1,0x4C,1,_T1CON
	dabs	1,0x4B,1,_T1CR_AUXR
	dabs	1,0x4A,1,_PMDATH
	dabs	1,0x49,1,_PMDATL
	dabs	1,0x48,1,_PMADRH
	dabs	1,0x47,1,_PMADRL
	dabs	1,0x46,1,_TRISB
	dabs	1,0x45,1,_TRISA
	dabs	1,0x43,1,_PHCON1
	dabs	1,0x42,1,_PDCON1
	dabs	1,0x41,1,_OPTION
	dabs	1,0x40,1,_PMCON
	dabs	1,0x2DE,0,_ADCS2
	dabs	1,0x5B,1
	dabs	1,0x2DD,0,_ADCS1
	dabs	1,0x5B,1
	dabs	1,0x2DC,0,_ADCS0
	dabs	1,0x5B,1
	dabs	1,0x2DB,0,_VHS2
	dabs	1,0x5B,1
	dabs	1,0x2DA,0,_VHS1
	dabs	1,0x5B,1
	dabs	1,0x2D9,0,_VHS0
	dabs	1,0x5B,1
	dabs	1,0x2D8,0,_ADREF
	dabs	1,0x5B,1
	dabs	1,0x2D5,0,_CHS3
	dabs	1,0x5A,1
	dabs	1,0x2D4,0,_CHS2
	dabs	1,0x5A,1
	dabs	1,0x2D3,0,_CHS1
	dabs	1,0x5A,1
	dabs	1,0x2D2,0,_CHS0
	dabs	1,0x5A,1
	dabs	1,0x2D1,0,_ADON
	dabs	1,0x5A,1
	dabs	1,0x2D0,0,_ADEN
	dabs	1,0x5A,1
	dabs	1,0x2BF,0,_ANSEL15
	dabs	1,0x57,1
	dabs	1,0x2BE,0,_ANSEL14
	dabs	1,0x57,1
	dabs	1,0x2BB,0,_ANSEL11
	dabs	1,0x57,1
	dabs	1,0x2BA,0,_ANSEL10
	dabs	1,0x57,1
	dabs	1,0x2B9,0,_ANSEL9
	dabs	1,0x57,1
	dabs	1,0x2B8,0,_ANSEL8
	dabs	1,0x57,1
	dabs	1,0x2B7,0,_ANSEL7
	dabs	1,0x56,1
	dabs	1,0x2B6,0,_ANSEL6
	dabs	1,0x56,1
	dabs	1,0x2B5,0,_ANSEL5
	dabs	1,0x56,1
	dabs	1,0x2B4,0,_ANSEL4
	dabs	1,0x56,1
	dabs	1,0x2B3,0,_ANSEL3
	dabs	1,0x56,1
	dabs	1,0x2B2,0,_ANSEL2
	dabs	1,0x56,1
	dabs	1,0x2B1,0,_ANSEL1
	dabs	1,0x56,1
	dabs	1,0x2B0,0,_ANSEL0
	dabs	1,0x56,1
	dabs	1,0x2A8,0,_PWMM
	dabs	1,0x55,1
	dabs	1,0x28F,0,_PWMS1
	dabs	1,0x51,1
	dabs	1,0x28E,0,_PWMS0
	dabs	1,0x51,1
	dabs	1,0x28D,0,_TIMER2_9
	dabs	1,0x51,1
	dabs	1,0x28C,0,_TIMER2_8
	dabs	1,0x51,1
	dabs	1,0x28B,0,_T2LOAD_9
	dabs	1,0x51,1
	dabs	1,0x28A,0,_T2LOAD_8
	dabs	1,0x51,1
	dabs	1,0x289,0,_PWM1_9
	dabs	1,0x51,1
	dabs	1,0x288,0,_PWM1_8
	dabs	1,0x51,1
	dabs	1,0x287,0,_T2EN
	dabs	1,0x50,1
	dabs	1,0x286,0,_PWM1E
	dabs	1,0x50,1
	dabs	1,0x285,0,_SCS
	dabs	1,0x50,1
	dabs	1,0x284,0,_T2CK1
	dabs	1,0x50,1
	dabs	1,0x283,0,_T2CK0
	dabs	1,0x50,1
	dabs	1,0x282,0,_T2PR2
	dabs	1,0x50,1
	dabs	1,0x281,0,_T2PR1
	dabs	1,0x50,1
	dabs	1,0x280,0,_T2PR0
	dabs	1,0x50,1
	dabs	1,0x267,0,_T1EN
	dabs	1,0x4C,1
	dabs	1,0x266,0,_PWM0E
	dabs	1,0x4C,1
	dabs	1,0x265,0,_T0OSCEN
	dabs	1,0x4C,1
	dabs	1,0x264,0,_T1CK1
	dabs	1,0x4C,1
	dabs	1,0x263,0,_T1CK0
	dabs	1,0x4C,1
	dabs	1,0x262,0,_T1PR2
	dabs	1,0x4C,1
	dabs	1,0x261,0,_T1PR1
	dabs	1,0x4C,1
	dabs	1,0x260,0,_T1PR0
	dabs	1,0x4C,1
	dabs	1,0x25F,0,_T0CK
	dabs	1,0x4B,1
	dabs	1,0x25E,0,_T2IE
	dabs	1,0x4B,1
	dabs	1,0x25D,0,_T2IF
	dabs	1,0x4B,1
	dabs	1,0x25C,0,_POR
	dabs	1,0x4B,1
	dabs	1,0x25B,0,_BOR
	dabs	1,0x4B,1
	dabs	1,0x25A,0,_BOREN
	dabs	1,0x4B,1
	dabs	1,0x259,0,_T1IE
	dabs	1,0x4B,1
	dabs	1,0x258,0,_T1IF
	dabs	1,0x4B,1
	dabs	1,0x237,0,_TRISB7
	dabs	1,0x46,1
	dabs	1,0x236,0,_TRISB6
	dabs	1,0x46,1
	dabs	1,0x235,0,_TRISB5
	dabs	1,0x46,1
	dabs	1,0x234,0,_TRISB4
	dabs	1,0x46,1
	dabs	1,0x233,0,_TRISB3
	dabs	1,0x46,1
	dabs	1,0x232,0,_TRISB2
	dabs	1,0x46,1
	dabs	1,0x231,0,_TRISB1
	dabs	1,0x46,1
	dabs	1,0x230,0,_TRISB0
	dabs	1,0x46,1
	dabs	1,0x22F,0,_TRISA7
	dabs	1,0x45,1
	dabs	1,0x22E,0,_TRISA6
	dabs	1,0x45,1
	dabs	1,0x22D,0,_TRISA5
	dabs	1,0x45,1
	dabs	1,0x22C,0,_TRISA4
	dabs	1,0x45,1
	dabs	1,0x22B,0,_TRISA3
	dabs	1,0x45,1
	dabs	1,0x22A,0,_TRISA2
	dabs	1,0x45,1
	dabs	1,0x229,0,_TRISA1
	dabs	1,0x45,1
	dabs	1,0x228,0,_TRISA0
	dabs	1,0x45,1
	dabs	1,0x21F,0,_PHA7
	dabs	1,0x43,1
	dabs	1,0x21E,0,_PHA6
	dabs	1,0x43,1
	dabs	1,0x21D,0,_PHA5
	dabs	1,0x43,1
	dabs	1,0x21C,0,_PHA4
	dabs	1,0x43,1
	dabs	1,0x21B,0,_PHA3
	dabs	1,0x43,1
	dabs	1,0x21A,0,_PHA2
	dabs	1,0x43,1
	dabs	1,0x219,0,_PHA1
	dabs	1,0x43,1
	dabs	1,0x218,0,_PHA0
	dabs	1,0x43,1
	dabs	1,0x217,0,_PDA7
	dabs	1,0x42,1
	dabs	1,0x216,0,_PDA6
	dabs	1,0x42,1
	dabs	1,0x215,0,_PDA5
	dabs	1,0x42,1
	dabs	1,0x214,0,_PDA4
	dabs	1,0x42,1
	dabs	1,0x213,0,_PDA3
	dabs	1,0x42,1
	dabs	1,0x212,0,_PDA2
	dabs	1,0x42,1
	dabs	1,0x211,0,_PDA1
	dabs	1,0x42,1
	dabs	1,0x210,0,_PDA0
	dabs	1,0x42,1
	dabs	1,0x20F,0,_WDTEN
	dabs	1,0x41,1
	dabs	1,0x20E,0,_INTEDG
	dabs	1,0x41,1
	dabs	1,0x20D,0,_T0CS
	dabs	1,0x41,1
	dabs	1,0x20C,0,_T0SE
	dabs	1,0x41,1
	dabs	1,0x20B,0,_PSA
	dabs	1,0x41,1
	dabs	1,0x20A,0,_PS2
	dabs	1,0x41,1
	dabs	1,0x209,0,_PS1
	dabs	1,0x41,1
	dabs	1,0x208,0,_PS0
	dabs	1,0x41,1
	dabs	1,0x201,0,_MTP_CLEN
	dabs	1,0x40,1
	dabs	1,0x200,0,_RD_FLAG
	dabs	1,0x40,1
	dabs	1,0xBE,1,_OCCUPY0BE
	dabs	1,0xBF,1,_OCCUPY0BF
	dabs	1,0x3E,2
SFR:	
; Version 1.45
; Generated 16/11/2017 GMT
; 
; Copyright © 2017, Microchip Technology Inc. and its subsidiaries ("Microchip")
; All rights reserved.
; 
; This software is developed by Microchip Technology Inc. and its subsidiaries ("Microchip").
; 
; Redistribution and use in source and binary forms, with or without modification, are
; permitted provided that the following conditions are met:
; 
;     1. Redistributions of source code must retain the above copyright notice, this list of
;        conditions and the following disclaimer.
; 
;     2. Redistributions in binary form must reproduce the above copyright notice, this list
;        of conditions and the following disclaimer in the documentation and/or other
;        materials provided with the distribution.
; 
;     3. Microchip's name may not be used to endorse or promote products derived from this
;        software without specific prior written permission.
; 
; THIS SOFTWARE IS PROVIDED BY MICROCHIP "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
; INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSequENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWSOEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
; 
; 
; Code-generator required, PIC16F887 Definitions
; 
; SFR Addresses

Addresses:	
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;
	;

	psect	text0
__ptext0:	
	opt stack 0	;_RD_FLAG
_PHCON	set	13
_PDCON	set	11
_IOCB	set	9
_LVDCR	set	8
_IOCA	set	7
_PORTB	set	6
_PORTA	set	5
_FSR	set	4
_INDF	set	0
_GIE	set	119
_PBIF	set	116
_PBIE	set	113
_IOCB6	set	78
_IOCB2	set	74
_LVDF	set	71

	psect	cinit
	file	"adc.as"
start_initialization:	
; #config settings

	opt stack 0
__initialization:	
	opt stack 0
end_of_initialization:	
;End of C runtime variable initialization code

	opt stack 0
__end_of__initialization:	
	opt stack 0
	clrf	3
	ljmp	_main	;jump to C main() function

	psect	bssBANK0
__pbssBANK0:	
	opt stack 0
_LED_DimPwm:	
	opt stack 0
	ds	2
_LED_ColorPwm:	
	opt stack 0
	ds	2
Key_Detect@sys_time:	
	opt stack 0
	ds	2
_LastShortPressTime:	
	opt stack 0
	ds	2
_KeyPressTime:	
	opt stack 0
	ds	2
_LED_Y_DimIndex:	
	opt stack 0
	ds	1
_LED_W_DimIndex:	
	opt stack 0
	ds	1
_LedColor:	
	opt stack 0
	ds	1
_ShortPressCount:	
	opt stack 0
	ds	1
Timer2_Isr@timer_1ms:	
	opt stack 0
	ds	1
_KeyTick:	
	opt stack 0
	ds	1
_ShortIndex:	
	opt stack 0
	ds	1
_ChargeDetectTick:	
	opt stack 0
	ds	1
_Cnt2:	
	opt stack 0
	ds	1
_Cnt1:	
	opt stack 0
	ds	1
_BatteryFullCnt2:	
	opt stack 0
	ds	1
_BatteryFullCnt1:	
	opt stack 0
	ds	1
_BatteryFullJudgTick:	
	opt stack 0
	ds	1
_BatteryDieCntSec:	
	opt stack 0
	ds	1
_BatteryCurrCheckLevel:	
	opt stack 0
	ds	1
_BatteryLvdCnt2:	
	opt stack 0
	ds	1
_BatteryLvdCnt1:	
	opt stack 0
	ds	1
_BatteryLvdTick:	
	opt stack 0
	ds	1
_BatteryStatusCnt3:	
	opt stack 0
	ds	1
_BatteryStatusCnt2:	
	opt stack 0
	ds	1
_BatteryStatusCnt1:	
	opt stack 0
	ds	1
_BatteryStatusTick:	
	opt stack 0
	ds	1
_BatteryStatus:	
	opt stack 0
	ds	1

	psect	bitbssBANK0
__pbitbssBANK0:	
	opt stack 0
_SleepSig:	
	opt stack 0
	ds	1
_LastLongKeyFlag:	
	opt stack 0
	ds	1
_EveColor:	
	opt stack 0
	ds	1
_EveDim:	
	opt stack 0
	ds	1
_EvePower:	
	opt stack 0
	ds	1
_KeyShortPressTwiceFlag:	
	opt stack 0
	ds	1
_KeyLongPressFlag:	
	opt stack 0
	ds	1
_KeyShortPressFlag:	
	opt stack 0
	ds	1
_BatteryFullFlag:	
	opt stack 0
	ds	1
_BatteryDieCntFinishFlag:	
	opt stack 0
	ds	1
_BatteryLvdStatus:	
	opt stack 0
	ds	1
_ChargeStatus:	
	opt stack 0
	ds	1
_PowerStatus:	
	opt stack 0
	ds	1

	psect	bssBANK1l
__pbssBANK1l:	
	opt stack 0
_LED_Y_DimArray:	
	opt stack 0
	ds	7
_LED_W_DimArray:	
	opt stack 0
	ds	7
_PowerOffPrepareToSleepTick:	
	opt stack 0
	ds	2
_LED_PWM:	
	opt stack 0
	ds	2

	psect	cstackCOMMON
__pcstackCOMMON:	
	opt stack 0
??_Battery_Full_Judg:	
??_Battery_LvdDetect:	
; 1 bytes @ 0x0

??_Battery_StatusJudg:	
; 1 bytes @ 0x0

??_Battery_Init_Data:	
; 1 bytes @ 0x0

??_DelayMs:	
; 1 bytes @ 0x0

??_Charge_Detect:	
; 1 bytes @ 0x0

??_TickTimer_Open:	
; 1 bytes @ 0x0

??_Key_Detect:	
; 1 bytes @ 0x0

??_Eve_Detect:	
; 1 bytes @ 0x0

??_SleepTick_Ctlr:	
; 1 bytes @ 0x0

??_Read_Key:	
; 1 bytes @ 0x0

??_LED_DimIndex_Ctrl:	
; 1 bytes @ 0x0

??_Power_Init:	
; 1 bytes @ 0x0

??_RGB_Init:	
; 1 bytes @ 0x0

??_Power_Manage:	
; 1 bytes @ 0x0

??_Sleep_Manage:	
; 1 bytes @ 0x0

??_Power_Turn:	
; 1 bytes @ 0x0

??_Sleep_Init:	
; 1 bytes @ 0x0

??_Sleep_Jump:	
; 1 bytes @ 0x0

??_Sleep_Wakeup:	
; 1 bytes @ 0x0

??_Lvd_Init:	
; 1 bytes @ 0x0

??_Get_Lvdf:	
; 1 bytes @ 0x0

??_SetLVD_Level:	
; 1 bytes @ 0x0

??_Battery_Manage:	
; 1 bytes @ 0x0

??_BatteryTick_Ctrl:	
; 1 bytes @ 0x0

??_Battery_Init:	
; 1 bytes @ 0x0

??_Charge_Init:	
; 1 bytes @ 0x0

??_ChargeTick_Ctrl:	
; 1 bytes @ 0x0

??_Charge_Config:	
; 1 bytes @ 0x0

??_Charge_Manage:	
; 1 bytes @ 0x0

??_Tick_Timer_Init:	
; 1 bytes @ 0x0

??_TickTimer_Close:	
; 1 bytes @ 0x0

??_Key_Interrupt_Open:	
; 1 bytes @ 0x0

??_Key_Interrupt_Close:	
; 1 bytes @ 0x0

??_ChargeDetect_Interrupt_Open:	
; 1 bytes @ 0x0

??_ChargeDetect_Interrupt_Close:	
; 1 bytes @ 0x0

??_DelayUs2x:	
; 1 bytes @ 0x0

??_Eve_Manage:	
; 1 bytes @ 0x0

??_inital:	
; 1 bytes @ 0x0

??_sysinitial:	
; 1 bytes @ 0x0

??_ramInitial:	
; 1 bytes @ 0x0

??_key_Init:	
; 1 bytes @ 0x0

??_led_Init:	
; 1 bytes @ 0x0

??_LED_Dim:	
; 1 bytes @ 0x0

??_LED_Color:	
; 1 bytes @ 0x0

??_LED_Status:	
; 1 bytes @ 0x0

??_LED_PWM_Set:	
; 1 bytes @ 0x0

??_LED_Manage:	
; 1 bytes @ 0x0

??_main:	
; 1 bytes @ 0x0


	psect	cstackBANK0
__pcstackBANK0:	
; 1 bytes @ 0x0

	opt stack 0
?_Get_Lvdf:	
?_Battery_Full_Judg:	
; 1 bit 

?_Battery_LvdDetect:	
; 1 bytes @ 0x0

?_Battery_StatusJudg:	
; 1 bytes @ 0x0

?_Battery_Init_Data:	
; 1 bytes @ 0x0

?_Charge_Detect:	
; 1 bytes @ 0x0

?_TickTimer_Open:	
; 1 bytes @ 0x0

?_Key_Detect:	
; 1 bytes @ 0x0

?_Eve_Detect:	
; 1 bytes @ 0x0

?_SleepTick_Ctlr:	
; 1 bytes @ 0x0

?_LED_DimIndex_Ctrl:	
; 1 bytes @ 0x0

?_Power_Init:	
; 1 bytes @ 0x0

?_RGB_Init:	
; 1 bytes @ 0x0

?_Power_Manage:	
; 1 bytes @ 0x0

?_Sleep_Manage:	
; 1 bytes @ 0x0

?_Power_Turn:	
; 1 bytes @ 0x0

?_Sleep_Init:	
; 1 bytes @ 0x0

?_Sleep_Jump:	
; 1 bytes @ 0x0

?_Sleep_Wakeup:	
; 1 bytes @ 0x0

?_Lvd_Init:	
; 1 bytes @ 0x0

?_SetLVD_Level:	
; 1 bytes @ 0x0

?_Battery_Manage:	
; 1 bytes @ 0x0

?_BatteryTick_Ctrl:	
; 1 bytes @ 0x0

?_Battery_Init:	
; 1 bytes @ 0x0

?_Charge_Init:	
; 1 bytes @ 0x0

?_ChargeTick_Ctrl:	
; 1 bytes @ 0x0

?_Charge_Config:	
; 1 bytes @ 0x0

?_Charge_Manage:	
; 1 bytes @ 0x0

?_Tick_Timer_Init:	
; 1 bytes @ 0x0

?_TickTimer_Close:	
; 1 bytes @ 0x0

?_Key_Interrupt_Open:	
; 1 bytes @ 0x0

?_Key_Interrupt_Close:	
; 1 bytes @ 0x0

?_ChargeDetect_Interrupt_Open:	
; 1 bytes @ 0x0

?_ChargeDetect_Interrupt_Close:	
; 1 bytes @ 0x0

?_DelayUs2x:	
; 1 bytes @ 0x0

?_Eve_Manage:	
; 1 bytes @ 0x0

?_inital:	
; 1 bytes @ 0x0

?_sysinitial:	
; 1 bytes @ 0x0

?_ramInitial:	
; 1 bytes @ 0x0

?_Timer2_Isr:	
; 1 bytes @ 0x0

??_Timer2_Isr:	
; 1 bytes @ 0x0

?_key_Init:	
; 1 bytes @ 0x0

?_led_Init:	
; 1 bytes @ 0x0

?_LED_Dim:	
; 1 bytes @ 0x0

?_LED_Color:	
; 1 bytes @ 0x0

?_LED_Status:	
; 1 bytes @ 0x0

?_LED_PWM_Set:	
; 1 bytes @ 0x0

?_LED_Manage:	
; 1 bytes @ 0x0

?_main:	
; 1 bytes @ 0x0


; 1 bytes @ 0x0
	ds	2
?_Read_Key:	
Get_Lvdf@result:	
; 1 bytes @ 0x2

	opt stack 0
SetLVD_Level@level:	
; 1 bytes @ 0x2

	opt stack 0
DelayUs2x@t:	
; 1 bytes @ 0x2

	opt stack 0
LED_Color@index:	
; 1 bytes @ 0x2

	opt stack 0
Read_Key@sys_time:	
; 1 bytes @ 0x2

	opt stack 0
LED_Status@pwm:	
; 2 bytes @ 0x2

	opt stack 0

; 2 bytes @ 0x2
	ds	1
?_DelayMs:	
DelayMs@t:	
; 1 bytes @ 0x3

	opt stack 0

; 2 bytes @ 0x3
	ds	1
Read_Key@interval:	
	opt stack 0

; 2 bytes @ 0x4
	ds	1
Battery_Init_Data@BatteryLowCnt:	
	opt stack 0

; 1 bytes @ 0x5
	ds	1
Battery_Init_Data@i:	
	opt stack 0
Read_Key@interval_1713:	
; 1 bytes @ 0x6

	opt stack 0

; 2 bytes @ 0x6
	ds	2

	psect	maintext
	file	"main.c"
__pmaintext:	
;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 59 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Battery_Init
;;		_Battery_Manage
;;		_Charge_Config
;;		_Charge_Manage
;;		_DelayMs
;;		_Eve_Manage
;;		_LED_Manage
;;		_Power_Init
;;		_Power_Manage
;;		_RGB_Init
;;		_Sleep_Manage
;;		_Tick_Timer_Init
;;		_inital
;;		_key_Init
;;		_led_Init
;;		_ramInitial
;;		_sysinitial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _main

_main:	
	opt stack 2

;main.c: 61: ramInitial();

;incstack = 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_ramInitial

;main.c: 62: inital();
	fcall	_inital

;main.c: 63: sysinitial();
	fcall	_sysinitial

;main.c: 64: DelayMs(100);
	movlw	100
	movwf	DelayMs@t
	clrf	DelayMs@t+1
	fcall	_DelayMs

;main.c: 72: Power_Init();
	fcall	_Power_Init

;main.c: 73: key_Init();
	fcall	_key_Init

;main.c: 74: led_Init();
	fcall	_led_Init

;main.c: 76: Tick_Timer_Init();
	fcall	_Tick_Timer_Init

;main.c: 77: Charge_Config();
	fcall	_Charge_Config

;main.c: 78: Battery_Init();
	fcall	_Battery_Init

;main.c: 79: RGB_Init();
	fcall	_RGB_Init

;main.c: 81: GIE = 1;
	bsf	14,7	;volatile
l7396:	

;main.c: 84: {
;main.c: 86: Eve_Manage();
	fcall	_Eve_Manage

;main.c: 87: Power_Manage();
	fcall	_Power_Manage

;main.c: 88: LED_Manage();
	fcall	_LED_Manage

;main.c: 89: Charge_Manage();
	fcall	_Charge_Manage

;main.c: 90: Battery_Manage();
	fcall	_Battery_Manage

;main.c: 91: Sleep_Manage();
	fcall	_Sleep_Manage
	goto	l7396
__end_of_main:	
	opt stack 0

	psect	text1
	file	"inital.c"
__ptext1:	
;; *************** function _sysinitial *****************
;; Defined at:
;;		line 46 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _sysinitial

_sysinitial:	
	opt stack 5

;inital.c: 49: T0OSCEN=1;

;incstack = 0
; Regs used in _sysinitial: [wreg]
	bsf	76,5	;volatile

;inital.c: 50: OPTION=0xBF;
	movlw	191
	movwf	65	;volatile
	return
__end_of_sysinitial:	
	opt stack 0

	psect	text2
__ptext2:	
;; *************** function _ramInitial *****************
;; Defined at:
;;		line 54 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ramInitial

_ramInitial:	
	opt stack 5

;inital.c: 56: FSR=0X3f;

;incstack = 0
; Regs used in _ramInitial: [wreg+status,2+status,0]
	movlw	63
	movwf	4	;volatile
l7248:	

;inital.c: 58: INDF=0;
	clrf	0	;volatile

;inital.c: 59: FSR--;
	decf	4,f	;volatile

;inital.c: 60: }while(FSR != 0x0f);
	movlw	15
	xorwf	4,w	;volatile
	btfss	3,2
	goto	l7248

;inital.c: 62: FSR=0Xdf;
	movlw	223
	movwf	4	;volatile
l7256:	

;inital.c: 64: INDF=0;
	clrf	0	;volatile

;inital.c: 65: FSR--;
	decf	4,f	;volatile

;inital.c: 66: }while(FSR != 0x8f);
	movlw	143
	xorwf	4,w	;volatile
	btfsc	3,2
	return
	goto	l7256
__end_of_ramInitial:	
	opt stack 0

	psect	text3
	file	"led.c"
__ptext3:	
;; *************** function _led_Init *****************
;; Defined at:
;;		line 16 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _led_Init

_led_Init:	
	opt stack 5

;led.c: 18: WDTEN=0;

;incstack = 0
; Regs used in _led_Init: [wreg+status,2]
	bcf	65,7	;volatile

;led.c: 19: OPTION=0X00;
	clrf	65	;volatile

;led.c: 21: TMR2H=0x00;
	clrf	81	;volatile

;led.c: 22: PWM0E=1;
	bsf	76,6	;volatile

;led.c: 23: PWM1E=1;
	bsf	80,6	;volatile

;led.c: 26: T1=0x34;
	movlw	52
	movwf	77	;volatile

;led.c: 27: T1LOAD=0xf0;
	movlw	240
	movwf	78	;volatile

;led.c: 28: PWM0P=0x0;
	clrf	79	;volatile

;led.c: 29: T1CON=0x40;
	movlw	64
	movwf	76	;volatile

;led.c: 31: T1EN=1;
	bsf	76,7	;volatile

;led.c: 33: T2=0x34;
	movlw	52
	movwf	82	;volatile

;led.c: 34: T2LOAD=0xf0;
	movlw	240
	movwf	83	;volatile

;led.c: 35: PWM1P=0x0;
	clrf	84	;volatile

;led.c: 36: T2CON=0x40;
	movlw	64
	movwf	80	;volatile

;led.c: 38: T2EN=1;
	bsf	80,7	;volatile

;led.c: 40: LED_W_DimIndex = 6;
	movlw	6
	movwf	_LED_W_DimIndex

;led.c: 41: LED_Y_DimIndex = 6;
	movwf	_LED_Y_DimIndex

;led.c: 43: LED_W_DimArray[0] = 10;
	movlw	10
	bsf	3,5	;RP0=1, select bank1
	movwf	_LED_W_DimArray^(0+128)

;led.c: 44: LED_W_DimArray[1] = 20;
	movlw	20
	movwf	(_LED_W_DimArray^(0+128)+1)

;led.c: 45: LED_W_DimArray[2] = 30;
	movlw	30
	movwf	(_LED_W_DimArray^(0+128)+2)

;led.c: 46: LED_W_DimArray[3] = 40;
	movlw	40
	movwf	(_LED_W_DimArray^(0+128)+3)

;led.c: 47: LED_W_DimArray[4] = 50;
	movlw	50
	movwf	(_LED_W_DimArray^(0+128)+4)

;led.c: 48: LED_W_DimArray[5] = 60;
	movlw	60
	movwf	(_LED_W_DimArray^(0+128)+5)

;led.c: 49: LED_W_DimArray[6] = 70;
	movlw	70
	movwf	(_LED_W_DimArray^(0+128)+6)

;led.c: 51: LED_Y_DimArray[0] = 10;
	movlw	10
	movwf	_LED_Y_DimArray^(0+128)

;led.c: 52: LED_Y_DimArray[1] = 20;
	movlw	20
	movwf	(_LED_Y_DimArray^(0+128)+1)

;led.c: 53: LED_Y_DimArray[2] = 30;
	movlw	30
	movwf	(_LED_Y_DimArray^(0+128)+2)

;led.c: 54: LED_Y_DimArray[3] = 40;
	movlw	40
	movwf	(_LED_Y_DimArray^(0+128)+3)

;led.c: 55: LED_Y_DimArray[4] = 50;
	movlw	50
	movwf	(_LED_Y_DimArray^(0+128)+4)

;led.c: 56: LED_Y_DimArray[5] = 60;
	movlw	60
	movwf	(_LED_Y_DimArray^(0+128)+5)

;led.c: 57: LED_Y_DimArray[6] = 70;
	movlw	70
	movwf	(_LED_Y_DimArray^(0+128)+6)
	return
__end_of_led_Init:	
	opt stack 0

	psect	text4
	file	"key.c"
__ptext4:	
;; *************** function _key_Init *****************
;; Defined at:
;;		line 80 in file "key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _key_Init

_key_Init:	
	opt stack 5

;key.c: 82: *(unsigned int *)0x46 |= (0x04);

;incstack = 0
; Regs used in _key_Init: []
	bsf	70,2

;key.c: 83: *(unsigned int *)0x0D &= ~(0x04);
	bcf	13,2

;key.c: 84: *(unsigned int *)0x0B |= (0x04);
	bsf	11,2
	return
__end_of_key_Init:	
	opt stack 0

	psect	text5
	file	"inital.c"
__ptext5:	
;; *************** function _inital *****************
;; Defined at:
;;		line 13 in file "inital.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: A00/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _inital

_inital:	
	opt stack 5

;inital.c: 15: ANSELL=0X00;

;incstack = 0
; Regs used in _inital: [wreg+status,2]
	clrf	86	;volatile

;inital.c: 16: ANSELH=0X00;
	clrf	87	;volatile

;inital.c: 18: TRISA=0X00;
	clrf	69	;volatile

;inital.c: 19: TRISB=0X00;
	clrf	70	;volatile

;inital.c: 22: PORTA=0X00;
	clrf	5	;volatile

;inital.c: 23: PORTB=0X00;
	clrf	6	;volatile

;inital.c: 26: PHCON1=0XFF;
	movlw	255
	movwf	67	;volatile

;inital.c: 27: PHCON=0XFF;
	movwf	13	;volatile

;inital.c: 30: PDCON1=0xFF;
	movwf	66	;volatile

;inital.c: 31: PDCON=0xFF;
	movwf	11	;volatile

;inital.c: 34: IOCA=0X00;
	clrf	7	;volatile

;inital.c: 35: IOCB=0X00;
	clrf	9	;volatile

;inital.c: 38: PBIE=0;
	bcf	14,1	;volatile
	return
__end_of_inital:	
	opt stack 0

	psect	text6
	file	"driver.c"
__ptext6:	
;; *************** function _Tick_Timer_Init *****************
;; Defined at:
;;		line 4 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TickTimer_Open
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Tick_Timer_Init

_Tick_Timer_Init:	
	opt stack 4

;driver.c: 6: T2 = 0xFF;

;incstack = 0
; Regs used in _Tick_Timer_Init: [wreg+status,2+status,0+pclath+cstack]
	movlw	255
	bcf	3,5	;RP0=0, select bank0
	movwf	82	;volatile

;driver.c: 7: TMR2H = 0x00;
	clrf	81	;volatile

;driver.c: 8: T2LOAD = 0xFF;
	movwf	83	;volatile

;driver.c: 10: TickTimer_Open();
	ljmp	l6818
__end_of_Tick_Timer_Init:	
	opt stack 0

	psect	text7
	file	"sleep.c"
__ptext7:	
;; *************** function _Sleep_Manage *****************
;; Defined at:
;;		line 34 in file "sleep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Battery_Init_Data
;;		_DelayMs
;;		_Sleep_Init
;;		_Sleep_Jump
;;		_Sleep_Wakeup
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Manage

_Sleep_Manage:	
	opt stack 2

;sleep.c: 36: if( !SleepSig )

;incstack = 0
; Regs used in _Sleep_Manage: [wreg+status,2+status,0+pclath+cstack]
	btfss	_SleepSig/(0+8),_SleepSig& (0+7)
	return

;sleep.c: 39: }
;sleep.c: 40: SleepSig = 0;
	bcf	_SleepSig/(0+8),_SleepSig& (0+7)

;sleep.c: 42: Sleep_Init();
	fcall	_Sleep_Init

;sleep.c: 44: Sleep_Jump();
	fcall	_Sleep_Jump

;sleep.c: 46: DelayMs(3);
	movlw	3
	bcf	3,5	;RP0=0, select bank0
	movwf	DelayMs@t
	clrf	DelayMs@t+1
	fcall	_DelayMs

;sleep.c: 48: Battery_Init_Data();
	fcall	_Battery_Init_Data

;sleep.c: 50: Sleep_Wakeup();
	ljmp	l7164
__end_of_Sleep_Manage:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _Sleep_Wakeup *****************
;; Defined at:
;;		line 62 in file "sleep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ChargeDetect_Interrupt_Close
;;		_Key_Interrupt_Close
;;		_TickTimer_Open
;; This function is called by:
;;		_Sleep_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Wakeup

_Sleep_Wakeup:	
	opt stack 3
l7164:	
;incstack = 0
; Regs used in _Sleep_Wakeup: [status,2+status,0+pclath+cstack]


;sleep.c: 64: ChargeDetect_Interrupt_Close();
	fcall	_ChargeDetect_Interrupt_Close

;sleep.c: 65: Key_Interrupt_Close();
	fcall	_Key_Interrupt_Close

;sleep.c: 66: TickTimer_Open();
	fcall	_TickTimer_Open

;sleep.c: 68: GIE = 1;
	bsf	14,7	;volatile
	return
__end_of_Sleep_Wakeup:	
	opt stack 0

	psect	text9
	file	"driver.c"
__ptext9:	
;; *************** function _TickTimer_Open *****************
;; Defined at:
;;		line 22 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Tick_Timer_Init
;;		_Sleep_Wakeup
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _TickTimer_Open

_TickTimer_Open:	
	opt stack 4
l6818:	
;incstack = 0
; Regs used in _TickTimer_Open: []


;driver.c: 24: T2IE = 1;
	bsf	75,6	;volatile

;driver.c: 25: T2EN = 1;
	bsf	80,7	;volatile

;driver.c: 27: T2IF = 0;
	bcf	75,5	;volatile
	return
__end_of_TickTimer_Open:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _Key_Interrupt_Close *****************
;; Defined at:
;;		line 37 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Wakeup
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Key_Interrupt_Close

_Key_Interrupt_Close:	
	opt stack 3

;driver.c: 40: PBIE = 0;

;incstack = 0
; Regs used in _Key_Interrupt_Close: []
	bcf	14,1	;volatile

;driver.c: 41: IOCB2 = 0;
	bcf	9,2	;volatile
	return
__end_of_Key_Interrupt_Close:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _ChargeDetect_Interrupt_Close *****************
;; Defined at:
;;		line 54 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Wakeup
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ChargeDetect_Interrupt_Close

_ChargeDetect_Interrupt_Close:	
	opt stack 3

;driver.c: 59: PBIE = 0;

;incstack = 0
; Regs used in _ChargeDetect_Interrupt_Close: []
	bcf	14,1	;volatile

;driver.c: 60: IOCB6 = 0;
	bcf	9,6	;volatile
	return
__end_of_ChargeDetect_Interrupt_Close:	
	opt stack 0

	psect	text12
	file	"sleep.c"
__ptext12:	
;; *************** function _Sleep_Jump *****************
;; Defined at:
;;		line 71 in file "sleep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Jump

_Sleep_Jump:	
	opt stack 4

;sleep.c: 73: T0OSCEN=0;

;incstack = 0
; Regs used in _Sleep_Jump: []
	bcf	76,5	;volatile
	nop	;# 
	nop	;# 
	sleep	;# 
	nop	;# 
	nop	;# 
	return
__end_of_Sleep_Jump:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _Sleep_Init *****************
;; Defined at:
;;		line 53 in file "sleep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ChargeDetect_Interrupt_Open
;;		_Key_Interrupt_Open
;;		_TickTimer_Close
;; This function is called by:
;;		_Sleep_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Sleep_Init

_Sleep_Init:	
	opt stack 3

;sleep.c: 55: TickTimer_Close();

;incstack = 0
; Regs used in _Sleep_Init: [status,2+status,0+pclath+cstack]
	fcall	_TickTimer_Close

;sleep.c: 56: Key_Interrupt_Open();
	fcall	_Key_Interrupt_Open

;sleep.c: 57: ChargeDetect_Interrupt_Open();
	fcall	_ChargeDetect_Interrupt_Open

;sleep.c: 59: GIE = 0;
	bcf	14,7	;volatile
	return
__end_of_Sleep_Init:	
	opt stack 0

	psect	text14
	file	"driver.c"
__ptext14:	
;; *************** function _TickTimer_Close *****************
;; Defined at:
;;		line 13 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Init
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _TickTimer_Close

_TickTimer_Close:	
	opt stack 3

;driver.c: 15: T2IE = 0;

;incstack = 0
; Regs used in _TickTimer_Close: []
	bcf	75,6	;volatile

;driver.c: 16: T2EN = 0;
	bcf	80,7	;volatile

;driver.c: 18: T2IF = 0;
	bcf	75,5	;volatile
	return
__end_of_TickTimer_Close:	
	opt stack 0

	psect	text15
__ptext15:	
;; *************** function _Key_Interrupt_Open *****************
;; Defined at:
;;		line 31 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Init
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Key_Interrupt_Open

_Key_Interrupt_Open:	
	opt stack 3

;driver.c: 33: PBIE = 1;

;incstack = 0
; Regs used in _Key_Interrupt_Open: []
	bsf	14,1	;volatile

;driver.c: 34: IOCB2 = 1;
	bsf	9,2	;volatile
	return
__end_of_Key_Interrupt_Open:	
	opt stack 0

	psect	text16
__ptext16:	
;; *************** function _ChargeDetect_Interrupt_Open *****************
;; Defined at:
;;		line 45 in file "driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Init
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ChargeDetect_Interrupt_Open

_ChargeDetect_Interrupt_Open:	
	opt stack 3

;driver.c: 50: PBIE = 1;

;incstack = 0
; Regs used in _ChargeDetect_Interrupt_Open: []
	bsf	14,1	;volatile

;driver.c: 51: IOCB6 = 1;
	bsf	9,6	;volatile
	return
__end_of_ChargeDetect_Interrupt_Open:	
	opt stack 0

	psect	text17
	file	"rgb.c"
__ptext17:	
;; *************** function _RGB_Init *****************
;; Defined at:
;;		line 9 in file "rgb.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _RGB_Init

_RGB_Init:	
	opt stack 5

;rgb.c: 11: *(unsigned int *)0x46 &= ~(0x08);

;incstack = 0
; Regs used in _RGB_Init: []
	bcf	70,3

;rgb.c: 12: *(unsigned int *)0x0D &= ~(0x08);
	bcf	13,3

;rgb.c: 13: *(unsigned int *)0x0B |= (0x08);
	bsf	11,3

;rgb.c: 15: ( (*((unsigned int *)0x06)) |= (0x08) );
	bsf	6,3
	return
__end_of_RGB_Init:	
	opt stack 0

	psect	text18
	file	"power.c"
__ptext18:	
;; *************** function _Power_Manage *****************
;; Defined at:
;;		line 7 in file "power.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Power_Turn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Power_Manage

_Power_Manage:	
	opt stack 4

;power.c: 9: Power_Turn();

;incstack = 0
; Regs used in _Power_Manage: [status,2+status,0+pclath+cstack]
	ljmp	l7154
__end_of_Power_Manage:	
	opt stack 0

	psect	text19
__ptext19:	
;; *************** function _Power_Turn *****************
;; Defined at:
;;		line 12 in file "power.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Power_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Power_Turn

_Power_Turn:	
	opt stack 4
l7154:	
;incstack = 0
; Regs used in _Power_Turn: []


;power.c: 14: if(EvePower == 0)
	btfsc	_EvePower/(0+8),_EvePower& (0+7)
	goto	l4834

;power.c: 15: {
;power.c: 16: PowerStatus = 0;
	bcf	_PowerStatus/(0+8),_PowerStatus& (0+7)

;power.c: 17: }
	return
l4834:	

;power.c: 18: else
;power.c: 19: {
;power.c: 20: PowerStatus = 1;
	bsf	_PowerStatus/(0+8),_PowerStatus& (0+7)
	return
__end_of_Power_Turn:	
	opt stack 0

	psect	text20
__ptext20:	
;; *************** function _Power_Init *****************
;; Defined at:
;;		line 24 in file "power.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Power_Init

_Power_Init:	
	opt stack 5

;power.c: 26: PowerStatus = 0;

;incstack = 0
; Regs used in _Power_Init: []
	bcf	_PowerStatus/(0+8),_PowerStatus& (0+7)
	return
__end_of_Power_Init:	
	opt stack 0

	psect	text21
	file	"led.c"
__ptext21:	
;; *************** function _LED_Manage *****************
;; Defined at:
;;		line 170 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 900/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LED_Color
;;		_LED_Dim
;;		_LED_PWM_Set
;;		_LED_Status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_Manage

_LED_Manage:	
	opt stack 3

;led.c: 172: LED_Dim();

;incstack = 0
; Regs used in _LED_Manage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_LED_Dim

;led.c: 173: LED_Color();
	fcall	_LED_Color

;led.c: 174: LED_Status();
	fcall	_LED_Status

;led.c: 175: LED_PWM_Set();
	ljmp	l7152
__end_of_LED_Manage:	
	opt stack 0

	psect	text22
__ptext22:	
;; *************** function _LED_Status *****************
;; Defined at:
;;		line 147 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pwm             2    2[BANK0 ] unsigned char [2]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/100
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_Status

_LED_Status:	
	opt stack 4

;led.c: 149: unsigned char pwm[2] = {0};

;incstack = 0
; Regs used in _LED_Status: [wreg+status,2]
	clrf	LED_Status@pwm
	clrf	LED_Status@pwm+1

;led.c: 151: pwm[0] = LED_ColorPwm[0];
	movf	_LED_ColorPwm,w
	movwf	LED_Status@pwm

;led.c: 152: pwm[1] = LED_ColorPwm[1];
	movf	_LED_ColorPwm+1,w
	movwf	LED_Status@pwm+1

;led.c: 154: if( PowerStatus == 0 )
	btfsc	_PowerStatus/(0+8),_PowerStatus& (0+7)
	goto	l7148

;led.c: 155: {
;led.c: 156: pwm[ 0 ] = 0;
	clrf	LED_Status@pwm

;led.c: 157: pwm[ 1 ] = 0;
	clrf	LED_Status@pwm+1
l7148:	

;led.c: 158: }
;led.c: 160: LED_PWM[0] = pwm[0];
	movf	LED_Status@pwm,w
	bsf	3,5	;RP0=1, select bank1
	movwf	_LED_PWM^(0+128)

;led.c: 161: LED_PWM[1] = pwm[1];
	bcf	3,5	;RP0=0, select bank0
	movf	LED_Status@pwm+1,w
	bsf	3,5	;RP0=1, select bank1
	movwf	(_LED_PWM^(0+128)+1)
	return
__end_of_LED_Status:	
	opt stack 0

	psect	text23
__ptext23:	
;; *************** function _LED_PWM_Set *****************
;; Defined at:
;;		line 164 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 900/100
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_PWM_Set

_LED_PWM_Set:	
	opt stack 4
l7152:	
;incstack = 0
; Regs used in _LED_PWM_Set: [wreg]


;led.c: 166: PWM1P = LED_PWM[0];
	movf	_LED_PWM^(0+128),w
	bcf	3,5	;RP0=0, select bank0
	movwf	84	;volatile

;led.c: 167: PWM0P = LED_PWM[1];
	bsf	3,5	;RP0=1, select bank1
	movf	(_LED_PWM^(0+128)+1),w
	bcf	3,5	;RP0=0, select bank0
	movwf	79	;volatile
	return
__end_of_LED_PWM_Set:	
	opt stack 0

	psect	text24
__ptext24:	
;; *************** function _LED_Dim *****************
;; Defined at:
;;		line 66 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 900/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LED_DimIndex_Ctrl
;; This function is called by:
;;		_LED_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_Dim

_LED_Dim:	
	opt stack 3

;led.c: 68: LED_DimIndex_Ctrl();

;incstack = 0
; Regs used in _LED_Dim: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_LED_DimIndex_Ctrl

;led.c: 70: LED_DimPwm[ 0 ] = LED_W_DimArray[ LED_W_DimIndex ];
	movf	_LED_W_DimIndex,w
	addlw	(low (_LED_W_DimArray| 0))& (0+255)
	movwf	4
	movf	0,w
	movwf	_LED_DimPwm

;led.c: 71: LED_DimPwm[ 1 ] = LED_Y_DimArray[ LED_Y_DimIndex ];
	movf	_LED_Y_DimIndex,w
	addlw	(low (_LED_Y_DimArray| 0))& (0+255)
	movwf	4
	movf	0,w
	movwf	_LED_DimPwm+1
	return
__end_of_LED_Dim:	
	opt stack 0

	psect	text25
__ptext25:	
;; *************** function _LED_DimIndex_Ctrl *****************
;; Defined at:
;;		line 74 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Dim
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_DimIndex_Ctrl

_LED_DimIndex_Ctrl:	
	opt stack 3

;led.c: 76: if(!EveDim)

;incstack = 0
; Regs used in _LED_DimIndex_Ctrl: [wreg+status,2+status,0]
	btfss	_EveDim/(0+8),_EveDim& (0+7)
	return

;led.c: 79: }
;led.c: 80: EveDim = 0;
	bcf	_EveDim/(0+8),_EveDim& (0+7)

;led.c: 82: if(LedColor == 0)
	movf	_LedColor,w
	movlw	7
	btfss	3,2
	goto	L1

;led.c: 83: {
;led.c: 84: LED_W_DimIndex++;
	incf	_LED_W_DimIndex,f

;led.c: 85: if(LED_W_DimIndex > 6)
	subwf	_LED_W_DimIndex,w
	btfsc	3,0

;led.c: 86: {
;led.c: 87: LED_W_DimIndex = 0;
	clrf	_LED_W_DimIndex
	return
L1:	

;led.c: 90: else
;led.c: 91: {
;led.c: 92: LED_Y_DimIndex++;
	incf	_LED_Y_DimIndex,f

;led.c: 93: if(LED_Y_DimIndex > 6)
	subwf	_LED_Y_DimIndex,w
	btfsc	3,0

;led.c: 94: {
;led.c: 95: LED_Y_DimIndex = 0;
	clrf	_LED_Y_DimIndex
	return
__end_of_LED_DimIndex_Ctrl:	
	opt stack 0

	psect	text26
__ptext26:	
;; *************** function _LED_Color *****************
;; Defined at:
;;		line 105 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  index           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LED_Color

_LED_Color:	
	opt stack 4

;led.c: 108: if(EveColor)

;incstack = 0
; Regs used in _LED_Color: [wreg-fsr0h+status,2+status,0]
	btfss	_EveColor/(0+8),_EveColor& (0+7)
	goto	l3877

;led.c: 109: {
;led.c: 111: LedColor = 0;
	clrf	_LedColor

;led.c: 112: }
	goto	l7122
l3877:	

;led.c: 115: else
;led.c: 116: {
;led.c: 118: LedColor = 1;
	clrf	_LedColor
	incf	_LedColor,f
l7122:	

;led.c: 119: }
;led.c: 120: index = LedColor;
	movf	_LedColor,w
	movwf	LED_Color@index

;led.c: 122: switch(index)
	goto	l7136
l7124:	

;led.c: 125: {
;led.c: 126: LED_ColorPwm[0] = 0;
	clrf	_LED_ColorPwm

;led.c: 127: LED_ColorPwm[1] = LED_DimPwm[ 1 ];
	movf	_LED_DimPwm+1,w
	movwf	_LED_ColorPwm+1

;led.c: 128: }
;led.c: 129: break;
	return
l7128:	

;led.c: 132: {
;led.c: 133: LED_ColorPwm[1] = 0;
	clrf	_LED_ColorPwm+1

;led.c: 134: LED_ColorPwm[0] = LED_DimPwm[ 0 ];
	movf	_LED_DimPwm,w
	movwf	_LED_ColorPwm

;led.c: 135: }
;led.c: 136: break;
	return
l7132:	

;led.c: 139: LED_ColorPwm[ 0 ] = LED_DimPwm[ 0 ];
	movf	_LED_DimPwm,w
	movwf	_LED_ColorPwm

;led.c: 140: LED_ColorPwm[ 1 ] = LED_DimPwm[ 1 ];
	movf	_LED_DimPwm+1,w
	movwf	_LED_ColorPwm+1

;led.c: 141: break;
	return
l7136:	
	movf	LED_Color@index,w

; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte
	xorlw	0	; case 0
	btfsc	3,2
	goto	l7128
	xorlw	1	; case 1
	btfsc	3,2
	goto	l7124
	goto	l7132
	return
__end_of_LED_Color:	
	opt stack 0

	psect	text27
	file	"eve.c"
__ptext27:	
;; *************** function _Eve_Manage *****************
;; Defined at:
;;		line 11 in file "eve.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Eve_Detect
;;		_Key_Detect
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Eve_Manage

_Eve_Manage:	
	opt stack 3

;eve.c: 14: Key_Detect();

;incstack = 0
; Regs used in _Eve_Manage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_Key_Detect

;eve.c: 16: Eve_Detect();
	ljmp	l7084
__end_of_Eve_Manage:	
	opt stack 0

	psect	text28
	file	"key.c"
__ptext28:	
;; *************** function _Key_Detect *****************
;; Defined at:
;;		line 90 in file "key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Read_Key
;; This function is called by:
;;		_Eve_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Key_Detect

_Key_Detect:	
	opt stack 3

;key.c: 92: static unsigned int sys_time = 0;
;key.c: 94: if( !KeyTick )

;incstack = 0
; Regs used in _Key_Detect: [wreg+status,2+status,0+pclath+cstack]
	movf	_KeyTick,w
	btfsc	3,2
	return

;key.c: 96: KeyTick = 0;
	clrf	_KeyTick

;key.c: 99: sys_time++;
	incf	Key_Detect@sys_time,f
	btfsc	3,2
	incf	Key_Detect@sys_time+1,f

;key.c: 100: if(sys_time > 65000)
	movlw	253
	subwf	Key_Detect@sys_time+1,w
	movlw	233
	btfsc	3,2
	subwf	Key_Detect@sys_time,w
	btfss	3,0
	goto	l7378

;key.c: 101: sys_time = 0;
	clrf	Key_Detect@sys_time
	clrf	Key_Detect@sys_time+1
l7378:	

;key.c: 103: Read_Key(sys_time);
	movf	Key_Detect@sys_time+1,w
	movwf	Read_Key@sys_time+1
	movf	Key_Detect@sys_time,w
	movwf	Read_Key@sys_time
	ljmp	l6830
__end_of_Key_Detect:	
	opt stack 0

	psect	text29
__ptext29:	
;; *************** function _Read_Key *****************
;; Defined at:
;;		line 106 in file "key.c"
;; Parameters:    Size  Location     Type
;;  sys_time        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  interval        2    4[BANK0 ] unsigned int 
;;  interval        2    6[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       2       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Detect
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Read_Key

_Read_Key:	
	opt stack 3
l6830:	
;incstack = 0
; Regs used in _Read_Key: [wreg+status,2+status,0]


;key.c: 108: if(!( (*((unsigned int *)0x06)) & (0x04) ))
	btfsc	6,2
	goto	l6844

;key.c: 109: {
;key.c: 110: if(KeyPressTime < 2001)
	movlw	7
	subwf	_KeyPressTime+1,w
	movlw	209
	btfsc	3,2
	subwf	_KeyPressTime,w
	btfsc	3,0
	goto	l6836

;key.c: 111: {
;key.c: 112: KeyPressTime++;
	incf	_KeyPressTime,f
	btfsc	3,2
	incf	_KeyPressTime+1,f
l6836:	

;key.c: 113: }
;key.c: 114: if(KeyPressTime == 2000)
	movlw	208
	xorwf	_KeyPressTime,w
	movlw	7
	btfsc	3,2
	xorwf	_KeyPressTime+1,w
	btfss	3,2
	return

;key.c: 115: {
;key.c: 116: KeyPressTime = 0;
	clrf	_KeyPressTime
	clrf	_KeyPressTime+1

;key.c: 117: KeyLongPressFlag = 1;
	bsf	_KeyLongPressFlag/(0+8),_KeyLongPressFlag& (0+7)

;key.c: 118: LastLongKeyFlag = 1;
	bsf	_LastLongKeyFlag/(0+8),_LastLongKeyFlag& (0+7)

;key.c: 120: ShortPressCount = 0;
	clrf	_ShortPressCount

;key.c: 121: LastShortPressTime = 0;
	clrf	_LastShortPressTime
	clrf	_LastShortPressTime+1
	return
l6844:	

;key.c: 124: else
;key.c: 125: {
;key.c: 126: if(KeyPressTime > 10 && KeyPressTime < 900)
	movlw	0
	subwf	_KeyPressTime+1,w
	movlw	11
	btfsc	3,2
	subwf	_KeyPressTime,w
	movlw	3
	btfss	3,0
	goto	L2
	subwf	_KeyPressTime+1,w
	movlw	132
	btfsc	3,2
	subwf	_KeyPressTime,w
	btfsc	3,0
	goto	l6866

;key.c: 127: {
;key.c: 128: if( !LastLongKeyFlag )
	btfsc	_LastLongKeyFlag/(0+8),_LastLongKeyFlag& (0+7)
	goto	l3389

;key.c: 129: {
;key.c: 130: KeyShortPressFlag = 1;
	bsf	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)

;key.c: 133: if(ShortPressCount == 0)
	movf	_ShortPressCount,w
	btfss	3,2
	goto	l6858

;key.c: 134: {
;key.c: 136: ShortPressCount = 1;
	clrf	_ShortPressCount
	incf	_ShortPressCount,f

;key.c: 137: LastShortPressTime = sys_time;
	movf	Read_Key@sys_time+1,w
	movwf	_LastShortPressTime+1
	movf	Read_Key@sys_time,w
	movwf	_LastShortPressTime

;key.c: 138: }
	goto	l3389
l6858:	

;key.c: 139: else if(ShortPressCount == 1)
	decfsz	_ShortPressCount,w
	goto	l3389

;key.c: 140: {
;key.c: 142: unsigned int interval = sys_time - LastShortPressTime;
	movf	Read_Key@sys_time+1,w
	movwf	Read_Key@interval+1
	movf	Read_Key@sys_time,w
	movwf	Read_Key@interval
	movf	_LastShortPressTime,w
	subwf	Read_Key@interval,f
	movf	_LastShortPressTime+1,w
	btfss	3,0
	decf	Read_Key@interval+1,f
	subwf	Read_Key@interval+1,f

;key.c: 143: if(interval < 300)
	movlw	1
	subwf	Read_Key@interval+1,w
	movlw	44
	btfsc	3,2
	subwf	Read_Key@interval,w
	btfsc	3,0
	goto	l6864

;key.c: 144: {
;key.c: 146: KeyShortPressTwiceFlag = 1;
	bsf	_KeyShortPressTwiceFlag/(0+8),_KeyShortPressTwiceFlag& (0+7)
	goto	l6864
l6866:	

;key.c: 154: else if(KeyPressTime >= 900 && KeyPressTime < 2000)
	movlw	3
L2:	
	subwf	_KeyPressTime+1,w
	movlw	132
	btfsc	3,2
	subwf	_KeyPressTime,w
	btfss	3,0
	goto	l6872
	movlw	7
	subwf	_KeyPressTime+1,w
	movlw	208
	btfsc	3,2
	subwf	_KeyPressTime,w
	btfss	3,0
	goto	l6864
l6872:	

;key.c: 161: else if(ShortPressCount == 1)
	decfsz	_ShortPressCount,w
	goto	l3389

;key.c: 162: {
;key.c: 163: unsigned int interval = sys_time - LastShortPressTime;
	movf	Read_Key@sys_time+1,w
	movwf	Read_Key@interval_1713+1
	movf	Read_Key@sys_time,w
	movwf	Read_Key@interval_1713
	movf	_LastShortPressTime,w
	subwf	Read_Key@interval_1713,f
	movf	_LastShortPressTime+1,w
	btfss	3,0
	decf	Read_Key@interval_1713+1,f
	subwf	Read_Key@interval_1713+1,f

;key.c: 164: if(interval >= 300)
	movlw	1
	subwf	Read_Key@interval_1713+1,w
	movlw	44
	btfsc	3,2
	subwf	Read_Key@interval_1713,w
	btfss	3,0
	goto	l3389
l6864:	

;key.c: 147: }
;key.c: 149: ShortPressCount = 0;
	clrf	_ShortPressCount

;key.c: 150: LastShortPressTime = 0;
	clrf	_LastShortPressTime
	clrf	_LastShortPressTime+1
l3389:	

;key.c: 169: }
;key.c: 170: }
;key.c: 172: KeyPressTime = 0;
	clrf	_KeyPressTime
	clrf	_KeyPressTime+1

;key.c: 173: LastLongKeyFlag = 0;
	bcf	_LastLongKeyFlag/(0+8),_LastLongKeyFlag& (0+7)
	return
__end_of_Read_Key:	
	opt stack 0

	psect	text30
	file	"eve.c"
__ptext30:	
;; *************** function _Eve_Detect *****************
;; Defined at:
;;		line 19 in file "eve.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Eve_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Eve_Detect

_Eve_Detect:	
	opt stack 4
l7084:	
;incstack = 0
; Regs used in _Eve_Detect: [wreg-fsr0h+status,2+status,0]


;eve.c: 21: if(PowerStatus == 1)
	btfsc	_PowerStatus/(0+8),_PowerStatus& (0+7)
	goto	l7096
	goto	l7102
l1981:	
;eve.c: 24: {
;eve.c: 25: case 0:


;eve.c: 26: if(KeyShortPressFlag)
	btfss	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)
	goto	l1983

;eve.c: 27: {
;eve.c: 28: KeyShortPressFlag = 0;
	bcf	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)

;eve.c: 29: EveColor = 1;
	bsf	_EveColor/(0+8),_EveColor& (0+7)

;eve.c: 30: ShortIndex = 1;
	clrf	_ShortIndex
	incf	_ShortIndex,f
	goto	l1983
l1984:	
;eve.c: 34: case 1:


;eve.c: 35: if(KeyShortPressFlag)
	btfss	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)
	goto	l1983

;eve.c: 36: {
;eve.c: 37: KeyShortPressFlag = 0;
	bcf	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)

;eve.c: 38: EveColor = 0;
	bcf	_EveColor/(0+8),_EveColor& (0+7)

;eve.c: 39: ShortIndex = 0;
	clrf	_ShortIndex
	goto	l1983
l7096:	
	movf	_ShortIndex,w

; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte
	xorlw	0	; case 0
	btfsc	3,2
	goto	l1981
	xorlw	1	; case 1
	btfsc	3,2
	goto	l1984
	goto	l1983
l1983:	

;eve.c: 51: if( KeyLongPressFlag )
	btfss	_KeyLongPressFlag/(0+8),_KeyLongPressFlag& (0+7)
	goto	l1987

;eve.c: 52: {
;eve.c: 53: KeyLongPressFlag = 0;
	bcf	_KeyLongPressFlag/(0+8),_KeyLongPressFlag& (0+7)

;eve.c: 55: EveDim = 1;
	bsf	_EveDim/(0+8),_EveDim& (0+7)
l1987:	

;eve.c: 56: }
;eve.c: 58: if(KeyShortPressTwiceFlag)
	btfss	_KeyShortPressTwiceFlag/(0+8),_KeyShortPressTwiceFlag& (0+7)
	return

;eve.c: 59: {
;eve.c: 60: KeyShortPressTwiceFlag = 0;
	bcf	_KeyShortPressTwiceFlag/(0+8),_KeyShortPressTwiceFlag& (0+7)

;eve.c: 61: EvePower = 0;
	bcf	_EvePower/(0+8),_EvePower& (0+7)
	return
l7102:	

;eve.c: 64: else
;eve.c: 65: {
;eve.c: 66: ShortIndex = 0;
	clrf	_ShortIndex

;eve.c: 67: KeyLongPressFlag = 0;
	bcf	_KeyLongPressFlag/(0+8),_KeyLongPressFlag& (0+7)

;eve.c: 72: if( KeyShortPressTwiceFlag )
	btfss	_KeyShortPressTwiceFlag/(0+8),_KeyShortPressTwiceFlag& (0+7)
	return

;eve.c: 73: {
;eve.c: 74: KeyShortPressTwiceFlag = 0;
	bcf	_KeyShortPressTwiceFlag/(0+8),_KeyShortPressTwiceFlag& (0+7)

;eve.c: 75: EveColor = 0;
	bcf	_EveColor/(0+8),_EveColor& (0+7)

;eve.c: 77: KeyShortPressFlag = 0;
	bcf	_KeyShortPressFlag/(0+8),_KeyShortPressFlag& (0+7)

;eve.c: 79: EvePower = 1;
	bsf	_EvePower/(0+8),_EvePower& (0+7)
	return
__end_of_Eve_Detect:	
	opt stack 0

	psect	text31
	file	"charge.c"
__ptext31:	
;; *************** function _Charge_Manage *****************
;; Defined at:
;;		line 45 in file "charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Charge_Detect
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Charge_Manage

_Charge_Manage:	
	opt stack 4

;charge.c: 47: Charge_Detect();

;incstack = 0
; Regs used in _Charge_Manage: [wreg+status,2+status,0+pclath+cstack]
	ljmp	l7042
__end_of_Charge_Manage:	
	opt stack 0

	psect	text32
__ptext32:	
;; *************** function _Charge_Detect *****************
;; Defined at:
;;		line 53 in file "charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Charge_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Charge_Detect

_Charge_Detect:	
	opt stack 4
l7042:	
;incstack = 0
; Regs used in _Charge_Detect: [wreg+status,2+status,0]


;charge.c: 55: if(ChargeDetectTick < 20)
	movlw	20
	subwf	_ChargeDetectTick,w
	btfss	3,0
	return

;charge.c: 58: }
;charge.c: 59: ChargeDetectTick = 0;
	clrf	_ChargeDetectTick

;charge.c: 61: if(( (*((unsigned int *)0x06)) & (0x40) ))
	btfss	6,6
	goto	l7060
	movlw	21

;charge.c: 62: {
;charge.c: 63: Cnt1++;
	incf	_Cnt1,f

;charge.c: 64: Cnt2 = 0;
	clrf	_Cnt2

;charge.c: 65: if(Cnt1 > 20)
	subwf	_Cnt1,w
	btfss	3,0
	return

;charge.c: 66: {
;charge.c: 67: Cnt1 = 0;
	clrf	_Cnt1

;charge.c: 68: ChargeStatus = 1;
	bsf	_ChargeStatus/(0+8),_ChargeStatus& (0+7)
	return
l7060:	
	movlw	21

;charge.c: 71: else
;charge.c: 72: {
;charge.c: 73: Cnt2++;
	incf	_Cnt2,f

;charge.c: 74: Cnt1 = 0;
	clrf	_Cnt1

;charge.c: 75: if(Cnt2 > 20)
	subwf	_Cnt2,w
	btfss	3,0
	return

;charge.c: 76: {
;charge.c: 77: Cnt2 = 0;
	clrf	_Cnt2

;charge.c: 78: ChargeStatus = 0;
	bcf	_ChargeStatus/(0+8),_ChargeStatus& (0+7)
	return
__end_of_Charge_Detect:	
	opt stack 0

	psect	text33
__ptext33:	
;; *************** function _Charge_Config *****************
;; Defined at:
;;		line 36 in file "charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Charge_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Charge_Config

_Charge_Config:	
	opt stack 4

;charge.c: 38: Charge_Init();

;incstack = 0
; Regs used in _Charge_Config: [status,2+status,0+pclath+cstack]
	fcall	_Charge_Init

;charge.c: 39: ChargeStatus = 0;
	bcf	_ChargeStatus/(0+8),_ChargeStatus& (0+7)
	return
__end_of_Charge_Config:	
	opt stack 0

	psect	text34
__ptext34:	
;; *************** function _Charge_Init *****************
;; Defined at:
;;		line 14 in file "charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Charge_Config
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Charge_Init

_Charge_Init:	
	opt stack 4

;charge.c: 16: *(unsigned int *)0x46 |= (0x40);

;incstack = 0
; Regs used in _Charge_Init: []
	bsf	70,6

;charge.c: 17: *(unsigned int *)0x0D |= (0x40);
	bsf	13,6

;charge.c: 18: *(unsigned int *)0x0B &= ~(0x40);
	bcf	11,6

;charge.c: 20: *(unsigned int *)0x46 |= (0x80);
	bsf	70,7

;charge.c: 21: *(unsigned int *)0x0D &= ~(0x80);
	bcf	13,7

;charge.c: 22: *(unsigned int *)0x0B |= (0x80);
	bsf	11,7
	return
__end_of_Charge_Init:	
	opt stack 0

	psect	text35
	file	"battery.c"
__ptext35:	
;; *************** function _Battery_Manage *****************
;; Defined at:
;;		line 93 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Battery_Full_Judg
;;		_Battery_LvdDetect
;;		_Battery_StatusJudg
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_Manage

_Battery_Manage:	
	opt stack 3

;battery.c: 96: Battery_Full_Judg();

;incstack = 0
; Regs used in _Battery_Manage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	fcall	_Battery_Full_Judg

;battery.c: 98: if( !BatteryFullFlag )
	btfsc	_BatteryFullFlag/(0+8),_BatteryFullFlag& (0+7)
	goto	l7174

;battery.c: 99: {
;battery.c: 100: Battery_LvdDetect();
	fcall	_Battery_LvdDetect

;battery.c: 101: }
	goto	l7176
l7174:	

;battery.c: 102: else
;battery.c: 103: {
;battery.c: 104: BatteryLvdTick = 0;
	clrf	_BatteryLvdTick

;battery.c: 105: BatteryLvdCnt1 = 0;
	clrf	_BatteryLvdCnt1

;battery.c: 106: BatteryLvdCnt2 = 0;
	clrf	_BatteryLvdCnt2
l7176:	

;battery.c: 107: }
;battery.c: 109: Battery_StatusJudg();
	ljmp	l6950
__end_of_Battery_Manage:	
	opt stack 0

	psect	text36
__ptext36:	
;; *************** function _Battery_StatusJudg *****************
;; Defined at:
;;		line 160 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SetLVD_Level
;; This function is called by:
;;		_Battery_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_StatusJudg

_Battery_StatusJudg:	
	opt stack 3
l6950:	
;incstack = 0
; Regs used in _Battery_StatusJudg: [wreg-fsr0h+status,2+status,0+pclath+cstack]


;battery.c: 163: {
;battery.c: 164: BatteryDieTick = 0;
	bcf	_PowerStatus/(0+8),_PowerStatus& (0+7)
	btfss	_PowerStatus/(0+8),_PowerStatus& (0+7)
	goto	l6956

;battery.c: 165: BatteryDieCntSec = 0;
	clrf	_BatteryDieCntSec

;battery.c: 166: BatteryDieCntFinishFlag = 0;
	bcf	_BatteryDieCntFinishFlag/(0+8),_BatteryDieCntFinishFlag& (0+7)
l6956:	

;battery.c: 167: }
;battery.c: 169: if(BatteryStatusTick < 96)
	movlw	96
	subwf	_BatteryStatusTick,w
	btfss	3,0
	return

;battery.c: 172: }
;battery.c: 173: BatteryStatusTick = 0;
	clrf	_BatteryStatusTick

;battery.c: 175: if(BatteryFullFlag)
	btfss	_BatteryFullFlag/(0+8),_BatteryFullFlag& (0+7)
	goto	l6980
	movlw	11

;battery.c: 176: {
;battery.c: 177: BatteryStatusCnt1++;
	incf	_BatteryStatusCnt1,f

;battery.c: 178: BatteryStatusCnt2 = 0;
	clrf	_BatteryStatusCnt2

;battery.c: 179: BatteryStatusCnt3 = 0;
	clrf	_BatteryStatusCnt3

;battery.c: 180: if(BatteryStatusCnt1 > 10)
	subwf	_BatteryStatusCnt1,w
	btfss	3,0
	goto	l6976
	movlw	3

;battery.c: 181: {
;battery.c: 182: BatteryStatusCnt1 = 0;
	clrf	_BatteryStatusCnt1
L3:	
;battery.c: 183: BatteryStatus = 3;

	movwf	_BatteryStatus
l6976:	

;battery.c: 186: BatteryDieCntSec = 0;
	clrf	_BatteryDieCntSec

;battery.c: 187: BatteryDieCntFinishFlag = 0;
	bcf	_BatteryDieCntFinishFlag/(0+8),_BatteryDieCntFinishFlag& (0+7)

;battery.c: 188: }
	return
l6980:	

;battery.c: 189: else
;battery.c: 190: {
;battery.c: 191: if(BatteryCurrCheckLevel != 1)
	decf	_BatteryCurrCheckLevel,w
	btfsc	3,2
	goto	l6986
	movlw	1

;battery.c: 192: {
;battery.c: 193: BatteryCurrCheckLevel = 1;
	clrf	_BatteryCurrCheckLevel
	incf	_BatteryCurrCheckLevel,f

;battery.c: 194: SetLVD_Level(1);
	fcall	_SetLVD_Level
l6986:	

;battery.c: 195: }
;battery.c: 197: if( BatteryLvdStatus == 0 )
	btfsc	_BatteryLvdStatus/(0+8),_BatteryLvdStatus& (0+7)
	goto	l7004
	movlw	11

;battery.c: 198: {
;battery.c: 199: BatteryStatusCnt1 = 0;
	clrf	_BatteryStatusCnt1

;battery.c: 200: BatteryStatusCnt2++;
	incf	_BatteryStatusCnt2,f

;battery.c: 201: BatteryStatusCnt3 = 0;
	clrf	_BatteryStatusCnt3

;battery.c: 202: if(BatteryStatusCnt2 > 10)
	subwf	_BatteryStatusCnt2,w
	btfss	3,0
	goto	l7000

;battery.c: 203: {
;battery.c: 204: BatteryStatusCnt2 = 0;
	clrf	_BatteryStatusCnt2

;battery.c: 205: BatteryStatus = 1;
	clrf	_BatteryStatus
	incf	_BatteryStatus,f
l7000:	

;battery.c: 206: }
;battery.c: 208: if(BatteryDieCntFinishFlag)
	btfsc	_BatteryDieCntFinishFlag/(0+8),_BatteryDieCntFinishFlag& (0+7)

;battery.c: 209: {
;battery.c: 210: BatteryStatus = 0;
	clrf	_BatteryStatus
	return
l7004:	
	movlw	11

;battery.c: 213: else
;battery.c: 214: {
;battery.c: 215: BatteryStatusCnt1 = 0;
	clrf	_BatteryStatusCnt1

;battery.c: 216: BatteryStatusCnt2 = 0;
	clrf	_BatteryStatusCnt2

;battery.c: 217: BatteryStatusCnt3++;
	incf	_BatteryStatusCnt3,f

;battery.c: 218: if(BatteryStatusCnt3 > 10)
	subwf	_BatteryStatusCnt3,w
	btfss	3,0
	return
	movlw	2

;battery.c: 219: {
;battery.c: 220: BatteryStatusCnt3 = 0;
	clrf	_BatteryStatusCnt3

;battery.c: 223: BatteryDieTick = 0;
	goto	L3
__end_of_Battery_StatusJudg:	
	opt stack 0

	psect	text37
__ptext37:	
;; *************** function _SetLVD_Level *****************
;; Defined at:
;;		line 72 in file "battery.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_StatusJudg
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _SetLVD_Level

_SetLVD_Level:	
	opt stack 3

;incstack = 0
; Regs used in _SetLVD_Level: [wreg-fsr0h+status,2+status,0]
;SetLVD_Level@level stored from wreg
	movwf	SetLVD_Level@level

;battery.c: 74: LVDCR &= ~0x1f;
	movlw	224
	andwf	8,f	;volatile

;battery.c: 76: switch(level)
	goto	l6810
l6804:	

;battery.c: 79: LVDCR |= 0x09 << 1;
	movlw	18
	goto	L4
l6806:	
;battery.c: 80: break;


;battery.c: 83: LVDCR |= 0x0A << 1;
	movlw	20
L4:	
	iorwf	8,f	;volatile

;battery.c: 84: break;
	goto	l502
l6810:	
	movf	SetLVD_Level@level,w

; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte
	xorlw	0	; case 0
	btfsc	3,2
	goto	l6804
	xorlw	1	; case 1
	btfsc	3,2
	goto	l6806
	goto	l502
l502:	

;battery.c: 90: LVDCR |= 0x01;
	bsf	8,0	;volatile
	return
__end_of_SetLVD_Level:	
	opt stack 0

	psect	text38
__ptext38:	
;; *************** function _Battery_LvdDetect *****************
;; Defined at:
;;		line 269 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Get_Lvdf
;; This function is called by:
;;		_Battery_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_LvdDetect

_Battery_LvdDetect:	
	opt stack 3

;battery.c: 273: if(Get_Lvdf())

;incstack = 0
; Regs used in _Battery_LvdDetect: [wreg+status,2+status,0+pclath+cstack]
	fcall	_Get_Lvdf
	movlw	11
	btfss	3,0
	goto	L5

;battery.c: 274: {
;battery.c: 275: BatteryLvdCnt1++;
	incf	_BatteryLvdCnt1,f

;battery.c: 276: BatteryLvdCnt2 = 0;
	clrf	_BatteryLvdCnt2

;battery.c: 277: if(BatteryLvdCnt1 > 10)
	subwf	_BatteryLvdCnt1,w
	btfss	3,0
	return

;battery.c: 278: {
;battery.c: 279: BatteryLvdCnt1 = 0;
	clrf	_BatteryLvdCnt1

;battery.c: 280: BatteryLvdStatus = 0;
	bcf	_BatteryLvdStatus/(0+8),_BatteryLvdStatus& (0+7)
	return
L5:	

;battery.c: 283: else
;battery.c: 284: {
;battery.c: 285: BatteryLvdCnt1 = 0;
	clrf	_BatteryLvdCnt1

;battery.c: 286: BatteryLvdCnt2++;
	incf	_BatteryLvdCnt2,f

;battery.c: 287: if(BatteryLvdCnt2 > 10)
	subwf	_BatteryLvdCnt2,w
	btfss	3,0
	return

;battery.c: 288: {
;battery.c: 289: BatteryLvdCnt2 = 0;
	clrf	_BatteryLvdCnt2

;battery.c: 290: BatteryLvdStatus = 1;
	bsf	_BatteryLvdStatus/(0+8),_BatteryLvdStatus& (0+7)
	return
__end_of_Battery_LvdDetect:	
	opt stack 0

	psect	text39
__ptext39:	
;; *************** function _Battery_Full_Judg *****************
;; Defined at:
;;		line 234 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 900/0
;;		On exit  : 900/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_Full_Judg

_Battery_Full_Judg:	
	opt stack 4

;battery.c: 236: if(BatteryFullJudgTick < 78)

;incstack = 0
; Regs used in _Battery_Full_Judg: [wreg+status,2+status,0]
	movlw	78
	subwf	_BatteryFullJudgTick,w
	btfss	3,0
	return

;battery.c: 239: }
;battery.c: 240: BatteryFullJudgTick = 0;
	clrf	_BatteryFullJudgTick

;battery.c: 242: if(( (*((unsigned int *)0x06)) & (0x80) ) && ChargeStatus == 1)
	btfsc	6,7
	btfss	_ChargeStatus/(0+8),_ChargeStatus& (0+7)
	goto	l6918
	movlw	11

;battery.c: 243: {
;battery.c: 244: BatteryFullCnt1++;
	incf	_BatteryFullCnt1,f

;battery.c: 245: BatteryFullCnt2 = 0;
	clrf	_BatteryFullCnt2

;battery.c: 246: if( BatteryFullCnt1 > 10 )
	subwf	_BatteryFullCnt1,w
	btfss	3,0
	return

;battery.c: 247: {
;battery.c: 248: BatteryFullCnt1 = 0;
	clrf	_BatteryFullCnt1

;battery.c: 250: BatteryFullFlag = 1;
	bsf	_BatteryFullFlag/(0+8),_BatteryFullFlag& (0+7)
	return
l6918:	
	movlw	11

;battery.c: 253: else
;battery.c: 254: {
;battery.c: 255: BatteryFullCnt1 = 0;
	clrf	_BatteryFullCnt1

;battery.c: 256: BatteryFullCnt2++;
	incf	_BatteryFullCnt2,f

;battery.c: 257: if( BatteryFullCnt2 > 10 )
	subwf	_BatteryFullCnt2,w
	btfss	3,0
	return

;battery.c: 258: {
;battery.c: 259: BatteryFullCnt2 = 0;
	clrf	_BatteryFullCnt2

;battery.c: 261: BatteryFullFlag = 0;
	bcf	_BatteryFullFlag/(0+8),_BatteryFullFlag& (0+7)
	return
__end_of_Battery_Full_Judg:	
	opt stack 0

	psect	text40
__ptext40:	
;; *************** function _Battery_Init *****************
;; Defined at:
;;		line 299 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Battery_Init_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_Init

_Battery_Init:	
	opt stack 2

;battery.c: 301: BatteryFullFlag = 0;

;incstack = 0
; Regs used in _Battery_Init: [wreg+status,2+status,0+pclath+cstack]
	bcf	_BatteryFullFlag/(0+8),_BatteryFullFlag& (0+7)

;battery.c: 302: Battery_Init_Data();
	ljmp	l7018
__end_of_Battery_Init:	
	opt stack 0

	psect	text41
__ptext41:	
;; *************** function _Battery_Init_Data *****************
;; Defined at:
;;		line 307 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;;  BatteryLowCn    1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;;		_Get_Lvdf
;;		_Lvd_Init
;; This function is called by:
;;		_Battery_Init
;;		_Sleep_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Battery_Init_Data

_Battery_Init_Data:	
	opt stack 2
l7018:	
;incstack = 0
; Regs used in _Battery_Init_Data: [wreg+status,2+status,0+pclath+cstack]


;battery.c: 310: unsigned char BatteryLowCnt = 0;
	clrf	Battery_Init_Data@BatteryLowCnt

;battery.c: 312: Lvd_Init();
	fcall	_Lvd_Init

;battery.c: 314: for(i = 0; i < 2; i++)
	clrf	Battery_Init_Data@i
l7028:	

;battery.c: 315: {
;battery.c: 316: DelayMs(20);
	movlw	20
	movwf	DelayMs@t
	clrf	DelayMs@t+1
	fcall	_DelayMs

;battery.c: 317: if(Get_Lvdf())
	fcall	_Get_Lvdf
	btfsc	3,0

;battery.c: 318: {
;battery.c: 319: BatteryLowCnt++;
	incf	Battery_Init_Data@BatteryLowCnt,f
	movlw	2
	incf	Battery_Init_Data@i,f
	subwf	Battery_Init_Data@i,w
	btfss	3,0
	goto	l7028

;battery.c: 320: }
;battery.c: 321: }
;battery.c: 323: if(BatteryLowCnt)
	movf	Battery_Init_Data@BatteryLowCnt,w
	btfsc	3,2
	goto	l7038

;battery.c: 324: {
;battery.c: 325: BatteryStatus = 0;
	clrf	_BatteryStatus

;battery.c: 326: }
	return
l7038:	

;battery.c: 327: else
;battery.c: 328: {
;battery.c: 329: BatteryStatus = 2;
	movlw	2
	movwf	_BatteryStatus
	return
__end_of_Battery_Init_Data:	
	opt stack 0

	psect	text42
__ptext42:	
;; *************** function _Lvd_Init *****************
;; Defined at:
;;		line 32 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Init_Data
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Lvd_Init

_Lvd_Init:	
	opt stack 3

;battery.c: 34: LVDCR &= ~0x1f;

;incstack = 0
; Regs used in _Lvd_Init: [wreg+status,2+status,0]
	movlw	224
	andwf	8,f	;volatile

;battery.c: 35: LVDCR |= 0x0A << 1;
	movlw	20
	iorwf	8,f	;volatile

;battery.c: 36: LVDCR |= 0x01;
	bsf	8,0	;volatile
	return
__end_of_Lvd_Init:	
	opt stack 0

	psect	text43
__ptext43:	
;; *************** function _Get_Lvdf *****************
;; Defined at:
;;		line 42 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_LvdDetect
;;		_Battery_Init_Data
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Get_Lvdf

_Get_Lvdf:	
	opt stack 3

;battery.c: 44: unsigned char result = 0;

;incstack = 0
; Regs used in _Get_Lvdf: [wreg+status,2+status,0]
	clrf	Get_Lvdf@result

;battery.c: 45: if(LVDF)
	btfss	8,7	;volatile
	goto	l6798

;battery.c: 46: {
;battery.c: 47: result = 1;
	clrf	Get_Lvdf@result
	incf	Get_Lvdf@result,f
l6798:	

;battery.c: 48: }
;battery.c: 50: return (bit)result;
	rrf	Get_Lvdf@result,w
	return
__end_of_Get_Lvdf:	
	opt stack 0

	psect	text44
	file	"driver.c"
__ptext44:	
;; *************** function _DelayMs *****************
;; Defined at:
;;		line 78 in file "driver.c"
;; Parameters:    Size  Location     Type
;;  t               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayUs2x
;; This function is called by:
;;		_Battery_Init_Data
;;		_main
;;		_Sleep_Manage
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _DelayMs

_DelayMs:	
	opt stack 3
l6816:	
;driver.c: 81: while(t--)

;incstack = 0
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]

	movlw	1
	subwf	DelayMs@t,f
	movlw	0
	btfss	3,0
	decf	DelayMs@t+1,f
	subwf	DelayMs@t+1,f
	incfsz	DelayMs@t,w
	goto	l6814
	incf	DelayMs@t+1,w
	btfsc	3,2
	return
l6814:	

;driver.c: 82: {
;driver.c: 84: DelayUs2x(120);
	movlw	120
	fcall	_DelayUs2x

;driver.c: 85: DelayUs2x(125);
	movlw	125
	fcall	_DelayUs2x
	goto	l6816
__end_of_DelayMs:	
	opt stack 0

	psect	text45
__ptext45:	
;; *************** function _DelayUs2x *****************
;; Defined at:
;;		line 69 in file "driver.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _DelayUs2x

_DelayUs2x:	
	opt stack 3

;incstack = 0
; Regs used in _DelayUs2x: [wreg]
;DelayUs2x@t stored from wreg
	movwf	DelayUs2x@t
l6786:	
;driver.c: 71: while(--t);

	decfsz	DelayUs2x@t,f
	goto	l6786
	return
__end_of_DelayUs2x:	
	opt stack 0

	psect	text46
	file	"interrupt.c"
__ptext46:	
;; *************** function _Timer2_Isr *****************
;; Defined at:
;;		line 7 in file "interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_BatteryTick_Ctrl
;;		_ChargeTick_Ctrl
;;		_SleepTick_Ctlr
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _Timer2_Isr

_Timer2_Isr:	
	opt stack 2

;interrupt.c: 9: static unsigned char timer_1ms = 0;
;interrupt.c: 11: if(PBIF)
	btfsc	14,4	;volatile

;interrupt.c: 12: {
;interrupt.c: 13: PBIF = 0;
	bcf	14,4	;volatile

;interrupt.c: 14: }
;interrupt.c: 16: if(T2IF)
	btfss	75,5	;volatile
	goto	i1l2906

;interrupt.c: 17: {
;interrupt.c: 18: T2IF = 0;
	bcf	75,5	;volatile

;interrupt.c: 19: T2EN = 0;
	bcf	80,7	;volatile

;interrupt.c: 20: T2EN = 1;
	bsf	80,7	;volatile
	movlw	16

;interrupt.c: 21: timer_1ms++;
	incf	Timer2_Isr@timer_1ms,f

;interrupt.c: 22: if(timer_1ms >= 16)
	subwf	Timer2_Isr@timer_1ms,w
	btfss	3,0
	goto	i1l2906

;interrupt.c: 23: {
;interrupt.c: 24: timer_1ms=0;
	clrf	Timer2_Isr@timer_1ms

;interrupt.c: 25: KeyTick++;
	incf	_KeyTick,f

;interrupt.c: 27: BatteryTick_Ctrl();
	fcall	_BatteryTick_Ctrl

;interrupt.c: 28: ChargeTick_Ctrl();
	fcall	_ChargeTick_Ctrl

;interrupt.c: 29: SleepTick_Ctlr();
	fcall	_SleepTick_Ctlr
i1l2906:	
	bcf	3,5	;RP0=0, select bank0
	movf	??_Timer2_Isr+1,w
	movwf	10
	btfsc	??_Timer2_Isr^0,1
	goto	REV_BANK1
	swapf	??_Timer2_Isr^0,w
	movwf	3
	swapf	62,f
	swapf	62,w
	goto	EXIT_BANK_REV
REV_BANK1:
	swapf	??_Timer2_Isr^0,w
	movwf	3
	bcf	3,5
	swapf	62,f
	swapf	62,w
	bsf	3,5
EXIT_BANK_REV:
	retfie
__end_of_Timer2_Isr:	
	opt stack 0

	psect	intentry
__pintentry:	
;incstack = 0
; Regs used in _Timer2_Isr: [wreg+status,2+status,0+pclath+cstack]

	opt stack 2
interrupt_function:	
	opt stack 2
saved_w	set	btemp
	btfsc	3,5
	goto SAVE_BANK1
	movwf	btemp
	goto EXIT_BANK_SAVE
SAVE_BANK1:
	bcf	3,5
	movwf	btemp
	bsf	3,5
EXIT_BANK_SAVE:
	swapf	3,w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_Timer2_Isr
	movf	10,w
	movwf	??_Timer2_Isr+1
	ljmp	_Timer2_Isr

	psect	text47
	file	"sleep.c"
__ptext47:	
;; *************** function _SleepTick_Ctlr *****************
;; Defined at:
;;		line 12 in file "sleep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer2_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _SleepTick_Ctlr

_SleepTick_Ctlr:	
	opt stack 2

;sleep.c: 14: if( PowerStatus == 0 && ChargeStatus == 0 )

;incstack = 0
; Regs used in _SleepTick_Ctlr: [wreg+status,2+status,0]
	btfss	_PowerStatus/(0+8),_PowerStatus& (0+7)
	btfsc	_ChargeStatus/(0+8),_ChargeStatus& (0+7)
	goto	i1l7274

;sleep.c: 15: {
;sleep.c: 17: if( PowerOffPrepareToSleepTick < 10000 )
	movlw	39
	bsf	3,5	;RP0=1, select bank1
	subwf	(_PowerOffPrepareToSleepTick+1)^(0+128),w
	movlw	16
	btfsc	3,2
	subwf	_PowerOffPrepareToSleepTick^(0+128),w
	btfsc	3,0
	goto	i1l7270

;sleep.c: 18: {
;sleep.c: 19: PowerOffPrepareToSleepTick++;
	incf	_PowerOffPrepareToSleepTick^(0+128),f
	btfsc	3,2
	incf	(_PowerOffPrepareToSleepTick+1)^(0+128),f

;sleep.c: 20: }
	return
i1l7270:	

;sleep.c: 21: else
;sleep.c: 22: {
;sleep.c: 23: PowerOffPrepareToSleepTick = 0;
	clrf	_PowerOffPrepareToSleepTick^(0+128)
	clrf	(_PowerOffPrepareToSleepTick+1)^(0+128)

;sleep.c: 24: SleepSig = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	_SleepSig/(0+8),_SleepSig& (0+7)
	return
i1l7274:	

;sleep.c: 27: else
;sleep.c: 28: {
;sleep.c: 29: PowerOffPrepareToSleepTick = 0;
	bsf	3,5	;RP0=1, select bank1
	clrf	_PowerOffPrepareToSleepTick^(0+128)
	clrf	(_PowerOffPrepareToSleepTick+1)^(0+128)

;sleep.c: 30: SleepSig = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	_SleepSig/(0+8),_SleepSig& (0+7)
	return
__end_of_SleepTick_Ctlr:	
	opt stack 0

	psect	text48
	file	"charge.c"
__ptext48:	
;; *************** function _ChargeTick_Ctrl *****************
;; Defined at:
;;		line 25 in file "charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer2_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ChargeTick_Ctrl

_ChargeTick_Ctrl:	
	opt stack 2

;charge.c: 27: if( ChargeDetectTick < 20 )

;incstack = 0
; Regs used in _ChargeTick_Ctrl: [wreg+status,2+status,0]
	movlw	20
	subwf	_ChargeDetectTick,w
	btfss	3,0

;charge.c: 28: {
;charge.c: 29: ChargeDetectTick++;
	incf	_ChargeDetectTick,f
	return
__end_of_ChargeTick_Ctrl:	
	opt stack 0

	psect	text49
	file	"battery.c"
__ptext49:	
;; *************** function _BatteryTick_Ctrl *****************
;; Defined at:
;;		line 115 in file "battery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0  BANK1h  BANK1l
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer2_Isr
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _BatteryTick_Ctrl

_BatteryTick_Ctrl:	
	opt stack 2

;battery.c: 134: }
;battery.c: 135: }
;battery.c: 136: }
;battery.c: 138: if((BatteryLvdTick < 28) && (BatteryStatus != 3))

;incstack = 0
; Regs used in _BatteryTick_Ctrl: [wreg+status,2+status,0]
	movlw	28
	subwf	_BatteryLvdTick,w
	btfsc	3,0
	goto	i1l7196
	movlw	3
	xorwf	_BatteryStatus,w
	btfsc	3,2
	goto	i1l7196

;battery.c: 139: {
;battery.c: 140: BatteryLvdTick++;
	incf	_BatteryLvdTick,f
i1l7196:	

;battery.c: 141: }
;battery.c: 143: if(BatteryStatusTick < 96)
	movlw	96
	subwf	_BatteryStatusTick,w
	btfss	3,0

;battery.c: 144: {
;battery.c: 145: BatteryStatusTick++;
	incf	_BatteryStatusTick,f

;battery.c: 146: }
;battery.c: 148: if(BatteryFullJudgTick < 78)
	movlw	78
	subwf	_BatteryFullJudgTick,w
	btfss	3,0

;battery.c: 149: {
;battery.c: 150: BatteryFullJudgTick++;
	incf	_BatteryFullJudgTick,f
	return
__end_of_BatteryTick_Ctrl:	
	opt stack 0
btemp	set	62	;btemp
wtemp0	set	62

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         51
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46      8      43
;!    BANK1h           32      0       0
;!    BANK1l           46      0      18
;!
;!Pointer List with Targets:
;!
;!    None.
;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer2_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _Sleep_Manage->_Battery_Init_Data
;!    _LED_Manage->_LED_Status
;!    _Key_Detect->_Read_Key
;!    _Battery_StatusJudg->_SetLVD_Level
;!    _Battery_LvdDetect->_Get_Lvdf
;!    _Battery_Init->_Battery_Init_Data
;!    _Battery_Init_Data->_DelayMs
;!    _DelayMs->_DelayUs2x
;!
;!Critical Paths under _Timer2_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1h
;!
;!    None.
;!
;!Critical Paths under _Timer2_Isr in BANK1h
;!
;!    None.
;!
;!Critical Paths under _main in BANK1l
;!
;!    None.
;!
;!Critical Paths under _Timer2_Isr in BANK1l
;!
;!    None.
;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    1205
;!                       _Battery_Init
;!                     _Battery_Manage
;!                      _Charge_Config
;!                      _Charge_Manage
;!                            _DelayMs
;!                         _Eve_Manage
;!                         _LED_Manage
;!                         _Power_Init
;!                       _Power_Manage
;!                           _RGB_Init
;!                       _Sleep_Manage
;!                    _Tick_Timer_Init
;!                             _inital
;!                           _key_Init
;!                           _led_Init
;!                         _ramInitial
;!                         _sysinitial
;! ---------------------------------------------------------------------------------
;! (1) _sysinitial                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ramInitial                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _led_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _key_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _inital                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Tick_Timer_Init                                      0     0      0       0
;!                     _TickTimer_Open
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Manage                                         0     0      0     441
;!                  _Battery_Init_Data
;!                            _DelayMs
;!                         _Sleep_Init
;!                         _Sleep_Jump
;!                       _Sleep_Wakeup
;! ---------------------------------------------------------------------------------
;! (2) _Sleep_Wakeup                                         0     0      0       0
;!       _ChargeDetect_Interrupt_Close
;!                _Key_Interrupt_Close
;!                     _TickTimer_Open
;! ---------------------------------------------------------------------------------
;! (2) _TickTimer_Open                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Key_Interrupt_Close                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ChargeDetect_Interrupt_Close                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Sleep_Jump                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Sleep_Init                                           0     0      0       0
;!        _ChargeDetect_Interrupt_Open
;!                 _Key_Interrupt_Open
;!                    _TickTimer_Close
;! ---------------------------------------------------------------------------------
;! (3) _TickTimer_Close                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Key_Interrupt_Open                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ChargeDetect_Interrupt_Open                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RGB_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Power_Manage                                         0     0      0       0
;!                         _Power_Turn
;! ---------------------------------------------------------------------------------
;! (2) _Power_Turn                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Power_Init                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Manage                                           0     0      0     120
;!                          _LED_Color
;!                            _LED_Dim
;!                        _LED_PWM_Set
;!                         _LED_Status
;! ---------------------------------------------------------------------------------
;! (2) _LED_Status                                           2     2      0      96
;!                                              2 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _LED_PWM_Set                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LED_Dim                                              0     0      0       0
;!                  _LED_DimIndex_Ctrl
;! ---------------------------------------------------------------------------------
;! (3) _LED_DimIndex_Ctrl                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LED_Color                                            1     1      0      24
;!                                              2 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Eve_Manage                                           0     0      0     157
;!                         _Eve_Detect
;!                         _Key_Detect
;! ---------------------------------------------------------------------------------
;! (2) _Key_Detect                                           0     0      0     157
;!                           _Read_Key
;! ---------------------------------------------------------------------------------
;! (3) _Read_Key                                             6     4      2     157
;!                                              2 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _Eve_Detect                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Charge_Manage                                        0     0      0       0
;!                      _Charge_Detect
;! ---------------------------------------------------------------------------------
;! (2) _Charge_Detect                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Charge_Config                                        0     0      0       0
;!                        _Charge_Init
;! ---------------------------------------------------------------------------------
;! (2) _Charge_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Battery_Manage                                       0     0      0      46
;!                  _Battery_Full_Judg
;!                  _Battery_LvdDetect
;!                 _Battery_StatusJudg
;! ---------------------------------------------------------------------------------
;! (2) _Battery_StatusJudg                                   0     0      0      22
;!                       _SetLVD_Level
;! ---------------------------------------------------------------------------------
;! (3) _SetLVD_Level                                         1     1      0      22
;!                                              2 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Battery_LvdDetect                                    0     0      0      24
;!                           _Get_Lvdf
;! ---------------------------------------------------------------------------------
;! (2) _Battery_Full_Judg                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Battery_Init                                         0     0      0     268
;!                  _Battery_Init_Data
;! ---------------------------------------------------------------------------------
;! (2) _Battery_Init_Data                                    2     2      0     268
;!                                              5 BANK0      2     2      0
;!                            _DelayMs
;!                           _Get_Lvdf
;!                           _Lvd_Init
;! ---------------------------------------------------------------------------------
;! (3) _Lvd_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Get_Lvdf                                             1     1      0      24
;!                                              2 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _DelayMs                                              2     0      2     173
;!                                              3 BANK0      2     0      2
;!                          _DelayUs2x
;! ---------------------------------------------------------------------------------
;! (3) _DelayUs2x                                            1     1      0      22
;!                                              2 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer2_Isr                                           2     2      0       0
;!                                              0 BANK0      2     2      0
;!                   _BatteryTick_Ctrl
;!                    _ChargeTick_Ctrl
;!                     _SleepTick_Ctlr
;! ---------------------------------------------------------------------------------
;! (6) _SleepTick_Ctlr                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _ChargeTick_Ctrl                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _BatteryTick_Ctrl                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Battery_Init
;!     _Battery_Init_Data
;!       _DelayMs
;!         _DelayUs2x
;!       _Get_Lvdf
;!       _Lvd_Init
;!   _Battery_Manage
;!     _Battery_Full_Judg
;!     _Battery_LvdDetect
;!       _Get_Lvdf
;!     _Battery_StatusJudg
;!       _SetLVD_Level
;!   _Charge_Config
;!     _Charge_Init
;!   _Charge_Manage
;!     _Charge_Detect
;!   _DelayMs
;!     _DelayUs2x
;!   _Eve_Manage
;!     _Eve_Detect
;!     _Key_Detect
;!       _Read_Key
;!   _LED_Manage
;!     _LED_Color
;!     _LED_Dim
;!       _LED_DimIndex_Ctrl
;!     _LED_PWM_Set
;!     _LED_Status
;!   _Power_Init
;!   _Power_Manage
;!     _Power_Turn
;!   _RGB_Init
;!   _Sleep_Manage
;!     _Battery_Init_Data
;!       _DelayMs
;!         _DelayUs2x
;!       _Get_Lvdf
;!       _Lvd_Init
;!     _DelayMs
;!       _DelayUs2x
;!     _Sleep_Init
;!       _ChargeDetect_Interrupt_Open
;!       _Key_Interrupt_Open
;!       _TickTimer_Close
;!     _Sleep_Jump
;!     _Sleep_Wakeup
;!       _ChargeDetect_Interrupt_Close
;!       _Key_Interrupt_Close
;!       _TickTimer_Open
;!   _Tick_Timer_Init
;!     _TickTimer_Open
;!   _inital
;!   _key_Init
;!   _led_Init
;!   _ramInitial
;!   _sysinitial
;!
;! _Timer2_Isr (ROOT)
;!   _BatteryTick_Ctrl
;!   _ChargeTick_Ctrl
;!   _SleepTick_Ctlr
;!
;! Address spaces:
;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               2E      8      2B       3       93.5%
;!ABS                  0      0      3D       4        0.0%
;!BITBANK0            2E      0       2       5        4.3%
;!BITBANK1h           20      0       0       6        0.0%
;!BITBANK1l           2E      0       0       7        0.0%
;!BANK1h              20      0       0       8        0.0%
;!BANK1l              2E      0      12       9       39.1%
;!DATA                 0      0      3D      10        0.0%
