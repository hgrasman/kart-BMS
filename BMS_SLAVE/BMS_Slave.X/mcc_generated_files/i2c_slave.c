
#include "i2c_slave.h"
#include <xc.h>

#define I2C_SLAVE_ADDRESS      19
#define I2C_SLAVE_MASK         127

#define DATA_MASK 0x1F
#define BALANCE_MASK 0x20
#define CALIBRATE_MASK 0x40

typedef enum
{
    I2C_IDLE,
    I2C_ADDR_TX,
    I2C_ADDR_RX,
    I2C_DATA_TX,
    I2C_DATA_RX
} i2c_slave_state_t;

/**
 Section: Global Variables
 */
volatile uint8_t i2cWrData;
volatile uint8_t i2cRdData;
volatile uint8_t i2cSlaveAddr;
static volatile i2c_slave_state_t i2cSlaveState = I2C_IDLE;

//Unions for access by main
volatile I2C_data current_Data, Temp1, Temp2, Temp3, Temp4, Temp5, Volt1;
volatile I2C_data *Temp1ptr = &Temp1; volatile I2C_data *Temp2ptr = &Temp2;
volatile I2C_data *Temp3ptr = &Temp3; volatile I2C_data *Temp4ptr = &Temp4;
volatile I2C_data *Temp5ptr = &Temp5; volatile I2C_data *Volt1ptr = &Volt1;
volatile int index = 0;
#define MAXBYTES 2;

//flag to signal balance command
volatile bool balanceFlag;

/**
 Section: Functions declaration
 */
static void I2C_Isr(void);
static void I2C_SlaveDefRdInterruptHandler(void);
static void I2C_SlaveDefWrInterruptHandler(void);
static void I2C_SlaveDefAddrInterruptHandler(void);
static void I2C_SlaveDefWrColInterruptHandler(void);
static void I2C_SlaveDefBusColInterruptHandler(void);

static void I2C_SlaveRdCallBack(void);
static void I2C_SlaveWrCallBack(void);
static void I2C_SlaveAddrCallBack(void);
static void I2C_SlaveWrColCallBack(void);
static void I2C_SlaveBusColCallBack(void);

static inline bool I2C_SlaveOpen();
static inline void I2C_SlaveClose();
static inline void I2C_SlaveSetSlaveAddr(uint8_t slaveAddr);
static inline void I2C_SlaveSetSlaveMask(uint8_t maskAddr);
static inline void I2C_SlaveEnableIrq(void);
static inline bool I2C_SlaveIsAddr(void);
static inline bool I2C_SlaveIsRead(void);
static inline void I2C_SlaveClearBuff(void);
static inline void I2C_SlaveClearIrq(void);
static inline void I2C_SlaveReleaseClock(void);
static inline bool I2C_SlaveIsWriteCollision(void);
static inline bool I2C_SlaveIsTxBufEmpty(void);
static inline bool I2C_SlaveIsData(void);
static inline void I2C_SlaveRestart(void);
static inline bool I2C_SlaveIsRxBufFull(void);
static inline void I2C_SlaveSendTxData(uint8_t data);
static inline uint8_t I2C_SlaveGetRxData(void);
static inline uint8_t I2C_SlaveGetAddr(void);
static inline void I2C_SlaveSendAck(void);
static inline void I2C_SlaveSendNack(void);
static inline bool I2C_SlaveIsOverFlow(void);

void I2C_Initialize()
{
    SSP1STAT  = 0x00;
    SSP1CON1 |= 0x06;
    SSP1CON2  = 0x01;
    SSP1CON1bits.SSPEN = 0;
}

void I2C_Open() 
{
    I2C_SlaveOpen();
    I2C_SlaveSetSlaveAddr(I2C_SLAVE_ADDRESS);
    I2C_SlaveSetSlaveMask(I2C_SLAVE_MASK);
    I2C_SlaveSetIsrHandler(I2C_Isr);
    I2C_SlaveSetBusColIntHandler(I2C_SlaveDefBusColInterruptHandler);
    I2C_SlaveSetWriteIntHandler(I2C_SlaveDefWrInterruptHandler);
    I2C_SlaveSetReadIntHandler(I2C_SlaveDefRdInterruptHandler);
    I2C_SlaveSetAddrIntHandler(I2C_SlaveDefAddrInterruptHandler);
    I2C_SlaveSetWrColIntHandler(I2C_SlaveDefWrColInterruptHandler);
    I2C_SlaveEnableIrq();    
}

