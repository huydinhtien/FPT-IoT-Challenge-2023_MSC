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
static uint32_t value;

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
void check_lying(double rms_x){
    if(rms_x<=TH_RMS_X){
        walk_t=0,jog_t=0,stand_t = 0;lie_t ++;sit_t=0;
        if(lie_t >= 2){
            printf("Lying\n");
            value = 1;
        }
    }
}


// standing
void check_standing(double std_x, double rms_x, double rms_y){
    if(rms_x >TH_RMS_X && std_x<=TH_STD_X1 && rms_y<= TH_RMS_Y){
        walk_t=0,jog_t=0,stand_t ++;lie_t =0;sit_t=0;
        if(stand_t>=3) {
            printf("Standing\n");
            value = 2;
        }
    }
}

void check_sitting(double rms_x, double std_x, double rms_y, double iqr_x, double range_y, double mean_y){
    if(rms_x >TH_RMS_X && std_x<=TH_STD_X1 && rms_y > TH_RMS_Y){
        walk_t=0,jog_t=0,stand_t = 0;lie_t =0;sit_t ++;
        if(sit_t>=3){
            printf("Sitting\n");
            value = 3;
        }
    }

    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y <=TH_RANGE_Y && mean_y>TH_MEAN_Y){
        walk_t=0,jog_t=0,stand_t = 0;lie_t =0;sit_t++;
        if(sit_t >=3) {
            printf("Sitting\n");
            value = 3;
        }
    }
}

void check_jogging(double rms_x, double std_x, double iqr_x, double range_y){
    if(rms_x >TH_RMS_X && std_x>TH_STD_X1 && iqr_x> TH_IQR_X){
        walk_t=0,jog_t++,stand_t = 0;lie_t =0;sit_t=0;
        if(jog_t >=3){
            printf("Jogging\n");
            value = 4;
        }
    }

    if(rms_x >TH_RMS_X && iqr_x<= TH_IQR_X && range_y >TH_RANGE_Y && std_x>TH_STD_X2){
         walk_t=0,jog_t++,stand_t = 0;lie_t =0;sit_t=0;
         if(jog_t >=3) {
            printf("Jogging\n");
            value = 4;
         }
    }
}
void check_walking(double rms_x, double std_x, double iqr_x, double range_y, double mean_y){
    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y <=TH_RANGE_Y && mean_y<=TH_MEAN_Y){
        walk_t++,jog_t=0,stand_t = 0;lie_t =0;sit_t=0;
        if(walk_t++ >=3) {
            printf("Walikng\n");
            value = 5;
        }
    }

    if(rms_x >TH_RMS_X && std_x >TH_STD_X1 && iqr_x<= TH_IQR_X && range_y >TH_RANGE_Y && std_x<=TH_STD_X2){
        walk_t++,jog_t=0,stand_t = 0;lie_t =0;sit_t=0;
        if(walk_t++ >=3){
            printf("Walikng\n");
            value = 5;
        }
    }
}
