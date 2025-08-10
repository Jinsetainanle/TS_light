#include "holychip_define.h"
#include "battery.h"
#include "charge.h"
#include "power.h"
#include "driver.h"

unsigned char BatteryStatus = 0;					//电池状态，0、无法开机，1、低电闪灯，2、正常电量，3、满电
unsigned char BatteryStatusTick = 0;				//电池状态计时					
unsigned char BatteryStatusCnt1 = 0;				//电池状态 次数		
unsigned char BatteryStatusCnt2 = 0;				//电池状态 次数		
unsigned char BatteryStatusCnt3 = 0;				//电池状态 次数

bit BatteryLvdStatus = 0;							//LVD 状态
unsigned char BatteryLvdTick = 0;					//LVD 计数
unsigned char BatteryLvdCnt1 = 0;					//LVD 低于阈值电压检测次数
unsigned char BatteryLvdCnt2 = 0;					//LVD 没低于阈值电压检测次数
unsigned char BatteryCurrCheckLevel = 0;			//LVD当前检测的电压 


unsigned char BatteryDieTick = 0;					//电池没电 关闭计数
unsigned char BatteryDieCntSec = 0;					//准备关机秒数
bit BatteryDieCntFinishFlag = 0;					//低电计数完成，准备关机标志

unsigned char BatteryFullJudgTick = 0;				//充电满电 检测计数
unsigned char BatteryFullCnt1 = 0;					//满电状态 次数
unsigned char BatteryFullCnt2 = 0;					//满电状态 次数
bit BatteryFullFlag = 0;							//电池满的标志，通过读取电池管理芯片引脚得，而不是读取adc得 

/*
**LVD初始化
*/
void Lvd_Init(void)
{
	LVDCR &= ~0x1f;			//后5位清零
	LVDCR |= 0x0A << 1;		//VDD 电压检测档位 3.0V
	LVDCR |= 0x01;			//LVD 使能位 1:开启	
}

/*
**低于电压检测量就返回 高
*/
bit Get_Lvdf(void)
{
	unsigned char result = 0;
	if(LVDF)
	{
		result = 1;
	}
	
	return (bit)result;
}

/*
**设置多个电压检测量
0000：1.8V
0001：2.0V
0010：2.1V
0011：2.2V
0100：2.4V
0101：2.5V
0110：2.6V
0111：2.7V
1000：2.8V
1001：2.9V
1010：3.0V
1011：3.2V
1100：3.3V
1101：3.6V
1110：4.0V
1111：4.2V
*/
void SetLVD_Level(unsigned char level)
{
	LVDCR &= ~0x1f;			//后5位清零,清零后赋值设置电压检测值
		
	switch(level)
	{
		case BATTERY_DETECT_LEVEL_2p9:	//2.9V	
			LVDCR |= 0x09 << 1;	
			break;
		
		case BATTERY_DETECT_LEVEL_3p0:	//3.0V
			LVDCR |= 0x0A << 1;
			break;
		
		default:
			break;
	}
	
	LVDCR |= 0x01;				//使能	
}

void Battery_Manage(void)
{
	
	Battery_Full_Judg();

	if( !BatteryFullFlag )										//电池是满的话，就不用判断电压了
	{
		Battery_LvdDetect();
	}
	else
	{
		BatteryLvdTick = 0;
		BatteryLvdCnt1 = 0;
		BatteryLvdCnt2 = 0;
	}
	
	Battery_StatusJudg();
}

/*
**电池检测计数
*/
void BatteryTick_Ctrl(void)
{
	if(BatteryStatus == BATTERY_STATUS_LOW)		//电池低电量
	{
		if(BatteryDieTick < 1000)				//1ms *1000 = 1s
		{
			BatteryDieTick++;
		}
		else
		{
			BatteryDieTick = 0;
			if(BatteryDieCntSec < 105)			//电池低电量 持续1s 进入电池没电关机判断，判断持续2min则电池没电关机，
			{
				BatteryDieCntSec++;
			}
			else
			{
				BatteryDieCntSec = 0;
				BatteryDieCntFinishFlag = 1;	//关机
			}
		}
	}
	
	if((BatteryLvdTick < BATTERY_LVD_CYCLE) && (BatteryStatus != BATTERY_STATUS_FULL))		//LVD 检测计数小于规定时间，且电池不是满电，就进行LVD检测计数
	{
		BatteryLvdTick++;
	}
	
	if(BatteryStatusTick < BATTERY_STATUS_CYCLE)			//电池状态检测计数
	{
		BatteryStatusTick++;
	}
	
	if(BatteryFullJudgTick < BATTERY_FULL_JUDG_CYCLE)			//电池满电检测计数
	{
		BatteryFullJudgTick++;
	}
	
}



