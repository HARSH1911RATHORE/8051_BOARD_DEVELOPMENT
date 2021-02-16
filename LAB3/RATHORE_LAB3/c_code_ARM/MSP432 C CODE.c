
/* DriverLib Includes */
#include <ti/devices/msp432p4xx/driverlib/driverlib.h>

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>             //include all the standard libraries required to bed used in the function
#include<stdio.h>
#include<string.h>

//![Simple Timer_A Config]
/* Timer_A PWM Configuration Parameter */
Timer_A_PWMConfig pwmConfig =
{
 TIMER_A_CLOCKSOURCE_SMCLK,
 TIMER_A_CLOCKSOURCE_DIVIDER_1, //setting the values of clock source, divider, pre-divider ,duty cycle
                                //capture compare register
 32000,
 TIMER_A_CAPTURECOMPARE_REGISTER_1,
 TIMER_A_OUTPUTMODE_RESET_SET,
 12800
};

int duty=40;         //initializing the values of duty cycle, temperature values, clock divider,
                                 //buffer and temporary buffers
char buffer[30];
uint16_t temp;
char tempvalue[30];
volatile long tempe;
volatile float IntDegF;
volatile float IntDegC;
char buffer[];
int t=1;
int i;
char tempvalue1[];
//![Simple Timer_A Config]

int main(void)

