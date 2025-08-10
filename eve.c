#include "holychip_define.h"
#include "eve.h"
#include "key.h"
#include "power.h"

bit EvePower = 0;				//�����¼�
bit EveDim = 0;					//���������¼�
bit EveColor = 0;				//����ɫѡ��
unsigned char ShortIndex = 0;

void Eve_Manage(void)
{

	Key_Detect();
	
	Eve_Detect();
}

void Eve_Detect(void)
{
	if(PowerStatus == POWER_STATUS_ON)
	{
		switch(ShortIndex)
		{
			case 0:
				if(KeyShortPressFlag)
				{
					KeyShortPressFlag = 0;
					EveColor = 1;
					ShortIndex = 1;
				}
			break;
			
			case 1:
				if(KeyShortPressFlag)
				{
					KeyShortPressFlag = 0;
					EveColor = 0;
					ShortIndex = 0;
//					EvePower = EVE_POWER_OFF;
				}
			break;
			
			
			default:
			break;
			

		}
		
		if( KeyLongPressFlag )								//��������
		{
			KeyLongPressFlag = 0;						
			
			EveDim = 1;
		}
		//�ڿ���״̬�£�˫�������ػ�����bug��˫������Ҳ�ᴥ�����������ļ�⣬�ƹ������һ�βŻ�ر�
		if(KeyShortPressTwiceFlag)
		{
			KeyShortPressTwiceFlag = 0;
			EvePower = EVE_POWER_OFF;
		}
	}
	else
	{
		ShortIndex = 0;
		KeyLongPressFlag = 0;
		
//		if( KeyShortPressFlag )
//		{
//			KeyShortPressFlag = 0;
		if( KeyShortPressTwiceFlag )
		{
			KeyShortPressTwiceFlag = 0;					
			EveColor = 0;
			
			KeyShortPressFlag = 0;
			
			EvePower = EVE_POWER_ON;
			
			
		}
	}
}