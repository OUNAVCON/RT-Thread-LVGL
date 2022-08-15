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
lv_meter_indicator_t *screen_SPEED_scale_1_ndline_0;

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

	//Write codes screen_canvas_1
	ui->screen_canvas_1 = lv_canvas_create(ui->screen);
	lv_obj_set_pos(ui->screen_canvas_1, 0, 0);
	lv_obj_set_size(ui->screen_canvas_1, 480, 272);

	//Write style state: LV_STATE_DEFAULT for style_screen_canvas_1_main_main_default
	static lv_style_t style_screen_canvas_1_main_main_default;
	if (style_screen_canvas_1_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_canvas_1_main_main_default);
	else
		lv_style_init(&style_screen_canvas_1_main_main_default);
	lv_style_set_img_recolor(&style_screen_canvas_1_main_main_default, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_img_recolor_opa(&style_screen_canvas_1_main_main_default, 255);
	lv_obj_add_style(ui->screen_canvas_1, &style_screen_canvas_1_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);
	lv_color_t *buf_screen_canvas_1 = (lv_color_t*)lv_mem_alloc(480*272*4);
	lv_canvas_set_buffer(ui->screen_canvas_1, buf_screen_canvas_1, 480, 272, LV_IMG_CF_TRUE_COLOR_ALPHA);
	lv_canvas_fill_bg(ui->screen_canvas_1, lv_color_make(0x00, 0x00, 0x00), 255);

	//Write codes screen_RPM
	ui->screen_RPM = lv_meter_create(ui->screen);
	lv_obj_set_pos(ui->screen_RPM, 14, 13);
	lv_obj_set_size(ui->screen_RPM, 200, 200);

	//add scale screen_RPM_scale_1
	lv_meter_scale_t *screen_RPM_scale_1 = lv_meter_add_scale(ui->screen_RPM);
	lv_meter_set_scale_ticks(ui->screen_RPM, screen_RPM_scale_1, 61, 2, 10, lv_color_make(0x00, 0x00, 0x00));
	lv_meter_set_scale_major_ticks(ui->screen_RPM, screen_RPM_scale_1, 10, 5, 15, lv_color_make(0x00, 0x00, 0x00), 10);
	lv_meter_set_scale_range(ui->screen_RPM, screen_RPM_scale_1, 0, 60, 270, 135);

	//add arc for screen_RPM_scale_1
	lv_meter_indicator_t *screen_RPM_scale_1_arc_0;
	screen_RPM_scale_1_arc_0 = lv_meter_add_arc(ui->screen_RPM, screen_RPM_scale_1, 6, lv_color_make(0xff, 0x00, 0x00), 2);
	lv_meter_set_indicator_start_value(ui->screen_RPM, screen_RPM_scale_1_arc_0, 52);
	lv_meter_set_indicator_end_value(ui->screen_RPM, screen_RPM_scale_1_arc_0, 65);

	//add needle line for screen_RPM_scale_1
	//lv_meter_indicator_t *screen_RPM_scale_1_ndline_0;
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
	lv_obj_set_pos(ui->screen_label_1, 67, 171);
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

	//Write codes screen_SPEED
	ui->screen_SPEED = lv_meter_create(ui->screen);
	lv_obj_set_pos(ui->screen_SPEED, 271, 13);
	lv_obj_set_size(ui->screen_SPEED, 200, 200);

	//add scale screen_SPEED_scale_1
	lv_meter_scale_t *screen_SPEED_scale_1 = lv_meter_add_scale(ui->screen_SPEED);
	lv_meter_set_scale_ticks(ui->screen_SPEED, screen_SPEED_scale_1, 19, 1, 10, lv_color_make(0xed, 0xf0, 0xf7));
	lv_meter_set_scale_major_ticks(ui->screen_SPEED, screen_SPEED_scale_1, 1, 4, 8, lv_color_make(0x00, 0x00, 0x00), 10);
	lv_meter_set_scale_range(ui->screen_SPEED, screen_SPEED_scale_1, 0, 180, 300, 120);

	//add needle line for screen_SPEED_scale_1
	//lv_meter_indicator_t *screen_SPEED_scale_1_ndline_0;
	screen_SPEED_scale_1_ndline_0 = lv_meter_add_needle_line(ui->screen_SPEED, screen_SPEED_scale_1, 2, lv_color_make(0x00, 0x00, 0x00), -20);
	lv_meter_set_indicator_value(ui->screen_SPEED, screen_SPEED_scale_1_ndline_0, 30);

	//Write style state: LV_STATE_DEFAULT for style_screen_speed_main_main_default
	static lv_style_t style_screen_speed_main_main_default;
	if (style_screen_speed_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_speed_main_main_default);
	else
		lv_style_init(&style_screen_speed_main_main_default);
	lv_style_set_bg_color(&style_screen_speed_main_main_default, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_color(&style_screen_speed_main_main_default, lv_color_make(0xff, 0xff, 0xff));
	lv_style_set_bg_grad_dir(&style_screen_speed_main_main_default, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_speed_main_main_default, 255);
	lv_obj_add_style(ui->screen_SPEED, &style_screen_speed_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);

	//Write style state: LV_STATE_DEFAULT for style_screen_speed_main_ticks_default
	static lv_style_t style_screen_speed_main_ticks_default;
	if (style_screen_speed_main_ticks_default.prop_cnt > 1)
		lv_style_reset(&style_screen_speed_main_ticks_default);
	else
		lv_style_init(&style_screen_speed_main_ticks_default);
	lv_style_set_text_color(&style_screen_speed_main_ticks_default, lv_color_make(0xff, 0x00, 0x00));
	lv_style_set_text_font(&style_screen_speed_main_ticks_default, &lv_font_simsun_12);
	lv_obj_add_style(ui->screen_SPEED, &style_screen_speed_main_ticks_default, LV_PART_TICKS|LV_STATE_DEFAULT);

	//Write codes screen_label_2
	ui->screen_label_2 = lv_label_create(ui->screen);
	lv_obj_set_pos(ui->screen_label_2, 346, 179);
	lv_obj_set_size(ui->screen_label_2, 51, 18);
	lv_label_set_text(ui->screen_label_2, "KPH");
	lv_label_set_long_mode(ui->screen_label_2, LV_LABEL_LONG_WRAP);
	lv_obj_set_style_text_align(ui->screen_label_2, LV_TEXT_ALIGN_CENTER, 0);

	//Write style state: LV_STATE_DEFAULT for style_screen_label_2_main_main_default
	static lv_style_t style_screen_label_2_main_main_default;
	if (style_screen_label_2_main_main_default.prop_cnt > 1)
		lv_style_reset(&style_screen_label_2_main_main_default);
	else
		lv_style_init(&style_screen_label_2_main_main_default);
	lv_style_set_radius(&style_screen_label_2_main_main_default, 0);
	lv_style_set_bg_color(&style_screen_label_2_main_main_default, lv_color_make(0x21, 0x95, 0xf6));
	lv_style_set_bg_grad_color(&style_screen_label_2_main_main_default, lv_color_make(0x21, 0x95, 0xf6));
	lv_style_set_bg_grad_dir(&style_screen_label_2_main_main_default, LV_GRAD_DIR_VER);
	lv_style_set_bg_opa(&style_screen_label_2_main_main_default, 0);
	lv_style_set_text_color(&style_screen_label_2_main_main_default, lv_color_make(0x00, 0x00, 0x00));
	lv_style_set_text_font(&style_screen_label_2_main_main_default, &lv_font_simsun_12);
	lv_style_set_text_letter_space(&style_screen_label_2_main_main_default, 2);
	lv_style_set_pad_left(&style_screen_label_2_main_main_default, 0);
	lv_style_set_pad_right(&style_screen_label_2_main_main_default, 0);
	lv_style_set_pad_top(&style_screen_label_2_main_main_default, 0);
	lv_style_set_pad_bottom(&style_screen_label_2_main_main_default, 0);
	lv_obj_add_style(ui->screen_label_2, &style_screen_label_2_main_main_default, LV_PART_MAIN|LV_STATE_DEFAULT);
}
