/* 
 * File:   kart_def.h
 * Author: pcguy
 *
 * Created on June 5, 2023, 4:26 PM
 */

#ifndef KART_DEF_H
#define	KART_DEF_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* KART_DEF_H */

//include defs listed here:
#include "definitions.h"
#include "FreeRTOS.h"
#include "queue.h"



//macro defs listed here:

//cutoffs for kart
#define MINV_LOADED 3.0
#define MINV 3.2
#define HIGHV 4.2
#define HIGH_TEMP 60
#define BALANCE_THRESH 0.0


//basic telemetry info regarding thermistors
#define THERM_COUNT 5
#define CONTROL_VOLT 0x11


//I2C address defs
#define START_ADDRESS 8
#define END_ADDRESS 19
#define TOTAL_REMOTE (END_ADDRESS-START_ADDRESS+1)
#define ARR_ADDR(in) (in-START_ADDRESS)

//macro functions for ease of readability when performing relay checks
#define TEMP_CHECK(in) (in >= HIGH_TEMP)
#define LV_CHECK(in) (in <= MINV_LOADED)
#define LV_RESET(in) (in >= MINV)


//balance check
#define BAL_REQUIRED(in, average) (in >= (average+BALANCE_THRESH))