/*
**电池状态判断
*/
void Battery_StatusJudg(void)
{
	if(PowerStatus = POWER_STATUS_OFF)				//关机状态
	{
		BatteryDieTick = 0;
		BatteryDieCntSec = 0;
		BatteryDieCntFinishFlag = 0;
	}
	
	if(BatteryStatusTick < BATTERY_STATUS_CYCLE)
	{
		return;										//没到时间
	}
	BatteryStatusTick = 0;
	
	if(BatteryFullFlag)								//电池满电
	{
		BatteryStatusCnt1++;						//状态计次
		BatteryStatusCnt2 = 0;
		BatteryStatusCnt3 = 0;
		if(BatteryStatusCnt1 > 10)					//10次	
		{
			BatteryStatusCnt1 = 0;
			BatteryStatus = BATTERY_STATUS_FULL;	//电池满状态
		}
		BatteryDieTick = 0;							//将电池没电关机标志清零
		BatteryDieCntSec = 0;
		BatteryDieCntFinishFlag = 0;
	}
	else															//电池不是满状态
	{
		if(BatteryCurrCheckLevel != BATTERY_DETECT_LEVEL_3p0)		//LVD检测是否设置3.0V为阈值
		{
			BatteryCurrCheckLevel = BATTERY_DETECT_LEVEL_3p0;
			SetLVD_Level(BATTERY_DETECT_LEVEL_3p0);					//将检测阈值设置为3.0V
		}
		
		if( BatteryLvdStatus == BATTERY_LVD_LOW )					//LVD检测状态，是否是低于电压检测阈值
		{
			BatteryStatusCnt1 = 0;
			BatteryStatusCnt2++;									//计次
			BatteryStatusCnt3 = 0;
			if(BatteryStatusCnt2 > 10)
			{
				BatteryStatusCnt2 = 0;
				BatteryStatus = BATTERY_STATUS_LOW;					//电池低电量状态
			}
			
			if(BatteryDieCntFinishFlag)								//低电量状态，持续2min触发关机
			{
				BatteryStatus = BATTERY_STATUS_DIE;					//电池为没电状态
			}			
		}
		else														//电池不是低电量，也不是满电量状态
		{
			BatteryStatusCnt1 = 0;
			BatteryStatusCnt2 = 0;
			BatteryStatusCnt3++;
			if(BatteryStatusCnt3 > 10)
			{
				BatteryStatusCnt3 = 0;
				BatteryStatus = BATTERY_STATUS_NOR;					//电池正常电量状态
				
				BatteryDieTick = 0;									//将电池没电关机标志位清0
				BatteryDieCntSec = 0;
				BatteryDieCntFinishFlag = 0;
			}						
		}
	}
}

/*
**电池充电满检测判断
*/
void Battery_Full_Judg(void)
{
	if(BatteryFullJudgTick < BATTERY_FULL_JUDG_CYCLE)
	{
		return;
	}
	BatteryFullJudgTick = 0;
	
	if(CHARGE_FULL_IO && ChargeStatus == CHARGE_STATUS_CHARGING)
	{
		BatteryFullCnt1++;
		BatteryFullCnt2 = 0;
		if( BatteryFullCnt1 > 10 )
		{
			BatteryFullCnt1 = 0;
			
			BatteryFullFlag = 1;
		}
	}
	else
	{
		BatteryFullCnt1 = 0;
		BatteryFullCnt2++;
		if( BatteryFullCnt2 > 10 )
		{
			BatteryFullCnt2 = 0;
			
			BatteryFullFlag = 0;
		}
	}
}

/*
**电池LVD检测
*/
void Battery_LvdDetect(void)
{


	if(Get_Lvdf())				//检测到电压低于设置电压阈值
	{
		BatteryLvdCnt1++;
		BatteryLvdCnt2 = 0;
		if(BatteryLvdCnt1 > 10)
		{
			BatteryLvdCnt1 = 0;
			BatteryLvdStatus = BATTERY_LVD_LOW;
		}
	}
	else
	{
		BatteryLvdCnt1 = 0;
		BatteryLvdCnt2++;
		if(BatteryLvdCnt2 > 10)
		{
			BatteryLvdCnt2 = 0;
			BatteryLvdStatus = BATTERY_LVD_HIGH;
		}
		
	}
}

/*
**电池初始化函数
*/
void Battery_Init(void)
{
	BatteryFullFlag = 0;
	Battery_Init_Data();
}
/*
**电池初始化函数，进行LVD检测电池电量没电，或者其他，其他状态时先设置为正常状态之后再进行判断
*/
void Battery_Init_Data(void)
{
	unsigned char i = 0;
	unsigned char BatteryLowCnt = 0;					//检测时，低于关机电压的次数
	
	Lvd_Init();											//LVD检测初始化
	
	for(i = 0; i < 2; i++)
	{
		DelayMs(20);
		if(Get_Lvdf())									//LVD检测，根据结果判断
		{
			BatteryLowCnt++;							//低于关机电压的次数+
		}
	}
	
	if(BatteryLowCnt)
	{
		BatteryStatus = BATTERY_STATUS_DIE;
	}
	else
	{
		BatteryStatus = BATTERY_STATUS_NOR; 			//开机、唤醒的时候，先检测一遍电压，如果不是关机电压，就先认为是正常电压，后期在慢慢校准

	}
}