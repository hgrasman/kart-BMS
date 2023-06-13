/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    current.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and  "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "current.h"
#include "kart_def.h"
#include "config/main/peripheral/tcc/plib_tcc0.h"
#include "config/main/peripheral/adc/plib_adc1.h"

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
    This structure should be initialized by the CURRENT_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/
#define SAMPLE_RATE 10000
#define PERIOD 1/SAMPLE_RATE
#define REFERENCE 3.3


CURRENT_DATA currentData;
extern TaskHandle_t xCURRENT_Tasks;

struct currentStructure{
    float result;
}instantCurrent;

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
    void CURRENT_Initialize ( void )

  Remarks:
    See prototype in current.h.
 */

void CURRENT_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    currentData.state = CURRENT_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void CURRENT_Tasks ( void )

  Remarks:
    See prototype in current.h.
 */

void CURRENT_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( currentData.state )
    {
        /* Application's initial state. */
        case CURRENT_STATE_INIT:
        {
            TCC0_TimerCallbackRegister(StartSensing, (uintptr_t) NULL);
            bool appInitialized = true;


            if (appInitialized)
            {
                
                currentData.state = CURRENT_STATE_SERVICE_TASKS;
            }
            break;
        }

        case CURRENT_STATE_SERVICE_TASKS:
        {
            Current_Sense_Loop();
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

void Current_Sense_Loop(){
    float currentSample;
    float lastSample = 0.0;
    float AoC;
    float coulombsPassed;
    float current;
    
    for(;;){
        LED_Set();
        ADC1_ConversionStart();
        AoC = lastSample * PERIOD;
        while(!ADC1_ConversionSequenceIsFinished()){}
        currentSample = ((float)ADC1_ConversionResultGet())*REFERENCE/1024;
        coulombsPassed = PERIOD * (currentSample-lastSample);
        current = AoC + coulombsPassed;
        instantCurrent.result = current;
        lastSample = currentSample;
        LED_Clear();
        //TODO - place current results into struct, need to add in a queue overwrite later for CAN
        ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
        
    }
}

void StartSensing(uint32_t status, uintptr_t context){
    BaseType_t pxHigherPriorityTaskWoken = pdFALSE;
    xTaskNotifyFromISR(xCURRENT_Tasks, 0, eNoAction, &(pxHigherPriorityTaskWoken));
    portYIELD_FROM_ISR(pxHigherPriorityTaskWoken);
}
/*******************************************************************************
 End of File
 */
