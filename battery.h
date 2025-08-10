#ifndef __BATTERY__
#define __BATTERY__

/******************电池电压******************/
#define BATTERY_DETECT_LEVEL_2p9		0	//0x09
#define BATTERY_DETECT_LEVEL_3p0		1	//0x0A
#define BATTERT_DETECT_LEVEL_3p2		2	//0x0b
#define BATTERT_DETECT_LEVEL_3p3		3	//0x0c
#define BATTERT_DETECT_LEVEL_3p6		4	//0x0d
/******************电池电压******************/

#define BATTERY_LVD_LOW				0			//LVD检测低于电压设置阈值
#define BATTERY_LVD_HIGH			1			//LVD检测高于电压设置阈值

/******************电池状态******************/
#define BATTERY_STATUS_DIE			0			//电池状态 没电
#define BATTERY_STATUS_LOW			1			//电池状态 电量低
#define BATTERY_STATUS_NOR			2			//电池状态 电量正常
#define BATTERY_STATUS_FULL			3			//电池状态 满电
/******************电池状态******************/

/****************时间*****************/
#define BATTERY_STATUS_CYCLE		96			//电池状态检测时间
#define BATTERY_LVD_CYCLE			28			//LVD检测时间
#define BATTERY_FULL_JUDG_CYCLE		78			//充电满电判断时间
/****************时间*****************/

extern unsigned char BatteryStatus;

void Battery_Manage(void);
void Battery_Init_Data(void);
void Battery_Init(void);
void Battery_LvdDetect(void);
void Battery_Full_Judg(void);
void Battery_StatusJudg(void);
void BatteryTick_Ctrl(void);
void SetLVD_Level(unsigned char level);
bit Get_Lvdf(void);
void Lvd_Init(void);

#endif