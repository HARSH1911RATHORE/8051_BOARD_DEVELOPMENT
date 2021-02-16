#ifndef TIMER_H_
#define TIMER_H_

/*****************************************************************************​​*​​
​​*HARSH RATHORE​​
*UNIVERSITY OF COLORADO BOULDER
*FALL 2019
*EMBEDDED SYSTEMS DESIGN
​​******************************************************************************/
///**​​*​​@file​ ​name Timer.h
/*​​@clock commands
**this header file contains all the timer calculations
​​*​​*​​@author​​ Harsh Rathore
​*​​@ date 21st nov 2019
​​*​​@version​​1.0​

*/

#include <stdio.h>
#include <stdlib.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
#include <stdint.h>

extern volatile uint32_t    mili;                         ///input count values for the clock
extern volatile uint32_t    mili_value;                     ///extern defined to be used by other files
extern volatile uint32_t	second_value;
extern volatile uint32_t	seconds;                           ///incrementing the timer values and making it stay as original
extern volatile uint32_t	minutes;
extern volatile uint32_t	minu;
extern volatile uint8_t     hours;
void timer();
void DisplayTimeToLCD( unsigned int h, unsigned int m, unsigned int s,unsigned int mil );
void Timer0_ISR (void) __interrupt 1;
void InitTimer0(void);


#endif
