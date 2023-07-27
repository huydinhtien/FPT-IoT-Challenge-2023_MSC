################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/system/src/sl_system_init.c \
C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/system/src/sl_system_process_action.c 

OBJS += \
./gecko_sdk_4.3.0/platform/service/system/src/sl_system_init.o \
./gecko_sdk_4.3.0/platform/service/system/src/sl_system_process_action.o 

C_DEPS += \
./gecko_sdk_4.3.0/platform/service/system/src/sl_system_init.d \
./gecko_sdk_4.3.0/platform/service/system/src/sl_system_process_action.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.0/platform/service/system/src/sl_system_init.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/system/src/sl_system_init.c gecko_sdk_4.3.0/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/system/src/sl_system_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.0/platform/service/system/src/sl_system_process_action.o: C:/Users/My\ Laptop/SimplicityStudio/SDKs/gecko_sdk_2/platform/service/system/src/sl_system_process_action.c gecko_sdk_4.3.0/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\config" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition\autogen" -I"C:\Users\My Laptop\SimplicityStudio\v5_workspace\human_activity_recognition" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//app/common/util/app_timer" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/board/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/CMSIS/Core/Include" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//hardware/driver/configuration_over_swo/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/driver/debug/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/device_init/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/dmadrv/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emdrv/common/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/emlib/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/iostream/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/power_manager/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/common/toolchain/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/system/inc" -I"C:/Users/My Laptop/SimplicityStudio/SDKs/gecko_sdk_2//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/platform/service/system/src/sl_system_process_action.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


