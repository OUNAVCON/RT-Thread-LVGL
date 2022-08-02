################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_cache.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_clock.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common_arm.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_elcdif.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_flexcan.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gpio.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gt911.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpi2c.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpuart.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_pxp.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_video_common.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbara.c \
../libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbarb.c 

OBJS += \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_cache.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_clock.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common_arm.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_elcdif.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_flexcan.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gpio.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gt911.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpi2c.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpuart.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_pxp.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_video_common.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbara.o \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbarb.o 

C_DEPS += \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_cache.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_clock.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_common_arm.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_elcdif.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_flexcan.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gpio.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_gt911.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpi2c.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_lpuart.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_pxp.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_video_common.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbara.d \
./libraries/MIMXRT1060/MIMXRT1060/drivers/fsl_xbarb.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/MIMXRT1060/MIMXRT1060/drivers/%.o: ../libraries/MIMXRT1060/MIMXRT1060/drivers/%.c
	arm-none-eabi-gcc -I"D:\RT-ThreadStudio\workspace\ContestTest" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications\lvgl\guiguider\ui" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications\lvgl" -I"D:\RT-ThreadStudio\workspace\ContestTest\applications" -I"D:\RT-ThreadStudio\workspace\ContestTest\board\MCUX_Config" -I"D:\RT-ThreadStudio\workspace\ContestTest\board\ports" -I"D:\RT-ThreadStudio\workspace\ContestTest\board" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\CMSIS\Include" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\MIMXRT1060\drivers" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\MIMXRT1060\MIMXRT1060" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\drivers" -I"D:\RT-ThreadStudio\workspace\ContestTest\libraries\peripherals" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\env_support\rt-thread" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\core" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\arm2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\pxp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\vglite" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\sdl" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\stm32_dma2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\swm341_dma2d" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw\sw" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\draw" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\flex" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\grid" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\bmp" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\ffmpeg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\freetype" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\fsdrv" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\gif" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\png" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\qrcode" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\rlottie" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\sjpg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\libs" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\fragment" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\gridnav" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\ime" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\imgfont" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\monkey" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\msg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others\snapshot" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\others" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\basic" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\default" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\mono" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\themes" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\animimg" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\calendar" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\chart" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\colorwheel" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\imgbtn" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\keyboard" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\led" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\list" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\menu" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\meter" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\msgbox" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\span" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinbox" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinner" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tabview" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tileview" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\win" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\extra" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\font" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\hal" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\misc" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src\widgets" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\LVGL-v8.3.0\src" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gt911-latest\inc" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gui_guider_demo-latest\custom" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gui_guider_demo-latest\generated\guider_fonts" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gui_guider_demo-latest\generated" -I"D:\RT-ThreadStudio\workspace\ContestTest\packages\gui_guider_demo-latest" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\drivers\touch" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\compilers\common\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\io\poll" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\components\libc\posix\ipc" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\include" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\libcpu\arm\common" -I"D:\RT-ThreadStudio\workspace\ContestTest\rt-thread\libcpu\arm\cortex-m7" -I"D:\RT-ThreadStudio\workspace\ContestTest\xip" -include"D:\RT-ThreadStudio\workspace\ContestTest\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wall -D__FPU_PRESENT -eentry -g -O0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