{
    WDT_A->CTL = WDT_A_CTL_PW |             // Stop watchdog timer
            WDT_A_CTL_HOLD;

    CS->KEY = CS_KEY_VAL;                   // Unlock CS module for register access
    CS->CTL0 = 0;                           // Reset tuning parameters
    CS->CTL0 = CS_CTL0_DCORSEL_3;           // Set DCO to 12MHz (nominal, center of 8-16MHz range)
    CS->CTL1 = CS_CTL1_SELA_2 |             // Select ACLK = REFO
            CS_CTL1_SELS_3 |                // SMCLK = DCO
            CS_CTL1_SELM_3;                 // MCLK = DCO
    CS->KEY = 0;                            // Lock CS module from unintended accesses

    // Configure UART pins
    P1->SEL0 |= BIT2 | BIT3;                // set 2-UART pin as secondary function

    // Configure UART
    EUSCI_A0->CTLW0 |= EUSCI_A_CTLW0_SWRST; // Put eUSCI in reset
    EUSCI_A0->CTLW0 = EUSCI_A_CTLW0_SWRST | // Remain eUSCI in reset
            EUSCI_B_CTLW0_SSEL__SMCLK;      // Configure eUSCI clock source for SMCLK
    // Baud Rate calculation
    // 12000000/(16*9600) = 78.125
    // Fractional portion = 0.125
    // User's Guide Table 21-4: UCBRSx = 0x10
    // UCBRFx = int ( (78.125-78)*16) = 2
    EUSCI_A0->BRW = 78;                     // 12000000/16/9600
    EUSCI_A0->MCTLW = (2 << EUSCI_A_MCTLW_BRF_OFS) |
            EUSCI_A_MCTLW_OS16;

    EUSCI_A0->CTLW0 &= ~EUSCI_A_CTLW0_SWRST; // Initialize eUSCI
    EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;    // Clear eUSCI RX interrupt flag
    EUSCI_A0->IE |= EUSCI_A_IE_RXIE;        // Enable USCI_A0 RX interrupt

    // Enable global interrupt
    __enable_irq();

    // Enable eUSCIA0 interrupt in NVIC module
    NVIC->ISER[0] = 1 << ((EUSCIA0_IRQn) & 31);

    // Enable sleep on exit from ISR
    SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;


    //![Simple Timer_A Example]
    /* Setting MCLK to REFO at 128Khz for LF mode
     * Setting SMCLK to 64Khz */

    P2->DIR |= BIT2;
    P2->OUT |= BIT2;
    MAP_CS_setReferenceOscillatorFrequency(CS_REFO_128KHZ);
    MAP_CS_initClockSignal(CS_MCLK, CS_REFOCLK_SELECT, CS_CLOCK_DIVIDER_1);

    MAP_PCM_setPowerState(PCM_AM_LF_VCORE0);

    /* Configuring GPIO2.4 as peripheral output for PWM  and P6.7 for button
     * interrupt */

    MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(GPIO_PORT_P2, GPIO_PIN2,
                                                    GPIO_PRIMARY_MODULE_FUNCTION);

//    MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(GPIO_PORT_P2, GPIO_PIN2,
//                                                    GPIO_PRIMARY_MODULE_FUNCTION);
    MAP_GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_P1, GPIO_PIN1); //Enabling the input with pull up
    //resistor
    MAP_GPIO_clearInterruptFlag(GPIO_PORT_P1, GPIO_PIN1); //clear interrupt flag so that no previous
    //interrupt remains
    MAP_GPIO_enableInterrupt(GPIO_PORT_P1, GPIO_PIN1);  //enable interrupt for port 1 pin 1

    MAP_GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_P1, GPIO_PIN4); //Enabling the input with pull up
    //resistor
    MAP_GPIO_clearInterruptFlag(GPIO_PORT_P1, GPIO_PIN4);//clear interrupt flag so that no previous
    //interrupt remains
    MAP_GPIO_enableInterrupt(GPIO_PORT_P1, GPIO_PIN4); //enable interrupt for port 1 pin 1

    /* Configuring Timer_A to have a period of approximately 500ms and
     * an initial duty cycle of 10% of that (3200 ticks)  */
    MAP_Timer_A_generatePWM(TIMER_A0_BASE, &pwmConfig);
    //![Simple Timer_A Example]

    /* Enabling interrupts and starting the watchdog timer */
    MAP_Interrupt_enableInterrupt(INT_PORT1);
    MAP_Interrupt_enableSleepOnIsrExit();
    MAP_Interrupt_enableMaster();


    // Variables to store the ADC temperature reference calibration value
    int32_t adcRefTempCal_1_2v_30;
    int32_t adcRefTempCal_1_2v_85;

    WDT_A->CTL = WDT_A_CTL_PW |             // Stop WDT
            WDT_A_CTL_HOLD;

    // Read the ADC temperature reference calibration value
    adcRefTempCal_1_2v_30 = TLV->ADC14_REF1P2V_TS30C;
    adcRefTempCal_1_2v_85 = TLV->ADC14_REF1P2V_TS85C;

    // Initialize the shared reference module
    // By default, REFMSTR=1 => REFCTL is used to configure the internal reference
    while(REF_A->CTL0 & REF_A_CTL0_GENBUSY);// If ref generator busy, WAIT
    REF_A->CTL0 |= REF_A_CTL0_VSEL_0 |      // Enable internal 1.2V reference
            REF_A_CTL0_ON;                  // Turn reference on

    REF_A->CTL0 &= ~REF_A_CTL0_TCOFF;       // Enable temperature sensor

    // Configure ADC - Pulse sample mode; ADC14_CTL0_SC trigger
    ADC14->CTL0 |= ADC14_CTL0_SHT0_6 |      // ADC ON,temperature sample period>5us
            ADC14_CTL0_ON |
            ADC14_CTL0_SHP;
    ADC14->CTL1 |= ADC14_CTL1_TCMAP;        // Enable internal temperature sensor
    ADC14->MCTL[0] = ADC14_MCTLN_VRSEL_1 |  // ADC input ch A22 => temp sense
            ADC14_MCTLN_INCH_22;
    ADC14->IER0 = 0x0001;                   // ADC_IFG upon conv result-ADCMEM0

    // Wait for reference generator to settle
    while(!(REF_A->CTL0 & REF_A_CTL0_GENRDY));

    ADC14->CTL0 |= ADC14_CTL0_ENC;

    // Enable global interrupt
    __enable_irq();

    NVIC->ISER[0] = 1 << ((ADC14_IRQn) & 31);// Enable ADC interrupt in NVIC module

    SCB->SCR &= ~SCB_SCR_SLEEPONEXIT_Msk;   // Wake up on exit from ISR

    // Ensures SLEEPONEXIT takes effect immediately
    __DSB();

    while(1)
    {
        int m;

    ADC14->CTL0 |= ADC14_CTL0_SC;       // Sampling and conversion start

    // Temperature in Celsius
    // The temperature (Temp, C)=
    IntDegC = (((float) tempe - adcRefTempCal_1_2v_30) * (85 - 30)) /
            (adcRefTempCal_1_2v_85 - adcRefTempCal_1_2v_30) + 30.0f;

    // Temperature in Fahrenheit
    // Tf = (9/5)*Tc | 32
    IntDegF = ((9 * IntDegC) / 5) + 32;

    sprintf(tempvalue,"%f",IntDegF);    // print the result of temperature calculation in a buffer tempvalue

    printf("%f   ",IntDegC);     //printf to see temperature values on the console
    if (t==0)
    {
        puts(tempvalue);

    }

    }


}

