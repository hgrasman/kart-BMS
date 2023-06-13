/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    average.c

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

#include "average.h"
#include "kart_def.h"
#include <math.h>

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
    This structure should be initialized by the AVERAGE_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

AVERAGE_DATA averageData;
extern QueueHandle_t i2cToAverage;


struct dataInRemote{
    uint8_t ID;
    uint16_t rawVoltages[TOTAL_REMOTE];
    uint16_t rawTemps[TOTAL_REMOTE][THERM_COUNT];
    
}i2c;

struct dataInSAMC{
    uint16_t rawVoltage;
    uint16_t rawTemps[THERM_COUNT];
}samc;

struct dataOut{
    float pack_voltage;
    float max_temp;
    float min_volt;
    float averageVolt;
    float max_volt;
}sendOut;

struct floats{
    float cellVoltages[TOTAL_REMOTE+1];
    float cellTemps[TOTAL_REMOTE+1][THERM_COUNT];
}convert;

struct bal{
    bool balance[TOTAL_REMOTE];
}remote;

bool samc_bal;

float placeholder;
float temp_OHMS;
float temp_C;
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
    void AVERAGE_Initialize ( void )

  Remarks:
    See prototype in average.h.
 */

void AVERAGE_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    averageData.state = AVERAGE_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void AVERAGE_Tasks ( void )

  Remarks:
    See prototype in average.h.
 */

void AVERAGE_Tasks ( void )
{
    
    /* Check the application's current state. */
    switch ( averageData.state )
    {
        /* Application's initial state. */
        case AVERAGE_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                averageData.state = AVERAGE_STATE_SERVICE_TASKS;
            }
            break;
        }

        case AVERAGE_STATE_SERVICE_TASKS:
        {
            xQueueReceive(i2cToAverage, &(i2c), portMAX_DELAY);
            for(int i=0;i<TOTAL_REMOTE; i++){
                placeholder = (2.048*1024)/ (float)i2c.rawVoltages[i];
                convert.cellVoltages[i] = placeholder;
                sendOut.pack_voltage += placeholder;
                if(placeholder > sendOut.max_volt){
                    sendOut.max_volt = placeholder;
                }
                else if(placeholder < sendOut.min_volt){
                    sendOut.min_volt = placeholder;
                }
                
                for(int j=0;j<THERM_COUNT;j++){
                    temp_OHMS = -(100000*i2c.rawTemps[i][j]) / (i2c.rawTemps[i][j]-1024);
                    temp_C = 55.31* exp((temp_OHMS/1000)/-0.07449) + 63.29*exp((temp_OHMS/1000)*-0.009305);
                    convert.cellTemps[i][j] = temp_C;
                    if(temp_C < 500){
                        if(temp_C > sendOut.max_temp){
                            sendOut.max_temp = temp_C;
                        }
                    }
                }
            }
            //todo - place blocking queue here to wait for SAMC values
            
            placeholder = (2.048*1024) / (float)samc.rawVoltage;
            sendOut.pack_voltage += placeholder;
            sendOut.averageVolt = sendOut.pack_voltage / (TOTAL_REMOTE+1);
            convert.cellVoltages[TOTAL_REMOTE] = placeholder;
            
            for(int j=0;j<THERM_COUNT;j++){
                temp_OHMS = -(100000*samc.rawTemps[j]) / (samc.rawTemps[j]-1024);
                temp_C = 55.31* exp((temp_OHMS/1000)/-0.07449) + 63.29*exp((temp_OHMS/1000)*-0.009305);
                if(temp_C < 500){
                    if(temp_C > sendOut.max_temp){
                        sendOut.max_temp = temp_C;
                    }
                }
            }
            
            //calculate cells to be balanced - this may become moot
            for(int index=0;index<TOTAL_REMOTE;index++){
                remote.balance[index] = (BAL_REQUIRED(convert.cellVoltages[index], sendOut.pack_voltage))
                        ? true
                        : false;

            }
            samc_bal = (BAL_REQUIRED(convert.cellVoltages[TOTAL_REMOTE], sendOut.pack_voltage))
                    ?true
                    :false;
            //TODO - notify checks thread to run
            
            //todo - place the balancing results into a queue for the I2C and SAMC threads
            
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
