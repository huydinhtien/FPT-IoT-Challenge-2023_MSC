/*
 * feature.h
 *
 *  Created on: Jul 28, 2023
 *      Author: My Laptop
 */

#ifndef FEATURE_H_
#define FEATURE_H_

#include "app.h"

double findMean(double *myArray, int size_arr);
double findRMS(double *myArray, int size_arr);
double findSTD(double *myArray, int size_arr);
void sort(double *myArray, int size_arr);
double findRange(double *myArray, int size_arr);
double findIQR(double *myArray, int size_arr);
void check_lying(double rms_x);
void check_standing(double std_x, double rms_x, double rms_y);
void check_sitting(double rms_x, double std_x, double rms_y, double iqr_x, double range_y, double mean_y);
void check_jogging(double rms_x, double std_x, double iqr_x, double range_y);
void check_walking(double rms_x, double std_x, double iqr_x, double range_y, double mean_y);


#endif /* FEATURE_H_ */
