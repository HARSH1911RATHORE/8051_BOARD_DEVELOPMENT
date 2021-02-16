#include <stdio.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
// This program uses PCA module 4 for the Watchdog timer. Note that only module 4
// can be used for the Watchdog timer. There are two ways of refreshing the timer to
// avoid a Watchdog reset. The first way is to reset the CH and CL registers. This is
// not recommended if you are using other PCA modules since disturbing the CH and
// CL registers would disturb the functionality of those other modules. The second choice is
// to change the values in CCAP4H/L. This is the best way to go since it accomplishes
// the same task of preventing Watchdog reset without the possibility of affecting the
// other PCA modules.


void refresh_WDT();
void delay();
void main()
{

CMOD = CMOD | 0x40;
CL=0;
CH=0;
printf_tiny("Reset");
CMOD=CMOD|0x02;

CCAP4L = 0xFF; // Setup PCA module 4 for Watchdog Timer
CCAP4H = 0xFF;
CCAPM4 = 0x4C;
CR=1;
while (1)
{
 // This function refreshes the WDT and should be
// used periodically.
delay();
}
}
void delay()
{
unsigned int i ;
for(i = 0; i < 1024; i++);
}
/**********WATCH DOG REFRESH*********/
void refresh_WDT()
{
EA = 0;
CCAP4L = 0;
CCAP4H = CH;
EA = 1;
}

int putchar (int c)
{
    while (!TI);				// compare asm code generated for these three lines
    // wait for TX ready, spin on TI
    SBUF = c;  	// load serial port with transmit value
    TI = 0;  	// clear TI flag
    return 0;
}

int getchar ()
{
    while (!RI);                // compare asm code generated for these three lines
    // wait for character to be received, spin on RI
    RI = 0;			// clear RI flag
    return SBUF;  	// return character from SBUF
}

