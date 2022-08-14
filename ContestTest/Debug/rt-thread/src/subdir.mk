################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/device.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/memheap.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/device.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/memheap.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/device.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/memheap.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -I"D:\repo\RT-Thread-LVGL\ContestTest" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications\lvgl\guiguider\ui" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications\lvgl" -I"D:\repo\RT-Thread-LVGL\ContestTest\applications" -I"D:\repo\RT-Thread-LVGL\ContestTest\board\MCUX_Config" -I"D:\repo\RT-Thread-LVGL\ContestTest\board\ports" -I"D:\repo\RT-Thread-LVGL\ContestTest\board" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\CMSIS\Include" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\MIMXRT1060\drivers" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\MIMXRT1060\MIMXRT1060" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\drivers" -I"D:\repo\RT-Thread-LVGL\ContestTest\libraries\peripherals" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\env_support\rt-thread" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\core" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\arm2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\pxp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp\vglite" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\nxp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\sdl" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\stm32_dma2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\swm341_dma2d" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw\sw" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\draw" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\flex" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts\grid" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\layouts" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\bmp" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\ffmpeg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\freetype" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\fsdrv" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\gif" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\png" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\qrcode" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\rlottie" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs\sjpg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\libs" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\fragment" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\gridnav" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\ime" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\imgfont" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\monkey" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\msg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others\snapshot" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\others" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\basic" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\default" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes\mono" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\themes" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\animimg" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\calendar" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\chart" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\colorwheel" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\imgbtn" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\keyboard" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\led" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\list" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\menu" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\meter" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\msgbox" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\span" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinbox" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\spinner" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tabview" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\tileview" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets\win" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra\widgets" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\extra" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\font" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\hal" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\misc" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src\widgets" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\LVGL-v8.3.0\src" -I"D:\repo\RT-Thread-LVGL\ContestTest\packages\gui_guider_demo-latest" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\drivers\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\drivers\touch" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\finsh" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\compilers\common\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\compilers\newlib" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\io\poll" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\io\stdio" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\components\libc\posix\ipc" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\include" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\libcpu\arm\common" -I"D:\repo\RT-Thread-LVGL\ContestTest\rt-thread\libcpu\arm\cortex-m7" -I"D:\repo\RT-Thread-LVGL\ContestTest\xip" -include"D:\repo\RT-Thread-LVGL\ContestTest\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wall -D__FPU_PRESENT -eentry -g -O0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

