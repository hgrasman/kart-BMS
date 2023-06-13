/* 
 * File:   startup.h
 * Author: pcguy
 *
 * Created on May 22, 2023, 8:18 AM
 */

#ifndef STARTUP_H
#define	STARTUP_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* STARTUP_H */

//need global kart defs, 2 timers, and boolean for the initial setup
#include "kart_def.h"
#include "config/main/peripheral/tc/plib_tc0.h"
#include "config/main/peripheral/tc/plib_tc1.h"


//function defs here
void relayOpen(void);
void relayClose(void);
void relayOpen_Stage1(uint32_t, uintptr_t);
void relayOpen_Stage2(uint32_t, uintptr_t);
void Relay_Setup(void);

//include any macro defs here
