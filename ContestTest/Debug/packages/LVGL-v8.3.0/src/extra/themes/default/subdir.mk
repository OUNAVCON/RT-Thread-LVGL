################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../packages/LVGL-v8.3.0/src/extra/themes/default/lv_theme_default.c 

OBJS += \
./packages/LVGL-v8.3.0/src/extra/themes/default/lv_theme_default.o 

C_DEPS += \
./packages/LVGL-v8.3.0/src/extra/themes/default/lv_theme_default.d 


# Each subdirectory must supply rules for building sources it contributes
packages/LVGL-v8.3.0/src/extra/themes/default/%.o: ../packages/LVGL-v8.3.0/src/extra/themes/default/%.c
	arm-none-eabi-gcc -I"D:\repo\RT-Thread-LVGL\ContestTest" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications\lvgl\guiguider\ui" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications\lvgl" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications" -I"D:\repo\RT-Thread-LVGL\ContestTest\board\MCUX_Config" -I"D:\repo\RT-Thread-LVGL\ContestTest\board\ports" -I"D:\repo\RT-Thread-LVGL\ContestTest\board" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\CMSIS\Include" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\MIMXRT1060\drivers" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\MIMXRT1060" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\drivers" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\peripherals" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\env_support\rt-thread" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\core" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\arm2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\pxp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\vglite" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\sdl" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\stm32_dma2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\swm341_dma2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\sw" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\flex" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\grid" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\bmp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\ffmpeg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\freetype" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\fsdrv" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\gif" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\png" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\qrcode" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\rlottie" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\sjpg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\fragment" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\gridnav" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\ime" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\imgfont" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\monkey" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\msg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\snapshot" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\basic" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\default" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\mono" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\animimg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\calendar" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\chart" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\colorwheel" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\imgbtn" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\keyboard" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\led" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\list" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\menu" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\meter" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\msgbox" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\span" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinbox" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinner" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tabview" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tileview" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\win" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\font" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\hal" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\misc" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\widgets" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\drivers\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\drivers\touch" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\finsh" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\compilers\common\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\compilers\newlib" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\io\poll" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\io\stdio" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\ipc" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\libcpu\arm\common" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\libcpu\arm\cortex-m7" -I"D:\repo\RT-Thread-LVGL\ContestTest\xip" -include"D:\repo\RT-Thread-LVGL\ContestTest\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wall -D__FPU_PRESENT -eentry -g -O0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

