/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    checks.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "checks.h"
#include "kart_def.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the CHECKS_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

struct dataIn{
    float pack_voltage;
    float max_temp;
    float min_volt;
    float averageVolt;
    float max_volt;
}sums;

struct current{
    float amps;
}IC;

enum chargeMode{
    DISCHARGING, 
    IDLE, 
    CHARGING
};
enum chargeMode state;
CHECKS_DATA checksData;

bool dischargeRequested;
bool balanceOn;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

extern void relayOpen();
/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void CHECKS_Initialize ( void )

  Remarks:
    See prototype in checks.h.
 */

void CHECKS_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    checksData.state = CHECKS_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void CHECKS_Tasks ( void )

  Remarks:
    See prototype in checks.h.
 */

void CHECKS_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( checksData.state )
    {
        /* Application's initial state. */
        case CHECKS_STATE_INIT:
        {
            bool appInitialized = true;
            state = IDLE;
            if (appInitialized)
            {

                checksData.state = CHECKS_STATE_SERVICE_TASKS;
            }
            break;
        }

        case CHECKS_STATE_SERVICE_TASKS:
        {
            //heuristics to see what state we are in
            switch(state){
                //we can only reach this state from IDLE - we cannot enter immediately from charging
                case DISCHARGING:
                    if(LV_CHECK(sums.min_volt) || dischargeRequested == false){
                        MCR_Clear();
                        state = IDLE;
                    }
                    break;
                //only can come in from idle state
                case CHARGING:
                    //if amperage is sub 1.75, balancing is pretty much done, same if pack voltage is above 50 V
                    if(IC.amps < 1.75 && sums.pack_voltage >= 50.0){
                        state = IDLE;
                        //turn off balance circuit here
                        balanceOn = false;
                    }
                    break;
                case IDLE:
                    //since we always charge above 10 A, we will know when we are in charge mode
                    //to prevent unnecessary balancing, we only need to turn it on once we hit 48V+
                    if(IC.amps >= 10.0 && sums.pack_voltage >= 48 && dischargeRequested == false){
                        //turn on balancingCircuit here
                        balanceOn = true;
                        state = CHARGING;
                        //we know we are charging
                        goto moveStates;
                    }
                    if(LV_RESET(sums.min_volt) && dischargeRequested){
                        PCCR_Set();
                        vTaskDelay(pdMS_TO_TICKS(900));
                        MCR_Set();
                        vTaskDelay(pdMS_TO_TICKS(100));
                        PCCR_Clear();
                        state = DISCHARGING;
                        goto moveStates;
                    }
                    
                    //conditionals move here
                    moveStates:
                    break;
            } //end switch
            
            //need to insert code here to notify the I2C and SAMC threads to restart
            
            
            //send balanceOn result back to I2C and vt_sense threads
            
            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
