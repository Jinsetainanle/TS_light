#include "holychip_define.h"
#include "battery.h"
#include "charge.h"
#include "power.h"
#include "driver.h"

unsigned char BatteryStatus = 0;					//���״̬��0���޷�������1���͵����ƣ�2������������3������
unsigned char BatteryStatusTick = 0;				//���״̬��ʱ					
unsigned char BatteryStatusCnt1 = 0;				//���״̬ ����		
unsigned char BatteryStatusCnt2 = 0;				//���״̬ ����		
unsigned char BatteryStatusCnt3 = 0;				//���״̬ ����

bit BatteryLvdStatus = 0;							//LVD ״̬
unsigned char BatteryLvdTick = 0;					//LVD ����
unsigned char BatteryLvdCnt1 = 0;					//LVD ������ֵ��ѹ������
unsigned char BatteryLvdCnt2 = 0;					//LVD û������ֵ��ѹ������
unsigned char BatteryCurrCheckLevel = 0;			//LVD��ǰ���ĵ�ѹ 


unsigned char BatteryDieTick = 0;					//���û�� �رռ���
unsigned char BatteryDieCntSec = 0;					//׼���ػ�����
bit BatteryDieCntFinishFlag = 0;					//�͵������ɣ�׼���ػ���־

unsigned char BatteryFullJudgTick = 0;				//������� ������
unsigned char BatteryFullCnt1 = 0;					//����״̬ ����
unsigned char BatteryFullCnt2 = 0;					//����״̬ ����
bit BatteryFullFlag = 0;							//������ı�־��ͨ����ȡ��ع���оƬ���ŵã������Ƕ�ȡadc�� 

/*
**LVD��ʼ��
*/
void Lvd_Init(void)
{
	LVDCR &= ~0x1f;			//��5λ����
	LVDCR |= 0x0A << 1;		//VDD ��ѹ��⵵λ 3.0V
	LVDCR |= 0x01;			//LVD ʹ��λ 1:����	
}

/*
**���ڵ�ѹ������ͷ��� ��
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
**���ö����ѹ�����
0000��1.8V
0001��2.0V
0010��2.1V
0011��2.2V
0100��2.4V
0101��2.5V
0110��2.6V
0111��2.7V
1000��2.8V
1001��2.9V
1010��3.0V
1011��3.2V
1100��3.3V
1101��3.6V
1110��4.0V
1111��4.2V
*/
void SetLVD_Level(unsigned char level)
{
	LVDCR &= ~0x1f;			//��5λ����,�����ֵ���õ�ѹ���ֵ
		
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
	
	LVDCR |= 0x01;				//ʹ��	
}

