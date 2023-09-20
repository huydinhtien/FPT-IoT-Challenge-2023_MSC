/*
 * feature.c
 *
 *  Created on: Jul 28, 2023
 *      Author: My Laptop
 */
#include "feature.h"
#include <stdio.h>
#include <math.h>
#include "app.h"

int walk_t = 0, jog_t = 0,stand_t = 0,lie_t = 0,sit_t = 0;


uint16_t get_adc(){
  uint16_t adc_Value;

    // Declare init structs
    IADC_Init_t init = IADC_INIT_DEFAULT;
    IADC_AllConfigs_t initAllConfigs = IADC_ALLCONFIGS_DEFAULT;
    IADC_InitSingle_t initSingle = IADC_INITSINGLE_DEFAULT;
    IADC_SingleInput_t initSingleInput = IADC_SINGLEINPUT_DEFAULT;


    CMU_ClockEnable(cmuClock_IADC0, true);
    CMU_ClockEnable(cmuClock_GPIO, true);
    // Use the FSRC0 as the IADC clock so it can run in EM2
    CMU_ClockSelectSet(cmuClock_IADCCLK, cmuSelect_FSRCO);
    // Set the prescaler needed for the intended IADC clock frequency

    init.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);

    // Shutdown between conversions to reduce current
    init.warmup = iadcWarmupNormal;
    IADC_reset(IADC0);


    init.timerCycles = 200;
    init.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);
    initAllConfigs.configs[0].reference = iadcCfgReferenceVddx;                   // VDD
    initAllConfigs.configs[0].adcClkPrescale = IADC_calcAdcClkPrescale(IADC0, CLK_ADC_FREQ, 0, iadcCfgModeNormal, init.srcClkPrescale);
    initSingleInput.posInput = IADC_INPUT_0_PORT_PIN;
    initSingleInput.negInput = iadcNegInputGnd;
    initSingle.triggerAction = iadcTriggerActionOnce;


    IADC_init(IADC0, &init, &initAllConfigs);


    IADC_initSingle(IADC0, &initSingle, &initSingleInput);


    GPIO->IADC_INPUT_0_BUS |= GPIO_BBUSALLOC_BEVEN0_ADC0;


    IADC_command(IADC0, iadcCmdStartSingle);
    while((IADC0->STATUS & (_IADC_STATUS_CONVERTING_MASK | _IADC_STATUS_SINGLEFIFODV_MASK)) != IADC_STATUS_SINGLEFIFODV);
    adc_Value = IADC_pullSingleFifoResult(IADC0).data;
    IADC_reset(IADC0);
    CMU_ClockEnable(cmuClock_IADC0, false);
    CMU_ClockEnable(cmuClock_FSRCO, false);


    // for Vref = AVDD = 3.30V, 12 bits represents 6.60V full scale IADC range.


    return (int16_t)adc_Value;
}
uint16_t get_percentPin()
{

  float R1 = 4.7; // resistor unit = KOhm
  float R2 = 15;
  float value = get_adc();
  uint16_t per;

  float var = (value*3.315/0xFFF)*(R1+R2)/R2;

  //4-5V:
  float percent = ((var-1.93)*100)/1.315;
  if(percent>100) per = 100;
  else per = (uint16_t)percent;

  return per;
}


void blink_led()
  {
        GPIO_PinOutToggle(LED_PORT, LED_PIN);
        sl_sleeptimer_delay_millisecond(300);

  }

double findMean(double *myArray, int size_arr){
    double mean = 0;
    for(int i = 0; i<size_arr;i++){
        mean += myArray[i];
    }
    mean = mean/size_arr;
    return mean;
}
double findRMS(double *myArray, int size_arr)
{
  double rms = 0;
  for(int i = 0;i< size_arr;i++)
  {
    rms+=pow(myArray[i],2);
  }
  rms= sqrt(rms/size_arr);
  return rms;
}

