################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_burtc.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_cmu.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_core.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_emu.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_gpio.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_i2c.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_ldma.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_msc.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_rtcc.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_system.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_timer.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_usart.c 

OBJS += \
./gecko_sdk_4.3.0/platform/emlib/src/em_burtc.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_core.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_emu.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_i2c.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_ldma.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_msc.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_rtcc.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_system.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_timer.o \
./gecko_sdk_4.3.0/platform/emlib/src/em_usart.o 

C_DEPS += \
./gecko_sdk_4.3.0/platform/emlib/src/em_burtc.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_core.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_emu.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_i2c.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_ldma.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_msc.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_rtcc.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_system.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_timer.d \
./gecko_sdk_4.3.0/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.0/platform/emlib/src/em_burtc.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_burtc.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_burtc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_cmu.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_cmu.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_core.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_core.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_emu.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_emu.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_gpio.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_gpio.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_i2c.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_i2c.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_i2c.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_ldma.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_ldma.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_ldma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_msc.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_msc.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_msc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_rtcc.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_rtcc.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_rtcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_system.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_system.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_timer.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_timer.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_timer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/emlib/src/em_usart.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/emlib/src/em_usart.c gecko_sdk_4.3.0/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/emlib/src/em_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


