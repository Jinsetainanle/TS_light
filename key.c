#include "holychip_define.h"
#include "KEY.h"

//unsigned char KeyTick = 0;	
//unsigned int KeyPressTime = 0;			//�������³���ʱ��
//bit KeyShortPressFlag = 0;				//�̰�������־λ
//bit KeyLongPressFlag = 0;				//����������־λ
//bit LastLongKeyFlag = 0;				//��󴥷�������־λ
//
//bit KeyShortPressTwiceFlag = 0;			//�̰����δ�����־
///*
//**�������ų�ʼ��
//*/
//void key_Init(void)
//{
//	*PORTB_REG_ADDR_DIR |= KEY_PIN; 	//PB2����
//	*PORTB_REG_ADDR_PU &= ~KEY_PIN;		//ʹ����������
//	*PORTB_REG_ADDR_PD |= KEY_PIN;		//������������
//}
//
///*
//**�������
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
//			KeyPressTime = 0;			//����0����������0
//			
//			KeyLongPressFlag = 1;		//��������
//			LastLongKeyFlag = 1;		//
//		}
//	}
//	else
//	{
//		if(KeyPressTime > 10 && KeyPressTime < 900)	//�̰�����
//		{
//			if( !LastLongKeyFlag )						//��ֹ��������ʱ�������̰�
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
unsigned int KeyPressTime = 0;			//�������³���ʱ��
bit KeyShortPressFlag = 0;				//�̰�������־λ
bit KeyLongPressFlag = 0;				//����������־λ
bit LastLongKeyFlag = 0;				//��󴥷�������־λ

bit KeyShortPressTwiceFlag = 0;			//�̰����δ�����־
unsigned int LastShortPressTime = 0;	//��һ�ζ̰���ʱ���
unsigned char ShortPressCount = 0;		//�̰�����
#define DOUBLE_PRESS_INTERVAL 300		//���ζ̰������ʱ��(��λ:ms)

/*
**�������ų�ʼ��
*/
void key_Init(void)
{
	*PORTB_REG_ADDR_DIR |= KEY_PIN; 	//PB2����
	*PORTB_REG_ADDR_PU &= ~KEY_PIN;		//ʹ����������
	*PORTB_REG_ADDR_PD |= KEY_PIN;		//������������
}

/*
**�������
*/
void Key_Detect(void)
{
	static unsigned int sys_time = 0;	//ϵͳʱ�������
	
	if( !KeyTick )
		return;
	KeyTick = 0;
	
	// ϵͳʱ����������ڼ������ΰ�����ʱ����
	sys_time++;
	if(sys_time > 65000)	// ��ֹ���
		sys_time = 0;
	
	Read_Key(sys_time);
}

void Read_Key(unsigned int sys_time)
{
	if(!KEY_IO)	// ��������
	{
		if(KeyPressTime < 2001)
		{
			KeyPressTime++;
		}
		if(KeyPressTime == 2000)
		{
			KeyPressTime = 0;			
			KeyLongPressFlag = 1;		//��������
			LastLongKeyFlag = 1;
			// ����������˫�������ر���
			ShortPressCount = 0;		//�̰�����
			LastShortPressTime = 0;		//��һ�ζ̰���ʱ���
		}
	}
	else	// �����ɿ�
	{
		if(KeyPressTime > 10 && KeyPressTime < 900)	//�̰�����
		{
			if( !LastLongKeyFlag )						//��ֹ��������ʱ�������̰�
			{
				KeyShortPressFlag = 1;
				
				// ˫������߼�
				if(ShortPressCount == 0)
				{
					// ��һ�ζ̰�����¼ʱ��
					ShortPressCount = 1;
					LastShortPressTime = sys_time;
				}
				else if(ShortPressCount == 1)
				{
					// �ڶ��ζ̰������ʱ����
					unsigned int interval = sys_time - LastShortPressTime;
					if(interval < DOUBLE_PRESS_INTERVAL)
					{
						// ʱ��������Ч��Χ�ڣ�����˫��
						KeyShortPressTwiceFlag = 1;
					}
					// �����Ƿ񴥷�˫���������ü���
					ShortPressCount = 0;
					LastShortPressTime = 0;
				}
			}
		}
		else if(KeyPressTime >= 900 && KeyPressTime < 2000)
		{
			// ���ڶ̰��ͳ���֮�䣬����˫�����
			ShortPressCount = 0;
			LastShortPressTime = 0;
		}
		// ����Ƿ񳬹�˫�����ʱ��
		else if(ShortPressCount == 1)
		{
			unsigned int interval = sys_time - LastShortPressTime;
			if(interval >= DOUBLE_PRESS_INTERVAL)
			{
				// ���������������˫�����
				ShortPressCount = 0;
				LastShortPressTime = 0;
			}
		}
		
		KeyPressTime = 0;
		LastLongKeyFlag = 0;
	}
}
