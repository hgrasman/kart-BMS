#include "startup.h"

//boolean for ensuring we don't start controls unless kart is 
bool starting;
/**
 * This function will perform the kart startup sequence if the conditions are
 * correct. This involves:
 *      The high temp check is good
 *      The voltages are within 3.2-4.2V
 *      The I2C bus is communicating and active.
 * In addiiton, this may also be used to restart the kart if the LV trigger
 * occurs and the voltage goes back above 3.2V.
 */
void relayOpen(){
    TC0_Timer16bitCounterSet(0x00);
    TC1_Timer16bitCounterSet(0x00);
    //set blocking var up
    starting = true;
    //start precharge
    PCCR_Set();
    //start timer sequencing for relay open
    TC0_TimerStart();
    //blocking to wait for the relay setup to finish
    while (starting){}
    TC1_TimerStop(); // JIC the timer is still running
    TC0_TimerStop();
}
/**
 * This function will immediately cut kart power if any of the following occur:
 *      The hottest part of the pack >= 60C.
 *      The lowest battery cell voltage potential <=3.0V
 *      I2C communication  is lost on the pack.
 */
void relayClose(){
    PCCR_Clear(); // JIC PCCR is open
    MCR_Clear();
}

/**
 * ISR to close main relay
 * @param status ISR status. Not used in this instance.
 * @param context ISR context. Not used in this instance.
 */
void relayOpen_Stage1(uint32_t status, uintptr_t context){
    MCR_Set(); // set main charge relay
    TC1_TimerStart(); //1-line func call; will be quick
}

/**
 * ISR to close precharge relay and advance execution.
 * @param status ISR status. Not used in this instance.
 * @param context ISR context. Not used in this instance.
 */
void relayOpen_Stage2(uint32_t status, uintptr_t context){
    PCCR_Clear(); //open precharge relay
    starting = false; // set blocking var to proceed
}

//function to initialize kart startup sequence
void Relay_Setup(){
    //make sure the relays are OFF
    PCCR_Clear();
    MCR_Clear();
    //set up timer initalizations
    void TC0_TimerInitialize( void );
    void TC1_TimerInitialize( void );
    //set up the ISRs to go to the above 2 functions
    TC0_TimerCallbackRegister(relayOpen_Stage1, (uintptr_t) NULL);
    TC1_TimerCallbackRegister(relayOpen_Stage2, (uintptr_t) NULL);
}
