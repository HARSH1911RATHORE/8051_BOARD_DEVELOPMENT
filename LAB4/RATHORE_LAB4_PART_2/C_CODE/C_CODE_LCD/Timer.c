#include"Timer.h"
#include "LCD.h"

/*****************************************************************************​​*​​
​​*HARSH RATHORE​​
*UNIVERSITY OF COLORADO BOULDER
*FALL 2019
*EMBEDDED SYSTEMS DESIGN
​​******************************************************************************/
///**​​*​​@file​ ​name Timer.c
/*​​@timer  print and usage of functions
**this header file contains all the timer calculations and clock printing
​​*​​*​​@author​​ Harsh Rathore
​*​​@ date 21st nov 2019
​​*​​@version​​1.0​

*/

volatile uint32_t mili=0;                         ///input count values for the clock
volatile uint32_t mili_value=0;
volatile uint32_t second_value=0;
volatile uint32_t seconds=0;                           ///incrementing the timer values and making it stay as original
extern volatile uint32_t  minutes=0;
volatile uint32_t  minu=0;
volatile uint8_t  hours=0;
void InitTimer0(void)
{
    TMOD |= 0x01;                                                  /// Timer 0 Mode 1
    TH0=0x4B;
    TL0=0xFD;                                                      ///LOADING VALUE FOR 50 MS INTERRUPT TRIGGER
    ET0=1;
    EA=1;                                                        ///ENABLING INTERRUPT
    TR0=1;
    if (input=='S')                                             ///STOP THE TIMER
        TR0=0;
    else if(input=='R')                                         ///START THE TIMER AGAIN
        TR0 = 1;

}

void Timer0_ISR (void) __interrupt 1                            /// It is called after every 50 msec
{
    EA=0;
    (P1_2)=(P1_2)^1;
    mili=mili+5;                                                ///increment the mili value for each interrupt trigger to calculate the clock
    TH0=0x4B;
    TL0=0xFD;
    TF0 = 0;                                                        /// Clear the interrupt flag
    EA=1;
}

void timer()
{
    mili_value=mili%100;
    second_value=mili/100;
    seconds=second_value%60;                           ///printing the timer value form the start of program
    minutes=second_value/60;
    if (seconds>59)
        minutes++;                                    ///timer clock calculation performed by taking mod and divide operation
    minu=minutes%60;                                    ///1 min=60 sec    1hour=60 min    1 sec=1000 mili seconds
    hours=minutes/60;
    DisplayTimeToLCD(hours,minutes,seconds,mili_value);
}


void DisplayTimeToLCD( unsigned int h, unsigned int m, unsigned int s,unsigned int mil )   /// Displays time in HH:MM:SS.mili format
{
    if (input!='S')
    {
        int i=0;
        char time_value[10]= {'0',':','0','0',':','0','0','.','0'};
        time_value[0]=(h%10)+48;
        time_value[1]=':';
        time_value[2]=(m/10)+48;                           ///taking the ascii value of the clock and printing in the values of clock on lcd
        time_value[3]=(m%10)+48;
        time_value[4]=':';
        time_value[5]=(s/10)+48;
        time_value[6]=(s%10)+48;
        time_value[7]='.';
        time_value[8]=(mil/10)+48;
        time_value[9]='\0';

        lcdgotoxy(0,6);                                   ///go to a particular location to print time
        lcdbusywait();
        lcdputstr(time_value);                           ///print time at that location
        lcdbusywait();
        if(input=='W')                                   ///if input is to write character , print character value at that location
        {
            lcdgotoaddr(address1);
            lcdputch(ch);
        }
        if(input=='P')                              ///if input is to write string , print string value at that location
        {
            lcdgotoxy(row2,column2);
            lcdputstr(string);
        }
    }
}

