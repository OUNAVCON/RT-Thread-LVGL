/*
 * Copyright (c) 2006-2022, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author        Notes
 * 2022-05-13     Meco Man      First version
 */

#include <rtconfig.h>
#include <lvgl.h>

#include "gui_guider.h"
#include "events_init.h"
#define LV_LVGL_H_INCLUDE_SIMPLE 1 //Make sure we are using the relative lvgl.h path.

lv_ui guider_ui;

void gui_guider_setup(void)
{
    setup_ui(&guider_ui);
    events_init(&guider_ui);
}

void lv_user_gui_init(void)
{
#ifdef PKG_USING_GUI_GUIDER_DEMO
    //extern void gui_guider_setup(void);
    gui_guider_setup();
#endif
}
