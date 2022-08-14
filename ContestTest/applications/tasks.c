/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-03     isaac       the first version
 */
#include <rtthread.h>
#include "tasks.h"
//#include "libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_flexcan.h"
#include "fsl_flexcan.h"
#include "fsl_iomuxc.h"
#include "fsl_clock.h"
#include "fsl_gpio.h"

#define RX_MESSAGE_BUFFER_NUM (10)
#define TX_MESSAGE_BUFFER_NUM (9)
/* Select 60M clock divided by USB1 PLL (480 MHz) as master flexcan clock source */
#define FLEXCAN_CLOCK_SOURCE_SELECT (0U)
/* Clock divider for master flexcan clock source */
#define FLEXCAN_CLOCK_SOURCE_DIVIDER (2U)
/* Get frequency of flexcan clock */
#define EXAMPLE_CAN_CLK_FREQ ((CLOCK_GetFreq(kCLOCK_Usb1PllClk) / 8) / (FLEXCAN_CLOCK_SOURCE_DIVIDER + 1U))




void task_can(void *parameter){

   flexcan_handle_t flexcanHandle;
   volatile bool txComplete = false;
   volatile bool rxComplete = false;
   volatile bool wakenUp    = false;
   flexcan_mb_transfer_t txXfer, rxXfer;
   flexcan_config_t flexcanConfig;
   flexcan_rx_mb_config_t mbConfig;
   flexcan_frame_t frame;
   uint32_t txIdentifier = 0x123;
   uint32_t rxIdentifier = 0x17C;
   status_t result;
   volatile uint32_t dlc = 0;
    /**
     * Spawn CAN Task.
     * void FLEXCAN_Init(CAN_Type *base, const flexcan_config_t *pConfig, uint32_t sourceClock_Hz);
     * status_t FLEXCAN_WriteTxMb(CAN_Type *base, uint8_t mbIdx, const flexcan_frame_t *pTxFrame);
     * void FLEXCAN_TransferCreateHandle(CAN_Type *base, flexcan_hand flexcan_transfer_callback_t callback, void *userData);
     * status_t FLEXCAN_TransferReceiveNonBlocking(CAN_Type *base, flexcan_handle_t *handle, flexcan_mb_transfer_t *pMbXfer);
     * CAN2_TX PIO_AD_B0_14
     * CAN2_RX PIO_AD_B0_15
     */
    CLOCK_EnableClock(kCLOCK_Iomuxc);
    CLOCK_EnableClock(kCLOCK_Can2);
    //Configure pin for CAN2
    IOMUXC_SetPinMux(IOMUXC_GPIO_AD_B0_14_FLEXCAN2_TX, 1U);
    IOMUXC_SetPinMux(IOMUXC_GPIO_AD_B0_15_FLEXCAN2_RX, 1U);
    IOMUXC_SetPinConfig(IOMUXC_GPIO_AD_B0_14_FLEXCAN2_TX, 0x10B0U);
    IOMUXC_SetPinConfig(IOMUXC_GPIO_AD_B0_15_FLEXCAN2_RX, 0x10B0U);

    //enable clocks
    /*Clock setting for FLEXCAN*/
    CLOCK_SetMux(kCLOCK_CanMux, FLEXCAN_CLOCK_SOURCE_SELECT);
    CLOCK_SetDiv(kCLOCK_CanDiv, FLEXCAN_CLOCK_SOURCE_DIVIDER);

    //get can defaults
    FLEXCAN_GetDefaultConfig(&flexcanConfig);
    //Use the improved timing
    flexcan_timing_config_t timing_config;
    memset(&timing_config, 0, sizeof(flexcan_timing_config_t));
    FLEXCAN_CalculateImprovedTimingValues(CAN2, flexcanConfig.baudRate, EXAMPLE_CAN_CLK_FREQ, &timing_config);
    /* Update the improved timing configuration*/
    memcpy(&(flexcanConfig.timingConfig), &timing_config, sizeof(flexcan_timing_config_t));

    //Now init the flex can
    FLEXCAN_Init(CAN2, &flexcanConfig, EXAMPLE_CAN_CLK_FREQ);

    //create a handle, in case we want to use the transfer mechanism

    /* Create FlexCAN handle structure and set call back function. */
    FLEXCAN_TransferCreateHandle(CAN2, &flexcanHandle, NULL, NULL);

    /* Set Rx Masking mechanism. */
    FLEXCAN_SetRxMbGlobalMask(CAN2, FLEXCAN_RX_MB_STD_MASK(rxIdentifier, 0, 0));

    /* Setup Rx Message Buffer. */
    mbConfig.format = kFLEXCAN_FrameFormatStandard;
    mbConfig.type   = kFLEXCAN_FrameTypeData;
    mbConfig.id     = FLEXCAN_ID_STD(rxIdentifier);
    //Setup the RX Mailbox
    FLEXCAN_SetRxMbConfig(CAN2, RX_MESSAGE_BUFFER_NUM, &mbConfig, true);

    //Setup a TX Mailbox

    FLEXCAN_SetTxMbConfig(CAN2, TX_MESSAGE_BUFFER_NUM, true);

    //Lets create a message to transmit

    frame.id     = FLEXCAN_ID_STD(txIdentifier);
    frame.format = (uint8_t)kFLEXCAN_FrameFormatStandard;
    frame.type   = (uint8_t)kFLEXCAN_FrameTypeData;
    frame.length = (uint8_t)8;
    txXfer.mbIdx = (uint8_t)TX_MESSAGE_BUFFER_NUM;
    txXfer.frame = &frame;
    frame.dataByte0 = 0;
    //send the data.
    //FLEXCAN_TransferSendNonBlocking(EXAMPLE_CAN, &flexcanHandle, &txXfer);
    //result = FLEXCAN_TransferSendBlocking(CAN2, 0, &frame);
    FLEXCAN_WriteTxMb(CAN2, TX_MESSAGE_BUFFER_NUM, &frame);
/*    if(result != kStatus_Success){
        rt_thread_mdelay(1000);
    }*/
    while(1){
    frame.dataByte0++;
    //FLEXCAN_TransferSendBlocking(CAN2, 0, &frame);
    rt_thread_mdelay(1000);
    result = FLEXCAN_WriteTxMb(CAN2, TX_MESSAGE_BUFFER_NUM, &frame);
    if(result != kStatus_Success){
        rt_thread_mdelay(1000);
    }
   /*
    * ID: 17C, C,D - RPM
    * ID: 164, E,F - Vehicle Speed
    * ID: 309, C - Left Wheel Speed(km), D - Right Wheel Speed (km)
    *
    * Also look here:
    *   https://github.com/commaai/opendbc
    */
    //result = FLEXCAN_ReadRxFifo(CAN2, &frame);
    result = FLEXCAN_ReadRxMb(CAN2, RX_MESSAGE_BUFFER_NUM, &frame);
    if(result == kStatus_Success){
        dlc = frame.length;
        // Get the data from the message
        // Send the data to the display either directly from here or via a message queue.
        //let's send back a response so they know we received it.
        frame.dataByte7++;
        FLEXCAN_WriteTxMb(CAN2, TX_MESSAGE_BUFFER_NUM, &frame);
    }

    }


}


#define CAN_THREAD_STACK_SIZE 4096
#define CAN_THREAD_PRIO (RT_THREAD_PRIORITY_MAX * 3 / 8)

static struct rt_thread can_thread;
static rt_uint8_t can_thread_stack[CAN_THREAD_STACK_SIZE];

void start_canTask(void){

    rt_thread_init(&can_thread,
                   "CAN",
                   task_can,
                   RT_NULL,
                   &can_thread_stack[0],
                   sizeof(can_thread_stack),
                   CAN_THREAD_PRIO,
                   10);
    rt_thread_startup(&can_thread);
}
//INIT_APP_EXPORT(start_canTask); //TODO: Explain that this thread begins at startup.
