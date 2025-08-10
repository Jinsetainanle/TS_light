#ifndef __BATTERY__
#define __BATTERY__

/******************��ص�ѹ******************/
#define BATTERY_DETECT_LEVEL_2p9		0	//0x09
#define BATTERY_DETECT_LEVEL_3p0		1	//0x0A
#define BATTERT_DETECT_LEVEL_3p2		2	//0x0b
#define BATTERT_DETECT_LEVEL_3p3		3	//0x0c
#define BATTERT_DETECT_LEVEL_3p6		4	//0x0d
/******************��ص�ѹ******************/

#define BATTERY_LVD_LOW				0			//LVD�����ڵ�ѹ������ֵ
#define BATTERY_LVD_HIGH			1			//LVD�����ڵ�ѹ������ֵ

/******************���״̬******************/
#define BATTERY_STATUS_DIE			0			//���״̬ û��
#define BATTERY_STATUS_LOW			1			//���״̬ ������
#define BATTERY_STATUS_NOR			2			//���״̬ ��������
#define BATTERY_STATUS_FULL			3			//���״̬ ����
/******************���״̬******************/

/****************ʱ��*****************/
#define BATTERY_STATUS_CYCLE		96			//���״̬���ʱ��
#define BATTERY_LVD_CYCLE			28			//LVD���ʱ��
#define BATTERY_FULL_JUDG_CYCLE		78			//��������ж�ʱ��
/****************ʱ��*****************/

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