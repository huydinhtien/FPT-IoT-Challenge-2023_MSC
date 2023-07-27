################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Timer0.c \
../adxl345.c \
../app.c \
../app_iostream_usart.c \
../main.c 

OBJS += \
./Timer0.o \
./adxl345.o \
./app.o \
./app_iostream_usart.o \
./main.o 

C_DEPS += \
./Timer0.d \
./adxl345.d \
./app.d \
./app_iostream_usart.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
Timer0.o: ../Timer0.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"Timer0.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

adxl345.o: ../adxl345.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"adxl345.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app.o: ../app.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app_iostream_usart.o: ../app_iostream_usart.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"app_iostream_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\config" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition\autogen" -I"D:\HUY\Documents\SSALab\2023\FPT IoT Challenge 2023\FPT-IoT-Challenge-2023_MSC\human_activity_recognition" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/anbinh/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


