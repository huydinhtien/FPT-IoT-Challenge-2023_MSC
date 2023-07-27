################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk/hardware/driver/configuration_over_swo/src/sl_cos.c 

OBJS += \
./gecko_sdk_4.3.0/hardware/driver/configuration_over_swo/src/sl_cos.o 

C_DEPS += \
./gecko_sdk_4.3.0/hardware/driver/configuration_over_swo/src/sl_cos.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.0/hardware/driver/configuration_over_swo/src/sl_cos.o: C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk/hardware/driver/configuration_over_swo/src/sl_cos.c gecko_sdk_4.3.0/hardware/driver/configuration_over_swo/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/hardware/driver/configuration_over_swo/src/sl_cos.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


