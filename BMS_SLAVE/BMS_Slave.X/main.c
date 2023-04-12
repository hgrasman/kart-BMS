/*
 BMS Slave Code
 */

#include "mcc_generated_files/mcc.h"

#define FILTER_POWER .85

/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    //Interrupt setup
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    I2C_Open(); //enable SPI Hardware
    ADC_Initialize(); //enable ADC hardware
    FVR_Initialize();//enable FVR for voltage sense
    LATC = 0x01;
    while (1)
    {
        //react to balance flag
        if (balanceFlag){
            balanceFlag = false;
            Balance_SetHigh();
            __delay_ms(900);
            Balance_SetLow();
            __delay_ms(80);            
        }
        
        
        //measure Thermistors and Pack Voltage
        Temp1ptr->value = (uint16_t) ADC_GetConversion(TSNS1);
        Temp2ptr->value = (uint16_t) ADC_GetConversion(TSNS2);
        Temp3ptr->value = (uint16_t) ADC_GetConversion(TSNS3);
        Temp4ptr->value = (uint16_t) ADC_GetConversion(TSNS4);
        Temp5ptr->value = (uint16_t) ADC_GetConversion(TSNS5);
        Volt1ptr->value = (uint16_t) ((double) Volt1ptr->value * (1-FILTER_POWER) + (double)ADC_GetConversion(channel_FVR) * FILTER_POWER);
        
    }
}
/**
 End of File
*/