int putcharc (int c)
{
    t=0;
    while (!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));  // wait for transmit buffer to be empty
    // wait for TX ready, spin on TI
    EUSCI_A0->TXBUF = c;             // load serial port with transmit value
    //TI flag is automatically cleared
    return 0;
}


int getcharc ()
{
    while (!(EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG));      //  wait for receive buffer to recieve the data completely
    // wait for character to be received, spin on RI
    return EUSCI_A0->RXBUF;                            // return character from RXBUF
}

// ADC14 interrupt service routine
void ADC14_IRQHandler(void)
{
    if (ADC14->IFGR0 & ADC14_IFGR0_IFG0)       //ADC Interrupt flag is checked if it is set
    {
        tempe= ADC14->MEM[0];                 //temp is equal to adc memo register
    }
}


/* Port1 ISR - This ISR will progressively step up the duty cycle of the PWM
 * on a button press
 */

void EUSCIA0_IRQHandler(void)
{
    if (EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG)    //check if the receive flag is set when data is received
    {
        // Check if the TX buffer is empty first
        while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));

        // Echo the received character back
        uint16_t temp =  EUSCI_A0->RXBUF;
        EUSCI_A0->TXBUF = temp;

        while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG)); //wait for data transmit buffer to set once it
        //is empty
        if (temp=='p' || temp=='P')   //check if we have received p character
        {

            char ch1[]="   Pwm duty cycle:";
            int i = 0;                         //if yes we print the pwm current duty cycle
            while (ch1[i]!='\0')
            {                                //we check for the null character and print data
                //by transmitting data till we receive it by
                //continuously waiting for the transmit buffer to clear
                //on each transmission
                EUSCI_A0->TXBUF =ch1[i];
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                i++;
            }

                sprintf(buffer, "%d",duty);  //store the data of duty cycle into the buffer
                int d = 0;
                while(buffer[d]!='\0')
                {                                  //print the suty cycle
                    EUSCI_A0->TXBUF =buffer[d];
                    while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                    d++;
                }

        }
        else if (temp=='t' || temp=='T')     //if character is t then temperature is
                                                //printed in degree celsius
        {
            char ch2[]="   Temperature:%";
            int j = 0;
            while (ch2[j]!='\0')
            {                                   //print temperature character one by one by
                                                //printing the values one at a time
                EUSCI_A0->TXBUF =ch2[j];
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                j++;
            }


            int i = 0;
            while(i<4)                    //print the first four values of temperature
            {
                EUSCI_A0->TXBUF =tempvalue[i];
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                i++;
            }

        }
    }


}



void PORT1_IRQHandler(void)
{
    uint32_t status = MAP_GPIO_getEnabledInterruptStatus(GPIO_PORT_P1);
    MAP_GPIO_clearInterruptFlag(GPIO_PORT_P1, status);    // check for th status of interrupt

    if (status & GPIO_PIN1)
    {
            pwmConfig.dutyCycle += 3200;

        duty=duty+10;
        if(duty>100)             //increase the value of duty which is printed on uart
            duty=100;
        sprintf(buffer, "%d",duty);

        MAP_Timer_A_generatePWM(TIMER_A0_BASE, &pwmConfig);
    }
    else if (status & GPIO_PIN4)
    {                                       //decrease duty cycle by 10 percent each time
            pwmConfig.dutyCycle -= 3200;

        duty=duty-10;    //increase the value of duty which is printed on uart
        if(duty<0)
            duty=0;
        sprintf(buffer, "%d",duty);

        MAP_Timer_A_generatePWM(TIMER_A0_BASE, &pwmConfig);
    }
}







