/* 
 * File:   samc21Config.h
 * Author: pcguy
 *
 * Created on January 21, 2023, 4:14 PM
 */

#ifndef SAMC21CONFIG_H
#define	SAMC21CONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	
/* SAMC21CONFIG_H */
// ATSAMC21E17A Configuration Bit Settings

// 'C' source line config statements

// Config Source code for XC32 compiler.
// USER_WORD_0
#pragma config NVMCTRL_BOOTPROT = SIZE_32768BYTES
#pragma config NVMCTRL_EEPROM_SIZE = SIZE_16384BYTES
#pragma config BODVDDUSERLEVEL = 0x0 // Enter Hexadecimal value
#pragma config BODVDD_DIS = DISABLED
#pragma config BODVDD_ACTION = NONE
#pragma config WDT_ENABLE = DISABLED
#pragma config WDT_ALWAYSON = DISABLED
#pragma config WDT_PER = CYC8

// USER_WORD_1
#pragma config WDT_WINDOW = CYC8
#pragma config WDT_EWOFFSET = CYC8
#pragma config WDT_WEN = DISABLED
#pragma config BODVDD_HYST = DISABLED
#pragma config NVMCTRL_REGION_LOCKS = 0x0 // Enter Hexadecimal value

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

