#include <stdio.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
// This program is designed to use the PCA module to calculate the width of a
// detected pulse. The pulse must begin with a rising edge and end with a falling
// edge on the CEX0 pin.

unsigned int flag = 0; // Rising or falling edge flag.
unsigned int pulse_width = 0x00; // Final pulse width calculation is stored here.
unsigned int capture1 = 0x00; // Rising edge captured here.
unsigned int capture2 = 0x00; // Falling edge captured here.
void PCA_ISR() // PCA Interrupt Service routine
{
CCF0 = 0; // Clear the PCA flag
if (flag == 0)
{
capture1 = CCAP0L | (CCAP0H << 8); // If positive edge, store in
CCAPM0 = 0x11; // capture1. Setup module
flag = 1; // 0 for capturing falling edge
}
else
{
capture2 = CCAP0L | (CCAP0H << 8); // Capture falling edge
pulse_width = capture2 - capture1; // Final calculation.
CCAPM0 = 0x21; // Setup module 0 for
// capturing rising edge.
flag = 0; // Reset flag
}
}
void main()
{
CMOD = 0x03; //Setting up the PCA counter
CH = 0x00;
CL = 0x00;
CCAPM0 = 0x21; // Setup module zero in capture mode
flag = 0;
IE = 0xC0; // Enable PCA interrupt
CR = 1; // Start PCA counter
while (1) // Software trap
{}
}
