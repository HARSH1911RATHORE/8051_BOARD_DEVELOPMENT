#include <stdio.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
// This program uses the PCA module 0 in 16-bit Timer mode.
// This program will trigger an interrupt event every 20000 counts.
// Assuming a 12MHz clock, an event should trigger every 20ms.

void PCA_ISR()
{
unsigned int temp;
IE = IE & 0xBF; // Stop Interrupts
CCF0 = 0; // Clear Int flag
temp = CCAP0L | (CCAP0H << 8); // The following four lines
temp += 0x4E20; // of code increase the
CCAP0L = temp; // compare value in CCAP0
CCAP0H = temp >> 8; // by 20000, effectively
// refreshing the timer.
IE = IE | 0x40; // Start interrupts
}
void main()
{
CMOD = 0x01; // Setup PCA timer mode.
CH = 0x00; // Init values
CL = 0x00;
CCAP0L = 0x20; // Set compare limit
CCAP0H = 0x4E;
CCAPM0 = 0x49; // Set Modules zero for 16bit Timer mode.
IE = 0xC0; // Enable Interrupts
CR = 1; // Start PCA timer
while(1)
{}
}