void Battery_Manage(void)
{
	
	Battery_Full_Judg();

	if( !BatteryFullFlag )										//��������Ļ����Ͳ����жϵ�ѹ��
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
**��ؼ�����
*/
void BatteryTick_Ctrl(void)
{
	if(BatteryStatus == BATTERY_STATUS_LOW)		//��ص͵���
	{
		if(BatteryDieTick < 1000)				//1ms *1000 = 1s
		{
			BatteryDieTick++;
		}
		else
		{
			BatteryDieTick = 0;
			if(BatteryDieCntSec < 105)			//��ص͵��� ����1s ������û��ػ��жϣ��жϳ���2min����û��ػ���
			{
				BatteryDieCntSec++;
			}
			else
			{
				BatteryDieCntSec = 0;
				BatteryDieCntFinishFlag = 1;	//�ػ�
			}
		}
	}
	
	if((BatteryLvdTick < BATTERY_LVD_CYCLE) && (BatteryStatus != BATTERY_STATUS_FULL))		//LVD ������С�ڹ涨ʱ�䣬�ҵ�ز������磬�ͽ���LVD������
	{
		BatteryLvdTick++;
	}
	
	if(BatteryStatusTick < BATTERY_STATUS_CYCLE)			//���״̬������
	{
		BatteryStatusTick++;
	}
	
	if(BatteryFullJudgTick < BATTERY_FULL_JUDG_CYCLE)			//������������
	{
		BatteryFullJudgTick++;
	}
	
}



/*
**���״̬�ж�
*/
void Battery_StatusJudg(void)
{
	if(PowerStatus = POWER_STATUS_OFF)				//�ػ�״̬
	{
		BatteryDieTick = 0;
		BatteryDieCntSec = 0;
		BatteryDieCntFinishFlag = 0;
	}
	
	if(BatteryStatusTick < BATTERY_STATUS_CYCLE)
	{
		return;										//û��ʱ��
	}
	BatteryStatusTick = 0;
	
	if(BatteryFullFlag)								//�������
	{
		BatteryStatusCnt1++;						//״̬�ƴ�
		BatteryStatusCnt2 = 0;
		BatteryStatusCnt3 = 0;
		if(BatteryStatusCnt1 > 10)					//10��	
		{
			BatteryStatusCnt1 = 0;
			BatteryStatus = BATTERY_STATUS_FULL;	//�����״̬
		}
		BatteryDieTick = 0;							//�����û��ػ���־����
		BatteryDieCntSec = 0;
		BatteryDieCntFinishFlag = 0;
	}
	else															//��ز�����״̬
	{
		if(BatteryCurrCheckLevel != BATTERY_DETECT_LEVEL_3p0)		//LVD����Ƿ�����3.0VΪ��ֵ
		{
			BatteryCurrCheckLevel = BATTERY_DETECT_LEVEL_3p0;
			SetLVD_Level(BATTERY_DETECT_LEVEL_3p0);					//�������ֵ����Ϊ3.0V
		}
		
		if( BatteryLvdStatus == BATTERY_LVD_LOW )					//LVD���״̬���Ƿ��ǵ��ڵ�ѹ�����ֵ
		{
			BatteryStatusCnt1 = 0;
			BatteryStatusCnt2++;									//�ƴ�
			BatteryStatusCnt3 = 0;
			if(BatteryStatusCnt2 > 10)
			{
				BatteryStatusCnt2 = 0;
				BatteryStatus = BATTERY_STATUS_LOW;					//��ص͵���״̬
			}
			
			if(BatteryDieCntFinishFlag)								//�͵���״̬������2min�����ػ�
			{
				BatteryStatus = BATTERY_STATUS_DIE;					//���Ϊû��״̬
			}			
		}
		else														//��ز��ǵ͵�����Ҳ����������״̬
		{
			BatteryStatusCnt1 = 0;
			BatteryStatusCnt2 = 0;
			BatteryStatusCnt3++;
			if(BatteryStatusCnt3 > 10)
			{
				BatteryStatusCnt3 = 0;
				BatteryStatus = BATTERY_STATUS_NOR;					//�����������״̬
				
				BatteryDieTick = 0;									//�����û��ػ���־λ��0
				BatteryDieCntSec = 0;
				BatteryDieCntFinishFlag = 0;
			}						
		}
	}
}

/*
**��س��������ж�
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
**���LVD���
*/
void Battery_LvdDetect(void)
{


	if(Get_Lvdf())				//��⵽��ѹ�������õ�ѹ��ֵ
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
**��س�ʼ������
*/
void Battery_Init(void)
{
	BatteryFullFlag = 0;
	Battery_Init_Data();
}
/*
**��س�ʼ������������LVD����ص���û�磬��������������״̬ʱ������Ϊ����״̬֮���ٽ����ж�
*/
void Battery_Init_Data(void)
{
	unsigned char i = 0;
	unsigned char BatteryLowCnt = 0;					//���ʱ�����ڹػ���ѹ�Ĵ���
	
	Lvd_Init();											//LVD����ʼ��
	
	for(i = 0; i < 2; i++)
	{
		DelayMs(20);
		if(Get_Lvdf())									//LVD��⣬���ݽ���ж�
		{
			BatteryLowCnt++;							//���ڹػ���ѹ�Ĵ���+
		}
	}
	
	if(BatteryLowCnt)
	{
		BatteryStatus = BATTERY_STATUS_DIE;
	}
	else
	{
		BatteryStatus = BATTERY_STATUS_NOR; 			//���������ѵ�ʱ���ȼ��һ���ѹ��������ǹػ���ѹ��������Ϊ��������ѹ������������У׼

	}
}