void I2C_Close() 
{
    I2C_SlaveClose();
}

uint8_t I2C_Read()
{
   return I2C_SlaveGetRxData();
}

void I2C_Write(uint8_t data)
{
    I2C_SlaveSendTxData(data);
}

bool I2C_IsRead()
{
    return I2C_SlaveIsRead();
}

void I2C_Enable()
{
    I2C_Initialize();
}

void I2C_SendAck()
{
    I2C_SlaveSendAck();
}

void I2C_SendNack()
{
    I2C_SlaveSendNack();
}

static void I2C_Isr() 
{ 
    I2C_SlaveClearIrq();

    if(I2C_SlaveIsAddr())
    {
        if(I2C_SlaveIsRead())
        {
            i2cSlaveState = I2C_ADDR_TX;
        }
        else
        {
            i2cSlaveState = I2C_ADDR_RX;
        }
    }
    else
    {
        if(I2C_SlaveIsRead())
        {
            i2cSlaveState = I2C_DATA_TX;
        }
        else
        {
            i2cSlaveState = I2C_DATA_RX;
        }
    }

    switch(i2cSlaveState)
    {
        case I2C_ADDR_TX:
            I2C_SlaveAddrCallBack();
            if(I2C_SlaveIsTxBufEmpty())
            {
                I2C_SlaveWrCallBack();
            }
            break;
        case I2C_ADDR_RX:
            I2C_SlaveAddrCallBack();
            break;
        case I2C_DATA_TX:
            if(I2C_SlaveIsTxBufEmpty())
            {
                I2C_SlaveWrCallBack();
            }
            break;
        case I2C_DATA_RX:
            if(I2C_SlaveIsRxBufFull())
            {
                I2C_SlaveRdCallBack();
            }
            break;
        default:
            break;
    }
    I2C_SlaveReleaseClock();
}

// Common Event Interrupt Handlers
void I2C_SlaveSetIsrHandler(i2cInterruptHandler handler)
{
    MSSP_InterruptHandler = handler;
}

// Read Event Interrupt Handlers
void I2C_SlaveSetReadIntHandler(i2cInterruptHandler handler) {
    I2C_SlaveRdInterruptHandler = handler;
}

static void I2C_SlaveRdCallBack() {
    // Add your custom callback code here
    if (I2C_SlaveRdInterruptHandler) 
    {
        I2C_SlaveRdInterruptHandler();
    }
    index = 0; //reset response index
    //queue up data for sendback. mask top 5 bits
    switch (i2cRdData & DATA_MASK){
        case (0x01):
            current_Data.value = Temp1.value; //copy current temp1
            break;
        case (0x02):
            current_Data.value = Temp2.value;
            break;
        case (0x03):
            current_Data.value = Temp3.value;
            break;
        case (0x04):
            current_Data.value = Temp4.value;
            break;
        case (0x05):
            current_Data.value = Temp5.value;
            break;
        case (0x11):
            current_Data.value = Volt1.value;
            break;
        default:
            current_Data.value = (uint16_t) 0xFFFF;
            break;      
    }
    
    //set balance flag if bit is set
    if (i2cRdData & BALANCE_MASK){balanceFlag = true;}
}

static void I2C_SlaveDefRdInterruptHandler() {
    i2cRdData = I2C_SlaveGetRxData();
}

// Write Event Interrupt Handlers
void I2C_SlaveSetWriteIntHandler(i2cInterruptHandler handler) {
    I2C_SlaveWrInterruptHandler = handler;
}

static void I2C_SlaveWrCallBack() {
    // Add your custom callback code here
    i2cWrData = current_Data.raw[index++]; //queue up byte from pointed value
    index = index%MAXBYTES;
    if (I2C_SlaveWrInterruptHandler) 
    {
        I2C_SlaveWrInterruptHandler();
    }
}

static void I2C_SlaveDefWrInterruptHandler() {
    I2C_SlaveSendTxData(i2cWrData);
}

