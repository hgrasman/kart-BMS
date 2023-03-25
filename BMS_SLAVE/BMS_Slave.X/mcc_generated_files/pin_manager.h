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

// get/set TSNS1 aliases
#define TSNS1_TRIS                 TRISAbits.TRISA2
#define TSNS1_LAT                  LATAbits.LATA2
#define TSNS1_PORT                 PORTAbits.RA2
#define TSNS1_WPU                  WPUAbits.WPUA2
#define TSNS1_ANS                  ANSELAbits.ANSA2
#define TSNS1_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define TSNS1_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define TSNS1_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define TSNS1_GetValue()           PORTAbits.RA2
#define TSNS1_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define TSNS1_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define TSNS1_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define TSNS1_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define TSNS1_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define TSNS1_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set TSNS2 aliases
#define TSNS2_TRIS                 TRISAbits.TRISA4
#define TSNS2_LAT                  LATAbits.LATA4
#define TSNS2_PORT                 PORTAbits.RA4
#define TSNS2_WPU                  WPUAbits.WPUA4
#define TSNS2_ANS                  ANSELAbits.ANSA4
#define TSNS2_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define TSNS2_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define TSNS2_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define TSNS2_GetValue()           PORTAbits.RA4
#define TSNS2_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define TSNS2_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define TSNS2_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define TSNS2_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define TSNS2_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define TSNS2_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

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

// get/set Balance aliases
#define Balance_TRIS                 TRISBbits.TRISB7
#define Balance_LAT                  LATBbits.LATB7
#define Balance_PORT                 PORTBbits.RB7
#define Balance_WPU                  WPUBbits.WPUB7
#define Balance_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define Balance_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define Balance_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define Balance_GetValue()           PORTBbits.RB7
#define Balance_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define Balance_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define Balance_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define Balance_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set TSNS3 aliases
#define TSNS3_TRIS                 TRISCbits.TRISC3
#define TSNS3_LAT                  LATCbits.LATC3
#define TSNS3_PORT                 PORTCbits.RC3
#define TSNS3_ANS                  ANSELCbits.ANSC3
#define TSNS3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define TSNS3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define TSNS3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define TSNS3_GetValue()           PORTCbits.RC3
#define TSNS3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define TSNS3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define TSNS3_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define TSNS3_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set TSNS4 aliases
#define TSNS4_TRIS                 TRISCbits.TRISC6
#define TSNS4_LAT                  LATCbits.LATC6
#define TSNS4_PORT                 PORTCbits.RC6
#define TSNS4_ANS                  ANSELCbits.ANSC6
#define TSNS4_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define TSNS4_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define TSNS4_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define TSNS4_GetValue()           PORTCbits.RC6
#define TSNS4_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define TSNS4_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define TSNS4_SetAnalogMode()      do { ANSELCbits.ANSC6 = 1; } while(0)
#define TSNS4_SetDigitalMode()     do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set TSNS5 aliases
#define TSNS5_TRIS                 TRISCbits.TRISC7
#define TSNS5_LAT                  LATCbits.LATC7
#define TSNS5_PORT                 PORTCbits.RC7
#define TSNS5_ANS                  ANSELCbits.ANSC7
#define TSNS5_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define TSNS5_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define TSNS5_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define TSNS5_GetValue()           PORTCbits.RC7
#define TSNS5_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define TSNS5_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define TSNS5_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define TSNS5_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)

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