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
#include "gui_guider.h"
#include "lvgl.h"

#define RX_CAN_RPM_MESSAGE_BUFFER_NUM (10)
#define TX_MESSAGE_BUFFER_NUM (9)
/* Select 60M clock divided by USB1 PLL (480 MHz) as master flexcan clock source */
#define FLEXCAN_CLOCK_SOURCE_SELECT (0U)
/* Clock divider for master flexcan clock source */
#define FLEXCAN_CLOCK_SOURCE_DIVIDER (2U)
/* Get frequency of flexcan clock */
#define EXAMPLE_CAN_CLK_FREQ ((CLOCK_GetFreq(kCLOCK_Usb1PllClk) / 8) / (FLEXCAN_CLOCK_SOURCE_DIVIDER + 1U))

extern lv_ui guider_ui; //Added so we can get access to elements to update them.
extern lv_meter_indicator_t *screen_RPM_scale_1_ndline_0;

void task_can(void *parameter)
{

    flexcan_handle_t flexcanHandle;
    flexcan_config_t flexcanConfig;
    flexcan_rx_mb_config_t mbConfig;
    flexcan_frame_t frame;
    uint32_t lcdTxId = 0x123;
    uint32_t rpmCanId = 0x158;
    status_t result;
    uint16_t rpm;
    uint16_t kph;
    volatile uint64_t rxStatusFlags = 0;

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
    FLEXCAN_SetRxMbGlobalMask(CAN2, FLEXCAN_RX_MB_STD_MASK(rpmCanId, 0, 0));

    /* Setup Rx Message Buffer. */
    mbConfig.format = kFLEXCAN_FrameFormatStandard;
    mbConfig.type = kFLEXCAN_FrameTypeData;
    mbConfig.id = FLEXCAN_ID_STD(rpmCanId);
    //Setup the RPM RX Mailbox
    FLEXCAN_SetRxMbConfig(CAN2, RX_CAN_RPM_MESSAGE_BUFFER_NUM, &mbConfig, true);

    //Lets create a message to transmit
    frame.id = FLEXCAN_ID_STD(lcdTxId);
    frame.format = (uint8_t) kFLEXCAN_FrameFormatStandard;
    frame.type = (uint8_t) kFLEXCAN_FrameTypeData;
    frame.length = (uint8_t) 8;
    frame.dataByte0 = 0;
    //send a message so we know that can is up and running.
    FLEXCAN_WriteTxMb(CAN2, TX_MESSAGE_BUFFER_NUM, &frame);

    while (1)
    {
        rt_thread_mdelay(1);
        /*            MSB,LSB
         * ID: 0x158, [3:2] - RPM = value * 1 + 0
         *            [1:0] - Vehicle Speed = value * 0.1 + 0
         *
         * Also look here:
         *   https://github.com/commaai/opendbc/blob/master/honda_crv_ex_2017_can_generated.dbc#L19
         */
        //Check for and process RPM CAN messages.
        rxStatusFlags = FLEXCAN_GetMbStatusFlags(CAN2, ((uint32_t) 1U << RX_CAN_RPM_MESSAGE_BUFFER_NUM));
        if (rxStatusFlags > 0)
        {

            FLEXCAN_ClearMbStatusFlags(CAN2, ((uint32_t) 1U << RX_CAN_RPM_MESSAGE_BUFFER_NUM));
            result = FLEXCAN_ReadRxMb(CAN2, RX_CAN_RPM_MESSAGE_BUFFER_NUM, &frame);
            if (result != kStatus_Fail)
            {
                // Get the data from the message
                kph = (frame.dataByte0 << 8) | frame.dataByte1;
                kph = kph / 10;
                rpm = (frame.dataByte2 << 8) | frame.dataByte3;
                rpm = rpm / 100;
                // Send the data to the display either directly from here or via a message queue.
                lv_meter_set_indicator_value(guider_ui.screen_RPM, screen_RPM_scale_1_ndline_0, rpm);
                //let's send back a response so they know we received it.
                frame.dataByte0 = frame.dataByte7;
                frame.dataByte1 = frame.dataByte6;
                frame.id = FLEXCAN_ID_STD(lcdTxId); //The RX MB will receive any message, even from the TX MB. Change the ID here, to stop that.
                FLEXCAN_WriteTxMb(CAN2, TX_MESSAGE_BUFFER_NUM, &frame);
            }
        }
    }

}

#define CAN_THREAD_STACK_SIZE 4096
#define CAN_THREAD_PRIO (RT_THREAD_PRIORITY_MAX * 3 / 8)

static struct rt_thread can_thread;
static rt_uint8_t can_thread_stack[CAN_THREAD_STACK_SIZE];

void start_canTask(void)
{

    rt_thread_init(&can_thread, "CAN", task_can,
    RT_NULL, &can_thread_stack[0], sizeof(can_thread_stack),
    CAN_THREAD_PRIO, 10);
    rt_thread_startup(&can_thread);
}
//INIT_APP_EXPORT(start_canTask); //TODO: Explain that this thread begins at startup.
