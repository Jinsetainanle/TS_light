#include "holychip_define.h"
#include "rgb4.h"

unsigned int Rgb4EffectTick = 0;
unsigned char Rgb4Effect = 0;
unsigned char Rgb4Status = 0;



void RGB4_Init(void)
{
    *PORTB_REG_ADDR_DIR &= ~(RGB_FIRST_PIN | RGB_SECOND_PIN | RGB_THIRD_PIN | RGB_FOURTH_PIN);    //output
    *PORTB_REG_ADDR_PU &= ~(RGB_FIRST_PIN | RGB_SECOND_PIN | RGB_THIRD_PIN | RGB_FOURTH_PIN);     //enable pull up
    *PORTB_REG_ADDR_PD |= (RGB_FIRST_PIN | RGB_SECOND_PIN | RGB_THIRD_PIN | RGB_FOURTH_PIN);      //disable pull down
}

void RGB4_Tick_Ctrl(void)
{
    if(Rgb4EffectTick < RGB4_EFFECT_CYCLY)
    {
        Rgb4EffectTick++;
    }

}

void RGB4_Manage(void)
{

	RGB4_Effect();
	RGB4_Set();
}
/*
** @brief: judge rgb4 effect
** @param: none
** @return: none
*/
void RGB4_Effect_Judg(void)
{
    static unsigned char LastEffect = 0;
    LastEffect = Rgb4Effect;

    if(BatteryStatus == BATTERY_STATUS_FULL && ChargeStatus == CHARGE_STATUS_CHARGING)
    {
        Rgb4Effect = RGB4_EFFECT_LIGHT;             //4 light are on
    }
    else if(ChargeStatus == CHARGE_STATUS_CHARGING)
    {
        Rgb4Effect = RGB4_EFFECT_TWINK_FAST;      //4 light are twinkling fast
    }
    else if(BatteryStatus == ?)
    {
        Rgb4Effect = RGB4_EFFECT_3LIGHT_ON;                         //3 light are on
    }
    else if(BatteryStatus == ?)
    {
        Rgb4Effect = RGB4_EFFECT_2LIGHT_ON;                         //2 light are on
    }
    else if(BatteryStatus == ?)
    {
        Rgb4Effect = RGB4_EFFECT_1LIGHT_ON;                         //1 light are on
    }
    else if(BatteryStatus == BATTERY_STATUS_LOW && && PowerStatus == POWER_STATUS_ON)
    {
        RgbEffect = RGB_EFFECT_TWINK_FAST;
    }
    else
    {
        Rgb4Effect = RGB4_EFFECT_OFF;
    }

    if(LastEffect != Rgb4Effect)
    {
        LastEffect = Rgb4Effect;
        Rgb4EffectTick = 0;
    }

}

void RGB4_Effect(void)
{
    unsigned char index = 0;

    RGB4_Effect_Judg();

    index = Rgb4Effect;

    switch(index)
    {
        case RGB4_EFFECT_OFF:
            Rgb4Status = RGB4_STATUS_OFF;
            Rgb4EffectTick = 0;
            break;

        case RGB4_EFFECT_TWINK_FAST:
            if( Rgb4EffectTick >= (RGB4_EFFECT_CYCLY >> 2) )
            {
                Rgb4EffectTick = 0;
                Rgb4Status = (Rgb4Status == RGB4_STATUS_OFF ) ? RGB4_STATUS_1LIGHT_ON : RGB4_STATUS_OFF;
            }
            break;

        case RGB4_EFFECT_TWINKLING:
            if( Rgb4EffectTick >= (RGB4_EFFECT_CYCLY >> 1) )
            {
                Rgb4EffectTick = 0;
                Rgb4Status = (Rgb4Status == RGB4_STATUS_OFF ) ? RGB4_STATUS_ON : RGB4_STATUS_OFF;
            }
            break;


        case RGB4_EFFECT_LIGHT:
            Rgb4Status = RGB4_STATUS_ON;
            Rgb4EffectTick = 0;
            break;

        case RGB4_EFFECT_3LIGHT_ON:
            Rgb4Status = RGB4_STATUS_3LIGHT_ON;
            Rgb4EffectTick = 0;
            break;

        case RGB4_EFFECT_2LIGHT_ON:
            Rgb4Status = RGB4_STATUS_2LIGHT_ON;
            Rgb4EffectTick = 0;
            break;

        case RGB4_EFFECT_1LIGHT_ON:
            Rgb4Status = RGB4_STATUS_1LIGHT_ON;
            Rgb4EffectTick = 0;
            break;

        default:
            break;
    }
}

void RGB_Status_OFF(void)
{
    RGB_FIRST_OFF;
    RGB_SECOND_OFF;
    RGB_THIRD_OFF;
    RGB_FOURTH_OFF;
}

void RGB_Status_ON(void)
{
    RGB_FIRST_ON;
    RGB_SECOND_ON;
    RGB_THIRD_ON;
    RGB_FOURTH_ON;
}

void RGB_Status_3LIGHT_ON(void)
{
    RGB_FIRST_ON;
    RGB_SECOND_ON;
    RGB_THIRD_ON;
    RGB_FOURTH_OFF;
}

void RGB_Status_2LIGHT_ON(void)
{
    RGB_FIRST_ON;
    RGB_SECOND_ON;
    RGB_THIRD_OFF;
    RGB_FOURTH_OFF;
}

void RGB_Status_1LIGHT_ON(void)
{
    RGB_FIRST_ON;
    RGB_SECOND_OFF;
    RGB_THIRD_OFF;
    RGB_FOURTH_OFF;
}


void RGB4_Set(void)
{
    switch(Rgb4Status)
    {
        case RGB4_STATUS_OFF:
            RGB_Status_OFF();
            break;
        case RGB4_STATUS_ON:
            RGB_Status_ON();
            break;
        case RGB4_STATUS_3LIGHT_ON:
            RGB_Status_3LIGHT_ON();
            break;
        case RGB4_STATUS_2LIGHT_ON:
            RGB_Status_2LIGHT_ON();
            break;
        case RGB4_STATUS_1LIGHT_ON:
            RGB_Status_1LIGHT_ON();
            break;
        default:
            break;

    }
}