/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC16F1508
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include <stdbool.h>

/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    
    //constant variable declaration for safety
    struct safeValues{
        int LOW_VOLTAGE;
        int HIGH_VOLTAGE;
        int HIGH_TEMP;
    };
    
    struct variablesTracked {
        uint8_t status;
        uint16_t VSNS[5];
        uint16_t TSNS1[5];
        uint16_t TSNS2[5];
        uint16_t TSNS3[5];
        uint16_t TSNS4[5];
        uint16_t TSNS5[5];
    };
    
    //declare necessary values
    static const struct safeValues safety = {
        .LOW_VOLTAGE = 3.2, 
        .HIGH_VOLTAGE = 4.0,
        .HIGH_TEMP = 60
    };
    /*
    struct variablesTracked memory = { 
        .status = 0,
        .VSNS[5] = [0,0,0,0,0],
        .TSNS1[5] = [0,0,0,0,0],
        .TSNS2[5] = [0,0,0,0,0],
        .TSNS3[5] = [0,0,0,0,0],
        .TSNS4[5] = [0,0,0,0,0],
        .TSNS5[5] = [0,0,0,0,0]
    };
     * */
    enum ADC_Reference{TSNS1 = 0x02, TSNS2 = 0x04, TSNS3 = 0x06, TSNS4 = 0x11, TSNS5 = 0x08, VSNS = 0x09, FVR = 0x31} selectedReference;
    uint8_t position = 0;
    unsigned char FVR_value = 0x00;
    float VBIT = 0.0;
    LATC = 0x00;
    TMR1_StartTimer();
    while (1){
        /*
        for(int i=3;i>=0;i--){
            memory.VSNS[i] = memory.VSNS[i-1];
            memory.TSNS1[i] = memory.TSNS1[i-1];
            memory.TSNS2[i] = memory.TSNS2[i-1];
            memory.TSNS3[i] = memory.TSNS3[i-1];
            memory.TSNS4[i] = memory.TSNS4[i-1];
            memory.TSNS5[i] = memory.TSNS5[i-1];
        }
        asm("SLEEP");
        selectedReference = FVR;
        FVR_value = ADC_GetConversion(selectedReference);
        VBIT = 2.048 / FVR_value;
        
        selectedReference = VSNS;
        memory.VSNS[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        
        selectedReference = TSNS1;
        memory.TSNS1[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        
        selectedReference = TSNS2;
        memory.TSNS2[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        
        selectedReference = TSNS3;
        memory.TSNS3[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        
        selectedReference = TSNS4;
        memory.TSNS4[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        
        selectedReference = TSNS5;
        memory.TSNS5[0] = (uint16_t) ADC_GetConversion(selectedReference) * VBIT;
        */
        TMR1_StopTimer();
        TMR1_Reload();
        LATC = 0x01;
        TMR1_StartTimer();
        asm("SLEEP");
        TMR1_StopTimer();
        TMR1_Reload();
        LATC = 0x00;
        TMR1_StartTimer();
        asm("SLEEP");
        
    }  
/**
 End of File
*/
}