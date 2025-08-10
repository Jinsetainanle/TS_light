///*  ************************************************************************************
//*								上海芯圣电子股份有限公司
//*								    www.holychip.cn
//*	************************************************************************************
//*/
//#include "holychip_define.h"
//#include "adc.h"
//unsigned int adcon1=0;
//unsigned int databufl=0;
//unsigned int databufh=0;
//unsigned int voult_buf=0;
////******************************延时子程序******************************
///*
//uS延时函数，含有输入参数 unsigned char t，无返回值
// unsigned char 是定义无符号字符变量，其值的范围是
// 0~255 精确延时请使用汇编,大致延时
//------------------------------------------------*/
//// 函数名：void delay_us(unsigned int x)
//// 函数功能：延时
//// 输入：延时时间 unsigned int
//// 输出：无
//void delay_us(unsigned int t)
//{
// 	while(--t);
//
//}
////┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
////┃ADC初始化							  						  ┃
////┃Version:V1.00										 		  ┃
////┃Functio:AD初始化数据赋值处理		 						  ┃
////┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
//void adc(unsigned char channel,unsigned char voltage)		//AD通道和参考电压选择
//{
//	switch(channel)
//	{
//	case 0:
//		TRISA0=1;
//		ANSELL=0X01;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X00;			//配置AD通道0
//		break;
//	case 1:
//		TRISA1=1;
//		ANSELL=0X02;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X04;			//配置AD通道1
//		break;
//	case 2:
//		TRISA2=1;
//		ANSELL=0X04;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X08;			//配置AD通道2
//		break;
//	case 3:
//		TRISA3=1;
//		ANSELL=0X08;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X0C;			//配置AD通道3
//		break;
//	
//	case 4:
//		TRISA4=1;
//		ANSELL=0X10;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X10;			//配置AD通道4
//		break;
//	case 5:
//		ANSELL=0X20;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X14;			//配置AD通道5，内部1/4VDD
//		break;
//	case 6:
//		TRISA6=1;
//		ANSELL=0X40;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X18;			//配置AD通道6
//		break;
//	case 7:
//		TRISA7=1;
//		ANSELL=0X80;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X1C;			//配置AD通道7
//		break;
//	case 8:
//		TRISB0=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X01;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X20;			//配置AD通道8
//		break;
//	case 9:
//		TRISB1=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X02;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X24;			//配置AD通道9
//		break;
//	case 10:
//		TRISB2=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X04;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X28;			//配置AD通道10
//		break;
//	case 11:
//		TRISB3=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X08;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X2C;			//配置AD通道11
//		break;
//	case 14:
//		TRISB6=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X40;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X38;			//配置AD通道14
//		break;
//	case 15:
//		TRISB7=1;
//		ANSELL=0X00;			//1=AD（simulation models）0=I/O（digital models）
//		ANSELH=0X80;			//1=AD（simulation models）0=I/O（digital models）
//		ADCON0=0X3C;			//配置AD通道15
//		break;
//
//	default:
//		break;		
//	}
//	ADCON1=adcon1;			//配置AD分频和参考电压
//	switch(voltage)
//	{
//		case 0: adcon1=0X01; TRISA2=1; break;	//外部参考电压
//		case 1: adcon1=0X08; break;	//内部1.3V
//		case 2: adcon1=0X06; break;	//内部2.0V
//		case 3: adcon1=0X04; break;	//内部3.0V
//		case 4: adcon1=0X02; break;	//内部4.0V
//		case 5: adcon1=0X00; break;	//内部VDD
//	}
//	
//	ADCON1=adcon1;			//配置AD分频和参考电压	
//	ADEN=1;					//启动ADEN
//			
//	delay_us(100);			//等待ADC稳定
//	ADON=1;					//启动ADON
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