// ADDRESS Event Interrupt Handlers
void I2C_SlaveSetAddrIntHandler(i2cInterruptHandler handler){
    I2C_SlaveAddrInterruptHandler = handler;
}

static void I2C_SlaveAddrCallBack() {
    // Add your custom callback code here
    if (I2C_SlaveAddrInterruptHandler) {
        I2C_SlaveAddrInterruptHandler();
    }
}

static void I2C_SlaveDefAddrInterruptHandler() {
    i2cSlaveAddr = I2C_SlaveGetRxData();
}

// Write Collision Event Interrupt Handlers
void I2C_SlaveSetWrColIntHandler(i2cInterruptHandler handler){
    I2C_SlaveWrColInterruptHandler = handler;
}

static void  I2C_SlaveWrColCallBack() {
    // Add your custom callback code here
    if ( I2C_SlaveWrColInterruptHandler) 
    {
         I2C_SlaveWrColInterruptHandler();
    }
}

static void I2C_SlaveDefWrColInterruptHandler() {
}

// Bus Collision Event Interrupt Handlers
void I2C_SlaveSetBusColIntHandler(i2cInterruptHandler handler){
    I2C_SlaveBusColInterruptHandler = handler;
}

static void  I2C_SlaveBusColCallBack() {
    // Add your custom callback code here
    if ( I2C_SlaveBusColInterruptHandler) 
    {
         I2C_SlaveBusColInterruptHandler();
    }
}

static void I2C_SlaveDefBusColInterruptHandler() {
}

static inline bool I2C_SlaveOpen()
{
    if(!SSP1CON1bits.SSPEN)
    {      
        SSP1STAT  = 0x00;
        SSP1CON1 |= 0x06;
        SSP1CON2  = 0x01;
        SSP1CON1bits.SSPEN = 1;
        return true;
    }
    return false;
}

static inline void I2C_SlaveClose()
{
    SSP1STAT  = 0x00;
    SSP1CON1 |= 0x06;
    SSP1CON2  = 0x01;
    SSP1CON1bits.SSPEN = 0;
}

static inline void I2C_SlaveSetSlaveAddr(uint8_t slaveAddr)
{
    SSP1ADD = (uint8_t) (slaveAddr << 1);
}

static inline void I2C_SlaveSetSlaveMask(uint8_t maskAddr)
{
    SSP1MSK = (uint8_t) (maskAddr << 1);
}

static inline void I2C_SlaveEnableIrq()
{
    PIE1bits.SSP1IE = 1;
}

static inline bool I2C_SlaveIsAddr()
{
    return !(SSP1STATbits.D_nA);
}

static inline bool I2C_SlaveIsRead()
{
    return (SSP1STATbits.R_nW);
}

static inline void I2C_SlaveClearIrq()
{
    PIR1bits.SSP1IF = 0;
}

static inline void I2C_SlaveReleaseClock()
{
    SSP1CON1bits.CKP = 1;
}

static inline bool I2C_SlaveIsWriteCollision()
{
    return SSP1CON1bits.WCOL;
}

static inline bool I2C_SlaveIsData()
{
    return SSP1STATbits.D_nA;
}

static inline void I2C_SlaveRestart(void)
{
    SSP1CON2bits.RSEN = 1;
}

static inline bool I2C_SlaveIsTxBufEmpty()
{
    return !SSP1STATbits.BF;
}

static inline bool I2C_SlaveIsRxBufFull()
{
    return SSP1STATbits.BF;
}

static inline void I2C_SlaveSendTxData(uint8_t data)
{
    SSP1BUF = data;
}

static inline uint8_t I2C_SlaveGetRxData()
{
    return SSP1BUF;
}

static inline uint8_t I2C_SlaveGetAddr()
{
    return SSP1ADD;
}

static inline void I2C_SlaveSendAck()
{
    SSP1CON2bits.ACKDT = 0;
    SSP1CON2bits.ACKEN = 1;
}

static inline void I2C_SlaveSendNack()
{
    SSP1CON2bits.ACKDT = 1;
    SSP1CON2bits.ACKEN = 1;
}

static inline bool I2C_SlaveIsOverFlow()
{
    return SSP1CON1bits.SSPOV;
}