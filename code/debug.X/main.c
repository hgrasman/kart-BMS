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

void I2C_Handler();
void updateMemoryValues();
static void sendTempDataToMaster(uint16_t);
static void sendVSNSDataToMaster();
//static void sendAllDataToMaster();

#define Cell_Balancer_On LATBbits.LATB7
#define Watchdog_Timer_Enabled WDTCONbits.SWDTEN
bool Cell_Balancing_Enabled;

struct criticalValues {
    float LOW_VOLTAGE;
    float HIGH_VOLTAGE;
    uint16_t HIGH_TEMP;
    uint16_t WARN_TEMP;
};

struct toTrack {
    uint8_t status;
    uint16_t TSNS1;
    uint16_t TSNS2;
    uint16_t TSNS3;
    uint16_t TSNS4;
    uint16_t TSNS5;
};

//initalize structs to be used in memory
struct toTrack memory = {
    .status = 0x00,
    .TSNS1 = 0x0000,
    .TSNS2 = 0x0000,
    .TSNS3 = 0x0000,
    .TSNS4 = 0x0000,
    .TSNS5 = 0x0000
};
static const struct criticalValues safety = {
    .LOW_VOLTAGE = 3.2,
    .HIGH_VOLTAGE = 4.2,
    .HIGH_TEMP = 226,
    .WARN_TEMP = 230
};
//declare other values to be used in necessary operations

enum ADC_Reference {
    TSNS1 = 0x02,
    TSNS2 = 0x03,
    TSNS3 = 0x07,
    TSNS4 = 0x08,
    TSNS5 = 0x09,
    VSNS = 0x10,
    FVR = 0x1F
} selectedReference;

union floatToBytes {
  
    char buffer[4];
    float voltageReading;
  
  } converter;
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

    //start I2C bus comms
    I2C_Open();
    //declare vars for use in keeping track of I2C states
    while (1){
        I2C_Handler();
        if(Cell_Balancing_Enabled){
            Cell_Balancer_On = true;
            __delay_ms(900);
            Cell_Balancer_On = false;
            __delay_ms(90);
        }
        updateMemoryValues();
    }//end while
}//end main

void I2C_Handler(){
    if(i2cSlaveAddr == SSP1ADD){
        switch(i2cRdData){
            case 0x01:
                sendTempDataToMaster(memory.TSNS1);
                goto end_I2C_Handler;
            case 0x02:
                sendTempDataToMaster(memory.TSNS2);
                goto end_I2C_Handler;  
            case 0x03:
                sendTempDataToMaster(memory.TSNS3);
                goto end_I2C_Handler;  
            case 0x04:
                sendTempDataToMaster(memory.TSNS4);
                goto end_I2C_Handler;          
            case 0x05:
                sendTempDataToMaster(memory.TSNS5);
                goto end_I2C_Handler;
            case 0x06:
                sendVSNSDataToMaster();
                goto end_I2C_Handler;
            case 0x07:
                i2cWrData = memory.status;
                goto end_I2C_Handler;
            case 0x08:
                //sendAllDataToMaster();
                goto end_I2C_Handler;
            case 0x09:
                Watchdog_Timer_Enabled = true;
                goto end_I2C_Handler;
            case 0x0A:
                Watchdog_Timer_Enabled = false;
                goto end_I2C_Handler;                
            case 0x0B:
                Cell_Balancing_Enabled = true;   
                goto end_I2C_Handler;
            case 0x0C:
                Cell_Balancing_Enabled = false;
                goto end_I2C_Handler;
        }
    }
    end_I2C_Handler:
    i2cRdData = 0x00;
    return;
}

static void sendTempDataToMaster(uint16_t toSend){
    i2cWrData = (uint8_t) (toSend >> 8) & 0x00FF;
    i2cWrData_Secondary = (uint8_t) (toSend >> 0) & 0x00FF;
    return;
}

static void sendVSNSDataToMaster(){
    i2cWrData = converter.buffer[3];
    i2cWrData_Secondary = converter.buffer[2];
    i2cWrData_Tertiary = converter.buffer[1];
    i2cWrData_Quaternary = converter.buffer[0];
    return;
}

void updateMemoryValues(){
        // Add your application code
    selectedReference = TSNS1;
    memory.TSNS1 = (uint16_t) ADC_GetConversion(selectedReference);
    selectedReference = TSNS2;
    memory.TSNS2 = (uint16_t) ADC_GetConversion(selectedReference);
    selectedReference = TSNS3;
    memory.TSNS3 = (uint16_t) ADC_GetConversion(selectedReference);
    selectedReference = TSNS4;
    memory.TSNS4 = (uint16_t) ADC_GetConversion(selectedReference);
    selectedReference = TSNS5;
    memory.TSNS5 = (uint16_t) ADC_GetConversion(selectedReference);
    if (memory.TSNS1 <= safety.HIGH_TEMP) {
        LATCbits.LATC1 = 0;
    }
    if (memory.TSNS1 <= safety.WARN_TEMP) {
        LATCbits.LATC2 = 0;
    } else {
        LATCbits.LATC2 = 1;
    }
    if (memory.TSNS2 <= safety.HIGH_TEMP) {
        LATCbits.LATC1 = 0;
    }
    if (memory.TSNS2 <= safety.WARN_TEMP) {
        LATCbits.LATC2 = 0;
    } else {
        LATCbits.LATC2 = 1;
    }
    if (memory.TSNS3 <= safety.HIGH_TEMP) {
        LATCbits.LATC1 = 0;
    }
    if (memory.TSNS3 <= safety.WARN_TEMP) {
        LATCbits.LATC2 = 0;
    } else {
        LATCbits.LATC2 = 1;
    }
    if (memory.TSNS4 <= safety.HIGH_TEMP) {
        LATCbits.LATC1 = 0;
    }

    if (memory.TSNS4 <= safety.WARN_TEMP) {
        LATCbits.LATC2 = 0;
    } else {
        LATCbits.LATC2 = 1;
    }

    if (memory.TSNS5 <= safety.HIGH_TEMP) {
        LATCbits.LATC1 = 0;
    }

    if (memory.TSNS5 <= safety.WARN_TEMP) {
        LATCbits.LATC2 = 0;
    } else {
        LATCbits.LATC2 = 1;
    }

    selectedReference = FVR;
    uint16_t fvr_Test = ADC_GetConversion(selectedReference);
    float Vbit = 2.048 / (float) fvr_Test;
    converter.voltageReading = Vbit * 1024;
    if (converter.voltageReading >= safety.HIGH_VOLTAGE || converter.voltageReading <= safety.LOW_VOLTAGE) {
        LATCbits.LATC1 = 0;
    }
}
/**
 End of File
*/
