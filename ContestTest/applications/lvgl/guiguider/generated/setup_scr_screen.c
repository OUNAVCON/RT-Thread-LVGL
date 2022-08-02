/*
 * Copyright 2022 NXP
 * SPDX-License-Identifier: MIT
 * The auto-generated can only be used on NXP devices
 */

#include "lvgl.h"
#include <stdio.h>
#include "gui_guider.h"
#include "events_init.h"

lv_meter_indicator_t *screen_RPM_scale_1_ndline_0;

void setup_scr_screen(lv_ui *ui){

	//Write codes screen
	ui->screen = lv_obj_create(NULL);

	//Write style state: LV_STATE_DEFAULT for style_screen_main_main_default
	static lv_style_t style_screen_main_main_default;
	if (style_screen_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_main_main_default);
	else
		lv_style_init(&style_screen_main_main_default);
	lv_style_set_bg_color(&style_screen_main_main_default, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_opa(&style_screen_main_main_default, 0);
	lv_obj_add_style(ui->screen, &style_screen_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);

	//Write codes screen_RPM
	ui->screen_RPM = lv_meter_create(ui->screen);
	lv_obj_set_pos(ui->screen_RPM, 12, 57);
	lv_obj_set_size(ui->screen_RPM, 200, 200);

	//add scale screen_RPM_scale_1
	lv_meter_scale_t *screen_RPM_scale_1 = lv_meter_add_scale(ui->screen_RPM);
	lv_meter_set_scale_ticks(ui->screen_RPM, screen_RPM_scale_1, 41, 2, 10, lv_color_make(0x00, 0x00, 0x00));
	lv_meter_set_scale_major_ticks(ui->screen_RPM, screen_RPM_scale_1, 8, 5, 15, lv_color_make(0x00, 0x00, 0x00), 10);
	lv_meter_set_scale_range(ui->screen_RPM, screen_RPM_scale_1, 0, 100, 270, 135);

	//add arc for screen_RPM_scale_1
	lv_meter_indicator_t *screen_RPM_scale_1_arc_0;
	screen_RPM_scale_1_arc_0 = lv_meter_add_arc(ui->screen_RPM, screen_RPM_scale_1, 2, lv_color_make(0xff, 0x00, 0x00), 2);
	lv_meter_set_indicator_start_value(ui->screen_RPM, screen_RPM_scale_1_arc_0, 60);
	lv_meter_set_indicator_end_value(ui->screen_RPM, screen_RPM_scale_1_arc_0, 100);

	//add needle line for screen_RPM_scale_1
	screen_RPM_scale_1_ndline_0 = lv_meter_add_needle_line(ui->screen_RPM, screen_RPM_scale_1, 2, lv_color_make(0x00, 0x00, 0x00), -20);
	lv_meter_set_indicator_value(ui->screen_RPM, screen_RPM_scale_1_ndline_0, 3);

	//Write style state: LV_STATE_DEFAULT for style_screen_rpm_main_main_default
	static lv_style_t style_screen_rpm_main_main_default;
	if (style_screen_rpm_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_rpm_main_main_default);
	else
		lv_style_init(&style_screen_rpm_main_main_default);
	lv_style_set_bg_color(&style_screen_rpm_main_main_default, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_rpm_main_main_default, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_rpm_main_main_default, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_rpm_main_main_default, 255);
	lv_obj_add_style(ui->screen_RPM, &style_screen_rpm_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);

	//Write style state: LV_STATE_DEFAULT for style_screen_rpm_main_ticks_default
	static lv_style_t style_screen_rpm_main_ticks_default;
	if (style_screen_rpm_main_ticks_default.prop_cnt > 1)
		lv_style_reset(&style_screen_rpm_main_ticks_default);
	else
		lv_style_init(&style_screen_rpm_main_ticks_default);
	lv_style_set_text_color(&style_screen_rpm_main_ticks_default, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_text_font(&style_screen_rpm_main_ticks_default, &lv_font_simsun_12);
	lv_obj_add_style(ui->screen_RPM, &style_screen_rpm_main_ticks_default, LV_PART_TICKS|LV_STATE_DEFAULT);

	//Write codes screen_label_1
	ui->screen_label_1 = lv_label_create(ui->screen);
	lv_obj_set_pos(ui->screen_label_1, 67, 214);
	lv_obj_set_size(ui->screen_label_1, 100, 32);
	lv_label_set_text(ui->screen_label_1, "RPM (x100)");
	lv_label_set_long_mode(ui->screen_label_1, LV_LABEL_LONG_WRAP);
	lv_obj_set_style_text_align(ui->screen_label_1, LV_TEXT_ALIGN_CENTER, 0);

	//Write style state: LV_STATE_DEFAULT for style_screen_label_1_main_main_default
	static lv_style_t style_screen_label_1_main_main_default;
	if (style_screen_label_1_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_label_1_main_main_default);
	else
		lv_style_init(&style_screen_label_1_main_main_default);
	lv_style_set_radius(&style_screen_label_1_main_main_default, 0);
	lv_style_set_bg_color(&style_screen_label_1_main_main_default, lv_color_make(0x21, 0x95, 0xf6));
	lv_style_set_bg_grad_color(&style_screen_label_1_main_main_default, lv_color_make(0x21, 0x95, 0xf6));
	lv_style_set_bg_grad_dir(&style_screen_label_1_main_main_default, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_label_1_main_main_default, 0);
	lv_style_set_text_color(&style_screen_label_1_main_main_default, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_text_font(&style_screen_label_1_main_main_default, &lv_font_arial_12);
	lv_style_set_text_letter_space(&style_screen_label_1_main_main_default, 2);
	lv_style_set_pad_left(&style_screen_label_1_main_main_default, 0);
	lv_style_set_pad_right(&style_screen_label_1_main_main_default, 0);
	lv_style_set_pad_top(&style_screen_label_1_main_main_default, 0);
	lv_style_set_pad_bottom(&style_screen_label_1_main_main_default, 0);
	lv_obj_add_style(ui->screen_label_1, &style_screen_label_1_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);
}