double findSTD(double *myArray, int size_arr){
    double mean;
    double std = 0;
    mean = findMean(myArray, size_arr);
    for(int i = 0;i<size_arr;i++){
        std += pow((myArray[i]- mean),2);
    }
    std = sqrt(std/size_arr);

    return std;
}

void sort(double *myArray, int size_arr){
  for(int i = 0;i<size_arr-1;i++){
      for(int j = 0;j<size_arr-i-1;j++){
          if (myArray[j]>myArray[j+1]){
              double temp = myArray[j];
              myArray[j] = myArray[j+1];
              myArray[j+1] = temp;
          }
      }

  }
}

double findRange(double *myArray, int size_arr){
  double range;
  sort(myArray,size_arr);
  range = myArray[size_arr-1] - myArray[0];
  return range;
}

double findIQR(double *myArray, int size_arr){
  double iqr;
  sort(myArray,size_arr);
  iqr = myArray[(int)round(size_arr*75/100-1)] - myArray[(int)round(size_arr*25/100-1)];
  return iqr;
}


//lying
void check_lying(double rms_x, uint16_t *value){
    if(rms_x<=TH_RMS_X){
        walk_t=0,jog_t=0,stand_t = 0;lie_t ++;sit_t=0;
        if(lie_t >= DECISION_TIME2){
            printf("Lying\n");
            *value = 1;
        }
    }
}


// standing
void check_standing(double std_x, double rms_x, double rms_y,uint16_t *value){
    if(rms_x >TH_RMS_X && std_x<=TH_STD_X1 && rms_y<= TH_RMS_Y){
        walk_t=0,jog_t=0,stand_t ++;lie_t =0;sit_t=0;
        if(stand_t>=DECISION_TIME1) {
            printf("Standing\n");
            *value = 2;
        }
    }
}

void check_sitting(double rms_x, double std_x, double rms_y, double iqr_x, double range_y, double mean_y,uint16_t *value){
    if(rms_x >TH_RMS_X && std_x<=TH_STD_X1 && rms_y > TH_RMS_Y){
        walk_t=0,jog_t=0,stand_t = 0;lie_t =0;sit_t ++;
        if(sit_t>=DECISION_TIME1){
            printf("Sitting\n");
            *value = 3;
        }
    }

    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y <=TH_RANGE_Y && mean_y>TH_MEAN_Y){
        walk_t=0,jog_t=0,stand_t = 0;lie_t =0;sit_t++;
        if(sit_t >=DECISION_TIME1) {
            printf("Sitting\n");
            *value = 3;
        }
    }
}

void check_jogging(double rms_x, double std_x, double iqr_x, double range_y, uint16_t *value){
    if(rms_x >TH_RMS_X && std_x>TH_STD_X1 && iqr_x> TH_IQR_X){
        walk_t=0,jog_t++,stand_t = 0;lie_t =0;sit_t=0;
        if(jog_t >=DECISION_TIME1){
            printf("Jogging\n");
            *value = 4;
        }
    }

    if(rms_x >TH_RMS_X && iqr_x<= TH_IQR_X && range_y >TH_RANGE_Y && std_x>TH_STD_X2){
         walk_t=0,jog_t++,stand_t = 0;lie_t =0;sit_t=0;
         if(jog_t >=DECISION_TIME1) {
            printf("Jogging\n");
            *value = 4;
         }
    }
}
void check_walking(double rms_x, double std_x, double iqr_x, double range_y, double mean_y, uint16_t *value){
    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y <=TH_RANGE_Y && mean_y<=TH_MEAN_Y){
        walk_t++,jog_t=0,stand_t = 0;lie_t =0;sit_t=0;
        if(walk_t++ >DECISION_TIME1) {
            printf("Walikng\n");
            *value = 5;
        }
    }

    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y >TH_RANGE_Y && std_x<=TH_STD_X2){
        walk_t++,jog_t=0,stand_t = 0;lie_t =0;sit_t=0;
        if(walk_t++ >DECISION_TIME1){
            printf("Walikng\n");
            *value = 5;
        }
    }
}
