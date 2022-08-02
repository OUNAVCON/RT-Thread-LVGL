################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/LVGL-v8.3.0/src/misc/lv_anim.c \
../packages/LVGL-v8.3.0/src/misc/lv_anim_timeline.c \
../packages/LVGL-v8.3.0/src/misc/lv_area.c \
../packages/LVGL-v8.3.0/src/misc/lv_async.c \
../packages/LVGL-v8.3.0/src/misc/lv_bidi.c \
../packages/LVGL-v8.3.0/src/misc/lv_color.c \
../packages/LVGL-v8.3.0/src/misc/lv_fs.c \
../packages/LVGL-v8.3.0/src/misc/lv_gc.c \
../packages/LVGL-v8.3.0/src/misc/lv_ll.c \
../packages/LVGL-v8.3.0/src/misc/lv_log.c \
../packages/LVGL-v8.3.0/src/misc/lv_lru.c \
../packages/LVGL-v8.3.0/src/misc/lv_math.c \
../packages/LVGL-v8.3.0/src/misc/lv_mem.c \
../packages/LVGL-v8.3.0/src/misc/lv_printf.c \
../packages/LVGL-v8.3.0/src/misc/lv_style.c \
../packages/LVGL-v8.3.0/src/misc/lv_style_gen.c \
../packages/LVGL-v8.3.0/src/misc/lv_templ.c \
../packages/LVGL-v8.3.0/src/misc/lv_timer.c \
../packages/LVGL-v8.3.0/src/misc/lv_tlsf.c \
../packages/LVGL-v8.3.0/src/misc/lv_txt.c \
../packages/LVGL-v8.3.0/src/misc/lv_txt_ap.c \
../packages/LVGL-v8.3.0/src/misc/lv_utils.c 

OBJS += \
./packages/LVGL-v8.3.0/src/misc/lv_anim.o \
./packages/LVGL-v8.3.0/src/misc/lv_anim_timeline.o \
./packages/LVGL-v8.3.0/src/misc/lv_area.o \
./packages/LVGL-v8.3.0/src/misc/lv_async.o \
./packages/LVGL-v8.3.0/src/misc/lv_bidi.o \
./packages/LVGL-v8.3.0/src/misc/lv_color.o \
./packages/LVGL-v8.3.0/src/misc/lv_fs.o \
./packages/LVGL-v8.3.0/src/misc/lv_gc.o \
./packages/LVGL-v8.3.0/src/misc/lv_ll.o \
./packages/LVGL-v8.3.0/src/misc/lv_log.o \
./packages/LVGL-v8.3.0/src/misc/lv_lru.o \
./packages/LVGL-v8.3.0/src/misc/lv_math.o \
./packages/LVGL-v8.3.0/src/misc/lv_mem.o \
./packages/LVGL-v8.3.0/src/misc/lv_printf.o \
./packages/LVGL-v8.3.0/src/misc/lv_style.o \
./packages/LVGL-v8.3.0/src/misc/lv_style_gen.o \
./packages/LVGL-v8.3.0/src/misc/lv_templ.o \
./packages/LVGL-v8.3.0/src/misc/lv_timer.o \
./packages/LVGL-v8.3.0/src/misc/lv_tlsf.o \
./packages/LVGL-v8.3.0/src/misc/lv_txt.o \
./packages/LVGL-v8.3.0/src/misc/lv_txt_ap.o \
./packages/LVGL-v8.3.0/src/misc/lv_utils.o 

C_DEPS += \
./packages/LVGL-v8.3.0/src/misc/lv_anim.d \
./packages/LVGL-v8.3.0/src/misc/lv_anim_timeline.d \
./packages/LVGL-v8.3.0/src/misc/lv_area.d \
./packages/LVGL-v8.3.0/src/misc/lv_async.d \
./packages/LVGL-v8.3.0/src/misc/lv_bidi.d \
./packages/LVGL-v8.3.0/src/misc/lv_color.d \
./packages/LVGL-v8.3.0/src/misc/lv_fs.d \
./packages/LVGL-v8.3.0/src/misc/lv_gc.d \
./packages/LVGL-v8.3.0/src/misc/lv_ll.d \
./packages/LVGL-v8.3.0/src/misc/lv_log.d \
./packages/LVGL-v8.3.0/src/misc/lv_lru.d \
./packages/LVGL-v8.3.0/src/misc/lv_math.d \
./packages/LVGL-v8.3.0/src/misc/lv_mem.d \
./packages/LVGL-v8.3.0/src/misc/lv_printf.d \
./packages/LVGL-v8.3.0/src/misc/lv_style.d \
./packages/LVGL-v8.3.0/src/misc/lv_style_gen.d \
./packages/LVGL-v8.3.0/src/misc/lv_templ.d \
./packages/LVGL-v8.3.0/src/misc/lv_timer.d \
./packages/LVGL-v8.3.0/src/misc/lv_tlsf.d \
./packages/LVGL-v8.3.0/src/misc/lv_txt.d \
./packages/LVGL-v8.3.0/src/misc/lv_txt_ap.d \
./packages/LVGL-v8.3.0/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
packages/LVGL-v8.3.0/src/misc/%.o: ../packages/LVGL-v8.3.0/src/misc/%.c
	arm-none-eabi-gcc -I"D:\RT-ThreadStudio\workspace\ContestTest" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications\lvgl\guiguider\ui" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications\lvgl" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications" -I"D:\RT-ThreadStudio\workspace\ContestTest\board\MCUX_Config" -I"D:\RT-ThreadStudio\workspace\ContestTest\board\ports" -I"D:\RT-ThreadStudio\workspace\ContestTest\board" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\CMSIS\Include" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\MIMXRT1060\drivers" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\MIMXRT1060" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\drivers" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\peripherals" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\env_support\rt-thread" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\core" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\arm2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\pxp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\vglite" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\sdl" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\stm32_dma2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\swm341_dma2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\sw" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\flex" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\grid" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\bmp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\ffmpeg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\freetype" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\fsdrv" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\gif" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\png" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\qrcode" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\rlottie" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\sjpg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\fragment" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\gridnav" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\ime" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\imgfont" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\monkey" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\msg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\snapshot" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\basic" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\default" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\mono" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\animimg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\calendar" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\chart" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\colorwheel" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\imgbtn" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\keyboard" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\led" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\list" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\menu" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\meter" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\msgbox" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\span" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinbox" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinner" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tabview" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tileview" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\win" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\font" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\hal" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\misc" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\widgets" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gt911-latest\inc" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\drivers\touch" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\compilers\common\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\libcpu\arm\cortex-m7" -I"D:\RT-ThreadStudio\workspace\ContestTest\xip" -include"D:\RT-ThreadStudio\workspace\ContestTest\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wall -D__FPU_PRESENT -eentry -g -O0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

