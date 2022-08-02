################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../libraries/MIMXRT1060/MIMXRT1060/gcc/startup_MIMXRT1062.S 

OBJS += \
./libraries/MIMXRT1060/MIMXRT1060/gcc/startup_MIMXRT1062.o 

S_UPPER_DEPS += \
./libraries/MIMXRT1060/MIMXRT1060/gcc/startup_MIMXRT1062.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/MIMXRT1060/MIMXRT1060/gcc/%.o: ../libraries/MIMXRT1060/MIMXRT1060/gcc/%.S
	arm-none-eabi-gcc -x assembler-with-cpp -Xassembler -mimplicit-it=thumb -c -mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -x assembler-with-cpp -Wa,-mimplicit-it=thumb -D__START=entry -D__STARTUP_INITIALIZE_NONCACHEDATA -D__STARTUP_CLEAR_BSS -g -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

