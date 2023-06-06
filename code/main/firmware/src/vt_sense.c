/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    vt_sense.c

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

#include "vt_sense.h"

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
    This structure should be initialized by the VT_SENSE_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

VT_SENSE_DATA vt_senseData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

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
    void VT_SENSE_Initialize ( void )

  Remarks:
    See prototype in vt_sense.h.
 */

void VT_SENSE_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    vt_senseData.state = VT_SENSE_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void VT_SENSE_Tasks ( void )

  Remarks:
    See prototype in vt_sense.h.
 */

void VT_SENSE_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( vt_senseData.state )
    {
        /* Application's initial state. */
        case VT_SENSE_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                vt_senseData.state = VT_SENSE_STATE_SERVICE_TASKS;
            }
            break;
        }

        case VT_SENSE_STATE_SERVICE_TASKS:
        {

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
