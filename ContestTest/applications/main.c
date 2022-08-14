/*
 * Copyright (c) 2006-2022, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2019-04-29     tyustli      first version
 */

#include "MIMXRT1062.h"
#include <rtdevice.h>
#include "drv_gpio.h"
#include "core_cm7.h"
#include "gui_guider.h"
#include "lvgl.h"

/* defined the LED pin: GPIO1_IO9 */
#define LED0_PIN               GET_PIN(1, 8)
extern lv_ui guider_ui; //Added so we can get access to elements to update them.
extern lv_meter_indicator_t *screen_RPM_scale_1_ndline_0;
int main(void)
{
    uint16_t rpm = 0;
    uint8_t direction = 0;
#ifndef PHY_USING_KSZ8081
    /* set LED0 pin mode to output */
    rt_pin_mode(LED0_PIN, PIN_MODE_OUTPUT);

    start_canTask();

    while (1)
    {
        rt_pin_write(LED0_PIN, PIN_HIGH);
        rt_thread_mdelay(100);
        rt_pin_write(LED0_PIN, PIN_LOW);
        rt_thread_mdelay(100);
        if(direction == 0){
            rpm++;
            if(rpm>100){
                direction = 1;
            }
        }else{
            rpm--;
            if(rpm == 0){
                direction = 0;
            }
        }

        //sprintf(buf,  "%d" , rpm);
        //lv_label_set_text(guider_ui.screen_counter, buf);
       //void lv_meter_set_indicator_value(lv_obj_t * obj, lv_meter_indicator_t * indic, int32_t value)
        //lv_meter_set_indicator_value(ui->screen_RPM, screen_RPM_scale_1_ndline_0, 3);
        lv_meter_set_indicator_value(guider_ui.screen_RPM, screen_RPM_scale_1_ndline_0, rpm);
    }
#endif
}

void reboot(void)
{
    NVIC_SystemReset();
}
MSH_CMD_EXPORT(reboot, reset system)
