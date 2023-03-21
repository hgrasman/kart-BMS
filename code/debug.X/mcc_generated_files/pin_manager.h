/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC16F1508
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB 	          :  MPLAB X 6.00	
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set TempSNS1 aliases
#define TempSNS1_TRIS                 TRISAbits.TRISA2
#define TempSNS1_LAT                  LATAbits.LATA2
#define TempSNS1_PORT                 PORTAbits.RA2
#define TempSNS1_WPU                  WPUAbits.WPUA2
#define TempSNS1_ANS                  ANSELAbits.ANSA2
#define TempSNS1_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define TempSNS1_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define TempSNS1_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define TempSNS1_GetValue()           PORTAbits.RA2
#define TempSNS1_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define TempSNS1_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define TempSNS1_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define TempSNS1_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define TempSNS1_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define TempSNS1_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set TempSNS2 aliases
#define TempSNS2_TRIS                 TRISAbits.TRISA4
#define TempSNS2_LAT                  LATAbits.LATA4
#define TempSNS2_PORT                 PORTAbits.RA4
#define TempSNS2_WPU                  WPUAbits.WPUA4
#define TempSNS2_ANS                  ANSELAbits.ANSA4
#define TempSNS2_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define TempSNS2_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define TempSNS2_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define TempSNS2_GetValue()           PORTAbits.RA4
#define TempSNS2_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define TempSNS2_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define TempSNS2_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define TempSNS2_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define TempSNS2_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define TempSNS2_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set RB4 procedures
#define RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define RB4_GetValue()              PORTBbits.RB4
#define RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define RB4_SetPullup()             do { WPUBbits.WPUB4 = 1; } while(0)
#define RB4_ResetPullup()           do { WPUBbits.WPUB4 = 0; } while(0)
#define RB4_SetAnalogMode()         do { ANSELBbits.ANSB4 = 1; } while(0)
#define RB4_SetDigitalMode()        do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set RB6 procedures
#define RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define RB6_GetValue()              PORTBbits.RB6
#define RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define RB6_SetPullup()             do { WPUBbits.WPUB6 = 1; } while(0)
#define RB6_ResetPullup()           do { WPUBbits.WPUB6 = 0; } while(0)

// get/set IO_RB7 aliases
#define IO_RB7_TRIS                 TRISBbits.TRISB7
#define IO_RB7_LAT                  LATBbits.LATB7
#define IO_RB7_PORT                 PORTBbits.RB7
#define IO_RB7_WPU                  WPUBbits.WPUB7
#define IO_RB7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define IO_RB7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define IO_RB7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define IO_RB7_GetValue()           PORTBbits.RB7
#define IO_RB7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define IO_RB7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define IO_RB7_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define IO_RB7_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set LED aliases
#define LED_TRIS                 TRISCbits.TRISC0
#define LED_LAT                  LATCbits.LATC0
#define LED_PORT                 PORTCbits.RC0
#define LED_ANS                  ANSELCbits.ANSC0
#define LED_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define LED_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define LED_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define LED_GetValue()           PORTCbits.RC0
#define LED_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define LED_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define LED_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define LED_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set IO_RC1 aliases
#define IO_RC1_TRIS                 TRISCbits.TRISC1
#define IO_RC1_LAT                  LATCbits.LATC1
#define IO_RC1_PORT                 PORTCbits.RC1
#define IO_RC1_ANS                  ANSELCbits.ANSC1
#define IO_RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define IO_RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define IO_RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define IO_RC1_GetValue()           PORTCbits.RC1
#define IO_RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define IO_RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define IO_RC1_SetAnalogMode()      do { ANSELCbits.ANSC1 = 1; } while(0)
#define IO_RC1_SetDigitalMode()     do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set IO_RC2 aliases
#define IO_RC2_TRIS                 TRISCbits.TRISC2
#define IO_RC2_LAT                  LATCbits.LATC2
#define IO_RC2_PORT                 PORTCbits.RC2
#define IO_RC2_ANS                  ANSELCbits.ANSC2
#define IO_RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define IO_RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define IO_RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define IO_RC2_GetValue()           PORTCbits.RC2
#define IO_RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define IO_RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define IO_RC2_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define IO_RC2_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set TempSNS3 aliases
#define TempSNS3_TRIS                 TRISCbits.TRISC3
#define TempSNS3_LAT                  LATCbits.LATC3
#define TempSNS3_PORT                 PORTCbits.RC3
#define TempSNS3_ANS                  ANSELCbits.ANSC3
#define TempSNS3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define TempSNS3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define TempSNS3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define TempSNS3_GetValue()           PORTCbits.RC3
#define TempSNS3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define TempSNS3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define TempSNS3_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define TempSNS3_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set TempSNS4 aliases
#define TempSNS4_TRIS                 TRISCbits.TRISC6
#define TempSNS4_LAT                  LATCbits.LATC6
#define TempSNS4_PORT                 PORTCbits.RC6
#define TempSNS4_ANS                  ANSELCbits.ANSC6
#define TempSNS4_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define TempSNS4_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define TempSNS4_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define TempSNS4_GetValue()           PORTCbits.RC6
#define TempSNS4_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define TempSNS4_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define TempSNS4_SetAnalogMode()      do { ANSELCbits.ANSC6 = 1; } while(0)
#define TempSNS4_SetDigitalMode()     do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set TempSNS5 aliases
#define TempSNS5_TRIS                 TRISCbits.TRISC7
#define TempSNS5_LAT                  LATCbits.LATC7
#define TempSNS5_PORT                 PORTCbits.RC7
#define TempSNS5_ANS                  ANSELCbits.ANSC7
#define TempSNS5_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define TempSNS5_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define TempSNS5_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define TempSNS5_GetValue()           PORTCbits.RC7
#define TempSNS5_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define TempSNS5_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define TempSNS5_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define TempSNS5_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/