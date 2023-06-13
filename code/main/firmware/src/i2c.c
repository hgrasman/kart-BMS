/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    i2c.c

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

#include "i2c.h"
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
    This structure should be initialized by the I2C_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/
DRV_HANDLE I2C_Driver;
I2C_DATA i2cData;

union I2C_Recieve{
    uint8_t raw[2];
    uint16_t value;
}handler;

struct I2C_Data{
    uint8_t ID;
    uint16_t rawVolts[TOTAL_REMOTE];
    uint16_t rawTemps[TOTAL_REMOTE][THERM_COUNT];
} toSend;
bool balance[TOTAL_REMOTE];

QueueHandle_t i2cToAverage;
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
    void I2C_Initialize ( void )

  Remarks:
    See prototype in i2c.h.
 */

void I2C_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    i2cData.state = I2C_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void I2C_Tasks ( void )

  Remarks:
    See prototype in i2c.h.
 */

void I2C_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( i2cData.state )
    {
        /* Application's initial state. */
        case I2C_STATE_INIT:
        {
            i2cToAverage = xQueueCreate(1, sizeof(toSend));
            I2C_Driver = DRV_I2C_Open(DRV_I2C_INDEX_0, (DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_NONBLOCKING | DRV_IO_INTENT_EXCLUSIVE));
            if (I2C_Driver == DRV_HANDLE_INVALID){
                //need to add in error correction here to get driver started
                
            }
            toSend.ID = 1; // this is the raw remote voltage and temps data
            bool appInitialized = true;


            if (appInitialized)
            {

                i2cData.state = I2C_STATE_SERVICE_TASKS;
            }
            break;
        }

        case I2C_STATE_SERVICE_TASKS:
        {
            I2C_Loop();
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

void I2C_Loop(){
    
    uint8_t command = 0x00;
    DRV_I2C_TRANSFER_HANDLE transferHandle;
    for(int i=START_ADDRESS;i<=END_ADDRESS;i++){
        command = (CONTROL_VOLT | balance[ARR_ADDR(i)]<<5);
        DRV_I2C_WriteTransferAdd(I2C_Driver, i, &command, 1, &transferHandle);
        vTaskDelay(pdMS_TO_TICKS(6));
        if(DRV_I2C_ErrorGet(transferHandle) == DRV_I2C_ERROR_NACK){
            //error - need to correct
        }
        //safe to continue
        DRV_I2C_ReadTransferAdd(I2C_Driver, i, handler.raw, 2, &transferHandle);
        vTaskDelay(pdMS_TO_TICKS(6));
        toSend.rawVolts[ARR_ADDR(i)] = (toSend.rawVolts[ARR_ADDR(i)] > 0) 
                ?(uint16_t) (0.85*(float)(toSend.rawVolts[ARR_ADDR(i)]) + 0.15*(float)(handler.value))
                :(uint16_t)handler.value;
        
       for(int j=0;j<THERM_COUNT;j++){
           command = ((uint8_t) (j+1) | balance[ARR_ADDR(i)] >> 5);
           DRV_I2C_WriteTransferAdd(I2C_Driver, i, &command, 1, &transferHandle);
           vTaskDelay(pdMS_TO_TICKS(6));
           if(DRV_I2C_ErrorGet(transferHandle)==DRV_I2C_ERROR_NACK){
               //bus lost -- need error correcting here
           }
           DRV_I2C_ReadTransferAdd(I2C_Driver, i, handler.raw, 2, &transferHandle);
           toSend.rawTemps[ARR_ADDR(i)][j] = (toSend.rawTemps[ARR_ADDR(i)][j] > 0) 
                   ? (uint16_t) (0.85*(float)(toSend.rawTemps[ARR_ADDR(i)][j]) + 0.15*(float)(handler.value))
                   :(uint16_t)handler.value;
           vTaskDelay(pdMS_TO_TICKS(3));
       }//end inner for
        vTaskDelay(pdMS_TO_TICKS(3));
    } // end outer for
    xQueueSendToBack(i2cToAverage, &(toSend), 0);
}
/*******************************************************************************
 End of File
 */
