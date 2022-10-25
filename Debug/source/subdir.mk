################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/lab-three.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/lab-three.d \
./source/semihost_hardfault.d 

OBJS += \
./source/lab-three.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/home/joeyg/devboard/lab-three/board" -I"/home/joeyg/devboard/lab-three/source" -I"/home/joeyg/devboard/lab-three/drivers" -I"/home/joeyg/devboard/lab-three/device" -I"/home/joeyg/devboard/lab-three/CMSIS" -I"/home/joeyg/devboard/lab-three/utilities" -I"/home/joeyg/devboard/lab-three/component/uart" -I"/home/joeyg/devboard/lab-three/component/serial_manager" -I"/home/joeyg/devboard/lab-three/component/lists" -I"/home/joeyg/devboard/lab-three/startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/lab-three.d ./source/lab-three.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

