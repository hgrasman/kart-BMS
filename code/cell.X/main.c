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
#include "mainVars.h"
/*
                         Main application
 */
static void sendAllDatatoMaster();
static void sendDataToMaster(uint16_t);
//create structs


struct criticalValues {
    float LOW_VOLTAGE;
    float HIGH_VOLTAGE;
    float HIGH_TEMP;
    float WARN_TEMP;
};

struct toTrack {
    uint8_t status;
    uint16_t VSNS;
    uint16_t TSNS1;
    uint16_t TSNS2;
    uint16_t TSNS3;
    uint16_t TSNS4;
    uint16_t TSNS5;
};

//initalize structs to be used in memory
struct toTrack memory = {
    .status = 0x00,
    .VSNS = 0x0000,
    .TSNS1 = 0x0000,
    .TSNS2 = 0x0000,
    .TSNS3 = 0x0000,
    .TSNS4 = 0x0000,
    .TSNS5 = 0x0000
};
static const struct criticalValues safety = {
    .LOW_VOLTAGE = 3.2,
    .HIGH_VOLTAGE = 4.0,
    .HIGH_TEMP = 23.88,
    .WARN_TEMP = 28.82
};
//declare other values to be used in necessary operations

enum ADC_Reference {
    TSNS1 = 0x02,
    TSNS2 = 0x03,
    TSNS3 = 0x07,
    TSNS4 = 0x08,
    TSNS5 = 0x09,
    VSNS = 0x10
} selectedReference;

enum I2C_opCodes {
    No_Command = 0x00,
    Report_TSNS1 = 0x01,
    Report_TSNS2 = 0x02,
    Report_TSNS3 = 0x03,
    Report_TSNS4 = 0x04,
    Report_TSNS5 = 0x05,
    Report_VSNS = 0x06,
    Report_Status = 0x07,
    Enable_Sleep_WDT = 0x08,
    Disable_Sleep_WDT = 0x09,
    Start_Balancing = 0x0A,
    Stop_Balancing = 0x0B,
    Restart_Relay = 0x0C,
    Send_All_Data = 0x0D,
    Controller_Restart = 0x0E
} I2C_Command;

bool currentlyBalancing = false;


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
    
    //I2C_Open();
    WDTCONbits.SWDTEN = 0;
    while (1)
    {
        if(WDTCONbits.SWDTEN == 1){
            asm("SLEEP");
        }
        LATC = 0x01;
        I2C_Command = I2C_Read();
        switch(I2C_Command){
            case No_Command:
                break;
            case Report_TSNS1:
                sendDataToMaster(memory.TSNS1);
                break;
            case Report_TSNS2:
                sendDataToMaster(memory.TSNS2);
                break;            
            case Report_TSNS3:
                sendDataToMaster(memory.TSNS3);
                break;  
            case Report_TSNS4:
                sendDataToMaster(memory.TSNS4);
                break; 
            case Report_TSNS5:
                sendDataToMaster(memory.TSNS5);
                break; 
            case Report_VSNS:
                sendDataToMaster(memory.VSNS);
                break; 
            case Report_Status:
                I2C_Write(memory.status);
                break; 
            case Enable_Sleep_WDT:
                WDTCONbits.SWDTEN = 1;
                break; 
            case Disable_Sleep_WDT:
                WDTCONbits.SWDTEN = 0;
                break; 
            case Start_Balancing:
                currentlyBalancing = true;
                break; 
            case Stop_Balancing:
                currentlyBalancing = false;
                break; 
            case Restart_Relay:
                LATC = 0x00;
                break; 
            case Send_All_Data:
                sendAllDatatoMaster();
                break; 
            case Controller_Restart:
                asm("RESET");
        }

        selectedReference = TSNS1;
        memory.TSNS1 = ADC_GetConversion(selectedReference);
        selectedReference = TSNS2;
        memory.TSNS2 = ADC_GetConversion(selectedReference);
        selectedReference = TSNS3;
        memory.TSNS3 = ADC_GetConversion(selectedReference);
        selectedReference = TSNS4;
        memory.TSNS4 = ADC_GetConversion(selectedReference);
        selectedReference = TSNS5;
        memory.TSNS5 = ADC_GetConversion(selectedReference);
        LATC = 0x00;
    }
}

static void sendDataToMaster(uint16_t toSend){
    uint8_t high = (uint8_t) (toSend >> 8) & 0x00FF;
    uint8_t low = (uint8_t) (toSend >> 0) & 0x00FF;
    I2C_Write(high);
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 1){ }
    I2C_Write(low);
    I2C_Command = No_Command;
    return;
}    

static void sendAllDatatoMaster(){
    I2C_Write(memory.status);
    
    uint8_t high = (uint8_t) (memory.TSNS1 >> 8) & 0x00FF;
    uint8_t low = (uint8_t) (memory.TSNS1 >> 0) & 0x00FF;
    while(SSP1STATbits.BF && !SSP1CON2bits.ACKSTAT){ }
    
    I2C_Write(high);
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }
    
    I2C_Write(low);
    high = (uint8_t) (memory.TSNS2 >> 8) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   
    I2C_Write(high);
    low = (uint8_t) (memory.TSNS2 >> 0) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   
    
    I2C_Write(low);
    high = (uint8_t) (memory.TSNS3 >> 8) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   
    
    I2C_Write(high);
    low = (uint8_t) (memory.TSNS3 >> 0) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   
    
    I2C_Write(low);
    high = (uint8_t) (memory.TSNS4 >> 8) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(high);
    low = (uint8_t) (memory.TSNS4 >> 0) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(low);
    high = (uint8_t) (memory.TSNS5 >> 8) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(high);
    low = (uint8_t) (memory.TSNS5 >> 0) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(low);
    high = (uint8_t) (memory.VSNS >> 8) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(high);
    low = (uint8_t) (memory.VSNS >> 0) & 0x00FF;
    while(SSP1STATbits.BF && SSP1CON2bits.ACKSTAT == 0){ }   

    I2C_Write(low);
    
    I2C_Command = No_Command;
    return;
}


/**
 End of File
*/