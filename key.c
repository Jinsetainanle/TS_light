#include "holychip_define.h"
#include "KEY.h"

//unsigned char KeyTick = 0;	
//unsigned int KeyPressTime = 0;			//按键按下持续时间
//bit KeyShortPressFlag = 0;				//短按触发标志位
//bit KeyLongPressFlag = 0;				//长按触发标志位
//bit LastLongKeyFlag = 0;				//最后触发长按标志位
//
//bit KeyShortPressTwiceFlag = 0;			//短按两次触发标志
///*
//**按键引脚初始化
//*/
//void key_Init(void)
//{
//	*PORTB_REG_ADDR_DIR |= KEY_PIN; 	//PB2输入
//	*PORTB_REG_ADDR_PU &= ~KEY_PIN;		//使能输入上拉
//	*PORTB_REG_ADDR_PD |= KEY_PIN;		//屏蔽输入下拉
//}
//
///*
//**按键检测
//*/
//void Key_Detect(void)
//{
//	if( !KeyTick )
//		return;
//	KeyTick = 0;
//	
//	Read_Key();
//	
//}
//
//void Read_Key(void)
//{
//	if(!KEY_IO)
//	{
//		if(KeyPressTime < 2001)
//		{
//			KeyPressTime++;
//		}
//		if(KeyPressTime == 2000)
//		{
//			KeyPressTime = 0;			//不清0，放手在清0
//			
//			KeyLongPressFlag = 1;		//长按触发
//			LastLongKeyFlag = 1;		//
//		}
//	}
//	else
//	{
//		if(KeyPressTime > 10 && KeyPressTime < 900)	//短按触发
//		{
//			if( !LastLongKeyFlag )						//防止长按松手时，触发短按
//			{
//				KeyShortPressFlag = 1;
//			}
//		}
//		
//		KeyPressTime = 0;
//		LastLongKeyFlag = 0;
//	}
//}


unsigned char KeyTick = 0;	
unsigned int KeyPressTime = 0;			//按键按下持续时间
bit KeyShortPressFlag = 0;				//短按触发标志位
bit KeyLongPressFlag = 0;				//长按触发标志位
bit LastLongKeyFlag = 0;				//最后触发长按标志位

bit KeyShortPressTwiceFlag = 0;			//短按两次触发标志
unsigned int LastShortPressTime = 0;	//上一次短按的时间戳
unsigned char ShortPressCount = 0;		//短按计数
#define DOUBLE_PRESS_INTERVAL 300		//两次短按最大间隔时间(单位:ms)

/*
**按键引脚初始化
*/
void key_Init(void)
{
	*PORTB_REG_ADDR_DIR |= KEY_PIN; 	//PB2输入
	*PORTB_REG_ADDR_PU &= ~KEY_PIN;		//使能输入上拉
	*PORTB_REG_ADDR_PD |= KEY_PIN;		//屏蔽输入下拉
}

/*
**按键检测
*/
void Key_Detect(void)
{
	static unsigned int sys_time = 0;	//系统时间计数器
	
	if( !KeyTick )
		return;
	KeyTick = 0;
	
	// 系统时间递增，用于计算两次按键的时间间隔
	sys_time++;
	if(sys_time > 65000)	// 防止溢出
		sys_time = 0;
	
	Read_Key(sys_time);
}

void Read_Key(unsigned int sys_time)
{
	if(!KEY_IO)	// 按键按下
	{
		if(KeyPressTime < 2001)
		{
			KeyPressTime++;
		}
		if(KeyPressTime == 2000)
		{
			KeyPressTime = 0;			
			KeyLongPressFlag = 1;		//长按触发
			LastLongKeyFlag = 1;
			// 长按后重置双击检测相关变量
			ShortPressCount = 0;		//短按计数
			LastShortPressTime = 0;		//上一次短按的时间戳
		}
	}
	else	// 按键松开
	{
		if(KeyPressTime > 10 && KeyPressTime < 900)	//短按触发
		{
			if( !LastLongKeyFlag )						//防止长按松手时，触发短按
			{
				KeyShortPressFlag = 1;
				
				// 双击检测逻辑
				if(ShortPressCount == 0)
				{
					// 第一次短按，记录时间
					ShortPressCount = 1;
					LastShortPressTime = sys_time;
				}
				else if(ShortPressCount == 1)
				{
					// 第二次短按，检查时间间隔
					unsigned int interval = sys_time - LastShortPressTime;
					if(interval < DOUBLE_PRESS_INTERVAL)
					{
						// 时间间隔在有效范围内，触发双击
						KeyShortPressTwiceFlag = 1;
					}
					// 无论是否触发双击，都重置计数
					ShortPressCount = 0;
					LastShortPressTime = 0;
				}
			}
		}
		else if(KeyPressTime >= 900 && KeyPressTime < 2000)
		{
			// 介于短按和长按之间，重置双击检测
			ShortPressCount = 0;
			LastShortPressTime = 0;
		}
		// 检查是否超过双击间隔时间
		else if(ShortPressCount == 1)
		{
			unsigned int interval = sys_time - LastShortPressTime;
			if(interval >= DOUBLE_PRESS_INTERVAL)
			{
				// 超过最大间隔，重置双击检测
				ShortPressCount = 0;
				LastShortPressTime = 0;
			}
		}
		
		KeyPressTime = 0;
		LastLongKeyFlag = 0;
	}
}
