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

// get digital value to measure the battery percentage
uint16_t get_adc();
uint16_t get_percentPin();
void blink_led();
// function for finding feature
double findMean(double *myArray, int size_arr); /// Mean
double findRMS(double *myArray, int size_arr); /// Root mean square
double findSTD(double *myArray, int size_arr);/// standard deviation
void sort(double *myArray, int size_arr); /// Sorting
double findRange(double *myArray, int size_arr); /// Range
double findIQR(double *myArray, int size_arr); ///IQR

/// Decide action from feature
void check_lying(double rms_x,uint16_t *value);
void check_standing(double std_x, double rms_x, double rms_y,uint16_t *value);
void check_sitting(double rms_x, double std_x, double rms_y, double iqr_x, double range_y, double mean_y,uint16_t *value);
void check_jogging(double rms_x, double std_x, double iqr_x, double range_y,uint16_t *value);
void check_walking(double rms_x, double std_x, double iqr_x, double range_y, double mean_y,uint16_t *value);


#endif /* FEATURE_H_ */
