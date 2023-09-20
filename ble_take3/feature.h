/*
 * feature.h
 *
 *  Created on: Jul 28, 2023
 *      Author: My Laptop
 */

#ifndef FEATURE_H_
#define FEATURE_H_

#include "app.h"
#include "sl_sleeptimer.h"

uint16_t get_adc();
uint16_t get_percentPin();
void blink_led();
double findMean(double *myArray, int size_arr);
double findRMS(double *myArray, int size_arr);
double findSTD(double *myArray, int size_arr);
void sort(double *myArray, int size_arr);
double findRange(double *myArray, int size_arr);
double findIQR(double *myArray, int size_arr);
void check_lying(double rms_x,uint16_t *value);
void check_standing(double std_x, double rms_x, double rms_y,uint16_t *value);
void check_sitting(double rms_x, double std_x, double rms_y, double iqr_x, double range_y, double mean_y,uint16_t *value);
void check_jogging(double rms_x, double std_x, double iqr_x, double range_y,uint16_t *value);
void check_walking(double rms_x, double std_x, double iqr_x, double range_y, double mean_y,uint16_t *value);


#endif /* FEATURE_H_ */
