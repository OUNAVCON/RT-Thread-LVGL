# Copyright 2022 NXP
# SPDX-License-Identifier: MIT
# The auto-generated can only be used on NXP devices

import SDL
import utime as time
import usys as sys
import lvgl as lv
import lodepng as png
import ustruct

lv.init()
SDL.init(w=480,h=272)

# Register SDL display driver.
disp_buf1 = lv.disp_draw_buf_t()
buf1_1 = bytearray(480*10)
disp_buf1.init(buf1_1, None, len(buf1_1)//4)
disp_drv = lv.disp_drv_t()
disp_drv.init()
disp_drv.draw_buf = disp_buf1
disp_drv.flush_cb = SDL.monitor_flush
disp_drv.hor_res = 480
disp_drv.ver_res = 272
disp_drv.register()

# Regsiter SDL mouse driver
indev_drv = lv.indev_drv_t()
indev_drv.init() 
indev_drv.type = lv.INDEV_TYPE.POINTER
indev_drv.read_cb = SDL.mouse_read
indev_drv.register()

# Below: Taken from https://github.com/lvgl/lv_binding_micropython/blob/master/driver/js/imagetools.py#L22-L94

COLOR_SIZE = lv.color_t.__SIZE__
COLOR_IS_SWAPPED = hasattr(lv.color_t().ch,'green_h')

class lodepng_error(RuntimeError):
    def __init__(self, err):
        if type(err) is int:
            super().__init__(png.error_text(err))
        else:
            super().__init__(err)

# Parse PNG file header
# Taken from https://github.com/shibukawa/imagesize_py/blob/ffef30c1a4715c5acf90e8945ceb77f4a2ed2d45/imagesize.py#L63-L85

def get_png_info(decoder, src, header):
    # Only handle variable image types

    if lv.img.src_get_type(src) != lv.img.SRC.VARIABLE:
        return lv.RES.INV

    data = lv.img_dsc_t.__cast__(src).data
    if data == None:
        return lv.RES.INV

    png_header = bytes(data.__dereference__(24))

    if png_header.startswith(b'\211PNG\r\n\032\n'):
        if png_header[12:16] == b'IHDR':
            start = 16
        # Maybe this is for an older PNG version.
        else:
            start = 8
        try:
            width, height = ustruct.unpack(">LL", png_header[start:start+8])
        except ustruct.error:
            return lv.RES.INV
    else:
        return lv.RES.INV

    header.always_zero = 0
    header.w = width
    header.h = height
    header.cf = lv.img.CF.TRUE_COLOR_ALPHA

    return lv.RES.OK

def convert_rgba8888_to_bgra8888(img_view):
    for i in range(0, len(img_view), lv.color_t.__SIZE__):
        ch = lv.color_t.__cast__(img_view[i:i]).ch
        ch.red, ch.blue = ch.blue, ch.red

# Read and parse PNG file

def open_png(decoder, dsc):
    img_dsc = lv.img_dsc_t.__cast__(dsc.src)
    png_data = img_dsc.data
    png_size = img_dsc.data_size
    png_decoded = png.C_Pointer()
    png_width = png.C_Pointer()
    png_height = png.C_Pointer()
    error = png.decode32(png_decoded, png_width, png_height, png_data, png_size)
    if error:
        raise lodepng_error(error)
    img_size = png_width.int_val * png_height.int_val * 4
    img_data = png_decoded.ptr_val
    img_view = img_data.__dereference__(img_size)

    if COLOR_SIZE == 4:
        convert_rgba8888_to_bgra8888(img_view)
    else:
        raise lodepng_error("Error: Color mode not supported yet!")

    dsc.img_data = img_data
    return lv.RES.OK

# Above: Taken from https://github.com/lvgl/lv_binding_micropython/blob/master/driver/js/imagetools.py#L22-L94

decoder = lv.img.decoder_create()
decoder.info_cb = get_png_info
decoder.open_cb = open_png

def anim_x_cb(obj, v):
    obj.set_x(v)

def anim_y_cb(obj, v):
    obj.set_y(v)

def ta_event_cb(e,kb):
    code = e.get_code()
    ta = e.get_target()
    if code == lv.EVENT.FOCUSED:
        kb.set_textarea(ta)
        kb.clear_flag(lv.obj.FLAG.HIDDEN)

    if code == lv.EVENT.DEFOCUSED:
        kb.set_textarea(None)
        kb.add_flag(lv.obj.FLAG.HIDDEN)


screen = lv.obj()
# create style style_screen_main_main_default
style_screen_main_main_default = lv.style_t()
style_screen_main_main_default.init()
style_screen_main_main_default.set_bg_color(lv.color_make(0xff,0xff,0xff))
style_screen_main_main_default.set_bg_opa(0)

# add style for screen
screen.add_style(style_screen_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)

screen_canvas_1 = lv.canvas(screen)
screen_canvas_1.set_pos(0,0)
screen_canvas_1.set_size(480,272)
cbuf_screen_canvas_1 = bytearray(480 * 272 * 4)
screen_canvas_1.set_buffer(cbuf_screen_canvas_1, 480, 272, lv.img.CF.TRUE_COLOR_ALPHA)
screen_canvas_1.fill_bg(lv.color_make(0x00,0x00,0x00), 255)
# create style style_screen_canvas_1_main_main_default
style_screen_canvas_1_main_main_default = lv.style_t()
style_screen_canvas_1_main_main_default.init()
style_screen_canvas_1_main_main_default.set_img_recolor(lv.color_make(0x00,0x00,0x00))
style_screen_canvas_1_main_main_default.set_img_recolor_opa(255)

# add style for screen_canvas_1
screen_canvas_1.add_style(style_screen_canvas_1_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)

screen_RPM = lv.meter(screen)
screen_RPM.set_pos(14,13)
screen_RPM.set_size(200,200)
screen_RPM_scale_1 = screen_RPM.add_scale()
screen_RPM.set_scale_ticks(screen_RPM_scale_1, 61, 2, 10,
    lv.color_make(0x00, 0x00, 0x00))
screen_RPM.set_scale_major_ticks(screen_RPM_scale_1, 10, 5, 15,
	lv.color_make(0x00, 0x00, 0x00), 10)
screen_RPM.set_scale_range(screen_RPM_scale_1, 0, 60, 270, 135)
screen_RPM_scale_1_arc_0 = screen_RPM.add_arc(screen_RPM_scale_1, 6, lv.color_make(0xff, 0x00, 0x00), 2)
screen_RPM.set_indicator_start_value(screen_RPM_scale_1_arc_0, 52)
screen_RPM.set_indicator_end_value(screen_RPM_scale_1_arc_0, 65)
screen_RPM_scale_1_needleLine_0 = screen_RPM.add_needle_line(screen_RPM_scale_1, 2,
    lv.color_make(0x00, 0x00, 0x00),
    -20)
screen_RPM.set_indicator_value(screen_RPM_scale_1_needleLine_0, 3)
# create style style_screen_rpm_main_main_default
style_screen_rpm_main_main_default = lv.style_t()
style_screen_rpm_main_main_default.init()
style_screen_rpm_main_main_default.set_bg_color(lv.color_make(0xff,0xff,0xff))
style_screen_rpm_main_main_default.set_bg_grad_color(lv.color_make(0xff,0xff,0xff))
style_screen_rpm_main_main_default.set_bg_grad_dir(lv.GRAD_DIR.VER)
style_screen_rpm_main_main_default.set_bg_opa(255)

# add style for screen_RPM
screen_RPM.add_style(style_screen_rpm_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)

# create style style_screen_rpm_main_ticks_default
style_screen_rpm_main_ticks_default = lv.style_t()
style_screen_rpm_main_ticks_default.init()
style_screen_rpm_main_ticks_default.set_text_color(lv.color_make(0x00,0x00,0x00))
try:
    style_screen_rpm_main_ticks_default.set_text_font(lv.font_simsun_12)
except AttributeError:
    try:
        style_screen_rpm_main_ticks_default.set_text_font(lv.font_montserrat_12)
    except AttributeError:
        style_screen_rpm_main_ticks_default.set_text_font(lv.font_montserrat_16)

# add style for screen_RPM
screen_RPM.add_style(style_screen_rpm_main_ticks_default, lv.PART.TICKS|lv.STATE.DEFAULT)

screen_label_1 = lv.label(screen)
screen_label_1.set_pos(67,171)
screen_label_1.set_size(100,32)
screen_label_1.set_text("RPM (x100)")
screen_label_1.set_long_mode(lv.label.LONG.WRAP)
screen_label_1.set_style_text_align(lv.TEXT_ALIGN.CENTER, 0)
# create style style_screen_label_1_main_main_default
style_screen_label_1_main_main_default = lv.style_t()
style_screen_label_1_main_main_default.init()
style_screen_label_1_main_main_default.set_radius(0)
style_screen_label_1_main_main_default.set_bg_color(lv.color_make(0x21,0x95,0xf6))
style_screen_label_1_main_main_default.set_bg_grad_color(lv.color_make(0x21,0x95,0xf6))
style_screen_label_1_main_main_default.set_bg_grad_dir(lv.GRAD_DIR.VER)
style_screen_label_1_main_main_default.set_bg_opa(0)
style_screen_label_1_main_main_default.set_text_color(lv.color_make(0x00,0x00,0x00))
try:
    style_screen_label_1_main_main_default.set_text_font(lv.font_arial_12)
except AttributeError:
    try:
        style_screen_label_1_main_main_default.set_text_font(lv.font_montserrat_12)
    except AttributeError:
        style_screen_label_1_main_main_default.set_text_font(lv.font_montserrat_16)
style_screen_label_1_main_main_default.set_text_letter_space(2)
style_screen_label_1_main_main_default.set_pad_left(0)
style_screen_label_1_main_main_default.set_pad_right(0)
style_screen_label_1_main_main_default.set_pad_top(0)
style_screen_label_1_main_main_default.set_pad_bottom(0)

# add style for screen_label_1
screen_label_1.add_style(style_screen_label_1_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)

screen_SPEED = lv.meter(screen)
screen_SPEED.set_pos(271,13)
screen_SPEED.set_size(200,200)
screen_SPEED_scale_1 = screen_SPEED.add_scale()
screen_SPEED.set_scale_ticks(screen_SPEED_scale_1, 19, 1, 10,
    lv.color_make(0xed, 0xf0, 0xf7))
screen_SPEED.set_scale_major_ticks(screen_SPEED_scale_1, 1, 4, 8,
	lv.color_make(0x00, 0x00, 0x00), 10)
screen_SPEED.set_scale_range(screen_SPEED_scale_1, 0, 180, 300, 120)
screen_SPEED_scale_1_needleLine_0 = screen_SPEED.add_needle_line(screen_SPEED_scale_1, 2,
    lv.color_make(0x00, 0x00, 0x00),
    -20)
screen_SPEED.set_indicator_value(screen_SPEED_scale_1_needleLine_0, 30)
# create style style_screen_speed_main_main_default
style_screen_speed_main_main_default = lv.style_t()
style_screen_speed_main_main_default.init()
style_screen_speed_main_main_default.set_bg_color(lv.color_make(0xff,0xff,0xff))
style_screen_speed_main_main_default.set_bg_grad_color(lv.color_make(0xff,0xff,0xff))
style_screen_speed_main_main_default.set_bg_grad_dir(lv.GRAD_DIR.VER)
style_screen_speed_main_main_default.set_bg_opa(255)

# add style for screen_SPEED
screen_SPEED.add_style(style_screen_speed_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)

# create style style_screen_speed_main_ticks_default
style_screen_speed_main_ticks_default = lv.style_t()
style_screen_speed_main_ticks_default.init()
style_screen_speed_main_ticks_default.set_text_color(lv.color_make(0xff,0x00,0x00))
try:
    style_screen_speed_main_ticks_default.set_text_font(lv.font_simsun_12)
except AttributeError:
    try:
        style_screen_speed_main_ticks_default.set_text_font(lv.font_montserrat_12)
    except AttributeError:
        style_screen_speed_main_ticks_default.set_text_font(lv.font_montserrat_16)

# add style for screen_SPEED
screen_SPEED.add_style(style_screen_speed_main_ticks_default, lv.PART.TICKS|lv.STATE.DEFAULT)

screen_label_2 = lv.label(screen)
screen_label_2.set_pos(346,179)
screen_label_2.set_size(51,18)
screen_label_2.set_text("KPH")
screen_label_2.set_long_mode(lv.label.LONG.WRAP)
screen_label_2.set_style_text_align(lv.TEXT_ALIGN.CENTER, 0)
# create style style_screen_label_2_main_main_default
style_screen_label_2_main_main_default = lv.style_t()
style_screen_label_2_main_main_default.init()
style_screen_label_2_main_main_default.set_radius(0)
style_screen_label_2_main_main_default.set_bg_color(lv.color_make(0x21,0x95,0xf6))
style_screen_label_2_main_main_default.set_bg_grad_color(lv.color_make(0x21,0x95,0xf6))
style_screen_label_2_main_main_default.set_bg_grad_dir(lv.GRAD_DIR.VER)
style_screen_label_2_main_main_default.set_bg_opa(0)
style_screen_label_2_main_main_default.set_text_color(lv.color_make(0x00,0x00,0x00))
try:
    style_screen_label_2_main_main_default.set_text_font(lv.font_simsun_12)
except AttributeError:
    try:
        style_screen_label_2_main_main_default.set_text_font(lv.font_montserrat_12)
    except AttributeError:
        style_screen_label_2_main_main_default.set_text_font(lv.font_montserrat_16)
style_screen_label_2_main_main_default.set_text_letter_space(2)
style_screen_label_2_main_main_default.set_pad_left(0)
style_screen_label_2_main_main_default.set_pad_right(0)
style_screen_label_2_main_main_default.set_pad_top(0)
style_screen_label_2_main_main_default.set_pad_bottom(0)

# add style for screen_label_2
screen_label_2.add_style(style_screen_label_2_main_main_default, lv.PART.MAIN|lv.STATE.DEFAULT)




# content from custom.py

# Load the default screen
lv.scr_load(screen)

while SDL.check():
    time.sleep_ms(5)
