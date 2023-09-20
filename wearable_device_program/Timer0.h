/*
 * Timer0.h
 *
 *  Created on: Jul 27, 2023
 *      Author: My Laptop
 */

#ifndef TIMER0_H_
#define TIMER0_H_

#include "app.h"

#define TIMER0_FREQUENCY 20

// init overflow timer 0
void Timer0_Init(void);
// enable timer
void Timer0_Enable(void);
// disable timer
void Timer0_disable(void);
// handle
void TIMER0_IRQHandler(void);

#endif /* TIMER0_H_ */
