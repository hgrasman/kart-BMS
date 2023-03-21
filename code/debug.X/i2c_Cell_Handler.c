/**
 * Author: Zachary Rosol
 * Summary: Microchip is basic as fuck, so I'm writing this to handle our
 * requirements.
 * 
 * 
 * 
 */

#include "i2c_Cell_Handler.h"
#include <xc.h>
#include <stdbool.h>

#define I2C_Cell_Address    8
#define I2C_Cell_Mask       0

//define macros to handle single-line functions
#define I2C_InterruptRequestActive PIR1bits.SSP1IF
#define I2C_ClockActive  SSP1CON1bits.CKP
#define I2C_Buffer SSP1BUF
#define I2C_Address SSP1ADD

static void I2C_ISR(void);


volatile uint8_t I2C_Command = 0x00;
volatile uint8_t SSP1Contents = 0x00;
bool deviceActive = false;

static void I2C_ISR(){
    I2C_InterruptRequestActive = false;
    
    if(deviceActive){
        I2C_Command = I2C_Buffer;
        
        deviceActive = false;
        goto end_ISR;
    }
    
    SSP1Contents = I2C_Buffer;
    if(SSP1Contents >= 0x10){
        if(SSP1Contents == I2C_Address){
            deviceActive = true;
        }else{
            deviceActive = false;
        }//end if-else
        goto end_ISR;
    }
    
    
    end_ISR:
    I2C_ClockActive = true;
}

static inline void I2C_SlaveSendAck()
{
    SSP1CON2bits.ACKDT = 0;
    SSP1CON2bits.ACKEN = 1;
}

static inline void I2C_SlaveSendNack()
{
    SSP1CON2bits.ACKDT = 1;
    SSP1CON2bits.ACKEN = 1;
}
