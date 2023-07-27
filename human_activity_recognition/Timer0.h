/*
 * Timer0.h
 *
 *  Created on: Jul 8, 2023
 *      Author: My Laptop
 */

#ifndef TIMER0_H_
#define TIMER0_H_
#include "app.h"

//define
#define TIMER0_FREQUENCY 20 //Hz

void Timer0_Init(void);
void Timer0_Enable(void);
void Timer0_Disable(void);
void TIMER0_IRQHandle(void);


#endif /* TIMER0_H_ */
