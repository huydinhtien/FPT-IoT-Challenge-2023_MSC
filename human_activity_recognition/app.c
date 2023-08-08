/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include "app_iostream_usart.h"
#include "app.h"
#include "time.h"
#include "Timer0.h"
#include <stdio.h>
#include <math.h>

extern bool Timer0_OF;
double xyz[3];
double overlap_x[5],overlap_y[5],overlap_z[5];
double arrayX[10],arrayY[10],arrayZ[10];
double tempX[5],tempY[5],tempZ[5];
int walk_t = 0, jog_t = 0,stand_t = 0,lie_t = 0,sit_t = 0;
/*
 * Size's "window" is 10
 * Size's "overlap" is 5
 */

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

void app_init(void)
{
  app_iostream_usart_init();
  CHIP_Init();
  initCMU();
  Timer0_Init();
  Timer0_Enable();
  GPIO_PinModeSet(SCL_PORT, SCL_PIN, gpioModeWiredAndPullUpFilter,1);
  GPIO_PinModeSet(SDA_PORT,SDA_PIN,gpioModeWiredAndPullUpFilter,1);
  GPIO_PinModeSet(gpioPortA,4,gpioModePushPull,1);
  i2c_Init();
  init_adxl();
  //set activity/ inactivity thresholds (0-255)
  setActivityThreshold(75);
  setInactivityThreshold(75);
  setTimeInactivity(10);
  //look of inactivity/activity movement on this axes - 1 == on; 0 == off
  i2c_Write(ADXL345_REG_ACT_INACT_CTL,0x77);
  //look of tap movement
  //i2c_Write(ADXL345_REG_TAP_AXES,0x01);


  //set values for what is a tap, and what is a double tap (0-255)

  //set values for what is considered freefall (0-255)
  i2c_Write(ADXL345_REG_THRESH_FF, 0x7);
  i2c_Write(ADXL345_REG_TIME_FF, 0x2D);

  // luu 5 gia tri dau tien vao trong
  int i = 0;
  while(i<5){
                 get_acc(xyz);
                 if(Timer0_OF == true){
                     printf("x: %lf, y: %lf, z: %lf \n", xyz[0], xyz[1], xyz[2]);
                     overlap_x[i] = xyz[0];
                     //overlap_y[i] = xyz[1];
                     //overlap_z[i] = xyz[2];

                     printf("overlap_x[%d]: %lf \n", i,overlap_x[i]);
                     printf("array: %lf %lf %lf %lf %lf \n",overlap_x[0],overlap_x[1],overlap_x[2],overlap_x[3],overlap_x[4]);
                     printf("\n");
                     Timer0_OF = false;
                     ++i;
                 }
             }
  memcpy(arrayX,overlap_x, sizeof(overlap_x));
  memcpy(arrayY,overlap_y, sizeof(overlap_y));
  memcpy(arrayZ,overlap_z, sizeof(overlap_z));
}

void app_process_action(void)
{

  get_acc(xyz);
  static int j;
  if(Timer0_OF == true){
      // save 5 values to each window.
      arrayX[j+5] = xyz[0];
      arrayY[j+5] = xyz[1];
      arrayZ[j+5] = xyz[2];
      // save 5 temporary values to re-assign overlap array.
      tempX[j] = xyz[0];
      tempY[j] = xyz[1];
      tempZ[j] = xyz[2];
    //for(int j = 0 ; j<10;j++){
     //   printf("%lf",arrayX[j]);
    //}
    //printf("%lf %lf %lf %lf %lf %lf %lf %lf %lf %lf \n",arrayX[0],arrayX[1],arrayX[2],arrayX[3],arrayX[4],arrayX[5],arrayX[6],arrayX[7],arrayX[8],arrayX[9]);
    //printf("\n");

    Timer0_OF = false;
    ++j;
  }
   if(j>=5){
       //save 5 values's overlap to array[0:4]
       //then re-assign overlap value
       //X
        memcpy(arrayX,overlap_x, sizeof(overlap_x));
        memcpy(overlap_x,tempX, sizeof(tempX));
        //Y
        memcpy(arrayY,overlap_y, sizeof(overlap_y));
        memcpy(overlap_y,tempY, sizeof(tempY));

        //Z
        memcpy(arrayZ,overlap_z, sizeof(overlap_z));
        memcpy(overlap_z,tempZ, sizeof(tempZ));

        //feature
        double mean_x = findMean(arrayX, WINDOW_SIZE);
        double range_x = findRange(arrayX, WINDOW_SIZE);
        double iqr_x =findIQR(arrayX, WINDOW_SIZE); //75,25
        double std_x = findSTD(arrayX, WINDOW_SIZE);
        double std_y = findSTD(arrayY, WINDOW_SIZE);
        double rms_x = findRMS(arrayX, WINDOW_SIZE);

        // activity classification
        if(mean_x <= -0.342)
        {
          if(std_x <= 0.05)
          {
            if(rms_x <= 0.923)
            {

              walk_t = 0, jog_t = 0,stand_t = 0,lie_t = 0;sit_t ++;
              if(sit_t>=4)
              {
                printf("Sitting\n");
              }
            }
            else
            {
              walk_t = 0, jog_t = 0;stand_t++;lie_t = 0,sit_t = 0;
              if(stand_t>=4)
              {
               printf("Standing\n");
              }
            }
          }
          else
          {
            if(iqr_x <= 0.415)
            {
              if(std_y <= 0.386)
              {
                if(std_y <= 0.02)
                {
                  walk_t = 0, jog_t = 0,stand_t = 0,lie_t = 0;sit_t ++;
                  if(sit_t>=4)
                  {
                  printf("Sitting\n");
                  }
                }
                else
                {
                walk_t++; jog_t = 0,stand_t = 0,lie_t = 0;sit_t=0;
                if(walk_t>=4)
                  {
                    printf("Walking\n");
                  }
                }
              }
              else
              {
                if(std_x <= 0.253)
                {

                walk_t++; jog_t = 0,stand_t = 0,lie_t = 0;sit_t=0;
                if(walk_t>=4)
                  {
                    printf("Walking\n");
                  }
                }
                else
                {

                  walk_t=0; jog_t++;stand_t = 0,lie_t = 0;sit_t=0;
                  if(jog_t>=4)
                  {
                    printf("jogging\n");
                  }
                }
              }
            }
            else
            {
              if(range_x <= 0.685)
              {
                walk_t++; jog_t = 0,stand_t = 0,lie_t = 0;sit_t=0;
                if(walk_t>=4)
                {
                  printf("Walking\n");
                }
              }
              else
              {

                walk_t=0; jog_t++;stand_t = 0,lie_t = 0;sit_t=0;
                if(jog_t>=4)
                {
                  printf("jogging\n");
                }
              }
            }
          }
        }
        else
        {
          walk_t=0,jog_t=0,stand_t = 0;lie_t ++;sit_t=0;
          if(lie_t >= 3)
          {
           printf("Lying\n");
          }
        }


        j=0;
    }


}

