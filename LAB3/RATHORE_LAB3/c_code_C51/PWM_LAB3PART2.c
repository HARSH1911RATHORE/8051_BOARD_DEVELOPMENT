#include <stdio.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
// This program generates a pulse by comparing the CL register with the
// value stored in CCAP0L. If CL >= CCAP0L then the output is HIGH.
// If CL < CCAP0L then the output is LOW.
// The duty cycle is determined by the value stored in CCAP0H.

//int test;
//
//void delay(int k)			/* mSecond Delay function for Xtal 11.0592 MHz */
//{
//	int i,j;
//	for (i=0;i<k;i++)
//		for (j=0;j<112;j++);
//}
//
//void ExtInt_Init()		/* External interrupt initialize */
//{
//	IT0 = 1;      		/* Interrupt0 on falling edge */
//	EX0 = 1;      		/* Enable External interrupt0 */
//	IT1 = 1;      		/* Interrupt1 on falling edge */
//	EX1 = 1;      		/* Enable External interrupt1 */
//	EA  = 1;		/* Enable global interrupt */
//	IP = 0x01;		/* Set highest priority for Ext. interrupt0 */
//}
//
//void External0_ISR() /* External int0 ISR */
//{
//	PCON = 0x00;		 /* Disable Idle & Power Down mode */
//}
//
//void External1_ISR() /* External int1 ISR */
//{
//	PCON = 0x01;		 /* Enable Idle mode */
//				 /* Enable Power Down mode by PCON = 0x02; */
//}
void main()
{
CMOD = 0x02; // Setup PCA timer
CL = 0x00;
CH = 0x00;
CCAP0L = 0x8D; // Set the initial value same as CCAP0H
CCAP0H = 0x8D; // 75% Duty Cycle
CCAPM0 = 0x42; // Setup PCA module 0 in PWM mode.
CR = 1; // Start PCA Timer.
PCON = 0X00;
//CKRL=0x00;
//PCON = 0x00;

//ExtInt_Init();
//	while(1)		 /* Toggle P1.0 continuous */
//	{
//		test = 0;
//		delay(30);
//		test = 1;
//		delay(30);
//	}
//while (1)
//{}
}
/*
   IE=0x85;                    // Activating both the interrupts EX0 and EX1
   while(1);
}
void extr0(void)      //Subroutine EX0 with interrupt number '0'
  {
    P0=0xFF;
                               //Your command goes here
  }
void extr1(void)    //Subroutine EX1 with Interrupt Number '1'
  {
    P0=0x00;

  }
*/




//void main()
//{
//  ExtInt_Init();
//	while(1)		 /* Toggle P1.0 continuous */
//	{
//		test = 0;
//		delay(30);
//		test = 1;
//		delay(30);
//	}
//
//}
