#include "holychip_define.h"
#include "eve.h"
#include "key.h"
#include "power.h"

bit EvePower = 0;				//开关事件
bit EveDim = 0;					//调光亮度事件
bit EveColor = 0;				//光颜色选择
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
		
		if( KeyLongPressFlag )								//长按调光
		{
			KeyLongPressFlag = 0;						
			
			EveDim = 1;
		}
		//在开机状态下，双击按键关机，有bug，双击按键也会触发单击按键的检测，灯光会跳变一次才会关闭
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