///*  ************************************************************************************
//*								�Ϻ�оʥ���ӹɷ����޹�˾
//*								    www.holychip.cn
//*	************************************************************************************
//*/
//#include "holychip_define.h"
//#include "adc.h"
//unsigned int adcon1=0;
//unsigned int databufl=0;
//unsigned int databufh=0;
//unsigned int voult_buf=0;
////******************************��ʱ�ӳ���******************************
///*
//uS��ʱ����������������� unsigned char t���޷���ֵ
// unsigned char �Ƕ����޷����ַ���������ֵ�ķ�Χ��
// 0~255 ��ȷ��ʱ��ʹ�û��,������ʱ
//------------------------------------------------*/
//// ��������void delay_us(unsigned int x)
//// �������ܣ���ʱ
//// ���룺��ʱʱ�� unsigned int
//// �������
//void delay_us(unsigned int t)
//{
// 	while(--t);
//
//}
////������������������������������������������������������������������
////��ADC��ʼ��							  						  ��
////��Version:V1.00										 		  ��
////��Functio:AD��ʼ�����ݸ�ֵ����		 						  ��
////������������������������������������������������������������������
//void adc(unsigned char channel,unsigned char voltage)		//ADͨ���Ͳο���ѹѡ��
//{
//	switch(channel)
//	{
//	case 0:
//		TRISA0=1;
//		ANSELL=0X01;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X00;			//����ADͨ��0
//		break;
//	case 1:
//		TRISA1=1;
//		ANSELL=0X02;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X04;			//����ADͨ��1
//		break;
//	case 2:
//		TRISA2=1;
//		ANSELL=0X04;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X08;			//����ADͨ��2
//		break;
//	case 3:
//		TRISA3=1;
//		ANSELL=0X08;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X0C;			//����ADͨ��3
//		break;
//	
//	case 4:
//		TRISA4=1;
//		ANSELL=0X10;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X10;			//����ADͨ��4
//		break;
//	case 5:
//		ANSELL=0X20;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X14;			//����ADͨ��5���ڲ�1/4VDD
//		break;
//	case 6:
//		TRISA6=1;
//		ANSELL=0X40;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X18;			//����ADͨ��6
//		break;
//	case 7:
//		TRISA7=1;
//		ANSELL=0X80;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X1C;			//����ADͨ��7
//		break;
//	case 8:
//		TRISB0=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X01;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X20;			//����ADͨ��8
//		break;
//	case 9:
//		TRISB1=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X02;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X24;			//����ADͨ��9
//		break;
//	case 10:
//		TRISB2=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X04;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X28;			//����ADͨ��10
//		break;
//	case 11:
//		TRISB3=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X08;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X2C;			//����ADͨ��11
//		break;
//	case 14:
//		TRISB6=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X40;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X38;			//����ADͨ��14
//		break;
//	case 15:
//		TRISB7=1;
//		ANSELL=0X00;			//1=AD��simulation models��0=I/O��digital models��
//		ANSELH=0X80;			//1=AD��simulation models��0=I/O��digital models��
//		ADCON0=0X3C;			//����ADͨ��15
//		break;
//
//	default:
//		break;		
//	}
//	ADCON1=adcon1;			//����AD��Ƶ�Ͳο���ѹ
//	switch(voltage)
//	{
//		case 0: adcon1=0X01; TRISA2=1; break;	//�ⲿ�ο���ѹ
//		case 1: adcon1=0X08; break;	//�ڲ�1.3V
//		case 2: adcon1=0X06; break;	//�ڲ�2.0V
//		case 3: adcon1=0X04; break;	//�ڲ�3.0V
//		case 4: adcon1=0X02; break;	//�ڲ�4.0V
//		case 5: adcon1=0X00; break;	//�ڲ�VDD
//	}
//	
//	ADCON1=adcon1;			//����AD��Ƶ�Ͳο���ѹ	
//	ADEN=1;					//����ADEN
//			
//	delay_us(100);			//�ȴ�ADC�ȶ�
//	ADON=1;					//����ADON
//	
//	while(!ADIF);
//	
//	databufl = ADRESL;
//	databufh = ADRESH;
//	ADRESL = 0;
//	ADRESH = 0;
//	
//
//}
