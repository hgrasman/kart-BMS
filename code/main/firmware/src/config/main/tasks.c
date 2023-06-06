/*******************************************************************************
 System Tasks File

  File Name:
    tasks.c

  Summary:
    This file contains source code necessary to maintain system's polled tasks.

  Description:
    This file contains source code necessary to maintain system's polled tasks.
    It implements the "SYS_Tasks" function that calls the individual "Tasks"
    functions for all polled MPLAB Harmony modules in the system.

  Remarks:
    This file requires access to the systemObjects global data structure that
    contains the object handles to all MPLAB Harmony module objects executing
    polled in the system.  These handles are passed into the individual module
    "Tasks" functions to identify the instance of the module to maintain.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "configuration.h"
#include "definitions.h"


// *****************************************************************************
// *****************************************************************************
// Section: RTOS "Tasks" Routine
// *****************************************************************************
// *****************************************************************************
/* Handle for the I2C_Tasks. */
TaskHandle_t xI2C_Tasks;

void _I2C_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        I2C_Tasks();
    }
}
/* Handle for the CAN_Tasks. */
TaskHandle_t xCAN_Tasks;

void _CAN_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        CAN_Tasks();
    }
}
/* Handle for the VT_SENSE_Tasks. */
TaskHandle_t xVT_SENSE_Tasks;

void _VT_SENSE_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        VT_SENSE_Tasks();
    }
}
/* Handle for the AVERAGE_Tasks. */
TaskHandle_t xAVERAGE_Tasks;

void _AVERAGE_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        AVERAGE_Tasks();
    }
}
/* Handle for the CURRENT_Tasks. */
TaskHandle_t xCURRENT_Tasks;

void _CURRENT_Tasks(  void *pvParameters  )
{   
    while(1)
    {
        CURRENT_Tasks();
    }
}




// *****************************************************************************
// *****************************************************************************
// Section: System "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void SYS_Tasks ( void )

  Remarks:
    See prototype in system/common/sys_module.h.
*/
void SYS_Tasks ( void )
{
    /* Maintain system services */
    

    /* Maintain Device Drivers */
    

    /* Maintain Middleware & Other Libraries */
    

    /* Maintain the application's state machine. */
        /* Create OS Thread for I2C_Tasks. */
    xTaskCreate((TaskFunction_t) _I2C_Tasks,
                "I2C_Tasks",
                512,
                NULL,
                1,
                &xI2C_Tasks);

    /* Create OS Thread for CAN_Tasks. */
    xTaskCreate((TaskFunction_t) _CAN_Tasks,
                "CAN_Tasks",
                128,
                NULL,
                1,
                &xCAN_Tasks);

    /* Create OS Thread for VT_SENSE_Tasks. */
    xTaskCreate((TaskFunction_t) _VT_SENSE_Tasks,
                "VT_SENSE_Tasks",
                512,
                NULL,
                1,
                &xVT_SENSE_Tasks);

    /* Create OS Thread for AVERAGE_Tasks. */
    xTaskCreate((TaskFunction_t) _AVERAGE_Tasks,
                "AVERAGE_Tasks",
                512,
                NULL,
                1,
                &xAVERAGE_Tasks);

    /* Create OS Thread for CURRENT_Tasks. */
    xTaskCreate((TaskFunction_t) _CURRENT_Tasks,
                "CURRENT_Tasks",
                512,
                NULL,
                3,
                &xCURRENT_Tasks);




    /* Start RTOS Scheduler. */
    
     /**********************************************************************
     * Create all Threads for APP Tasks before starting FreeRTOS Scheduler *
     ***********************************************************************/
    vTaskStartScheduler(); /* This function never returns. */

}

/*******************************************************************************
 End of File
 */

