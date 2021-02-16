#ifndef LIBRARY_H_
#define LIBRARY_H_

#include <stdio.h>
#include <stdlib.h>             //STANDARD LIBRARIES DEFINED FOR BASIC INPUT/OUTPUT OPERATIONS
#include<at89c51ed2.h>          //LIBRARIES REQUIRED FOR COMMUNICATION WITH 8051
#include <mcs51/8051.h>
#include <stdint.h>

#define SDA (P1_5)
#define SCLK (P1_6)            //SETTING P1.5 AND P1.6 AS PINS CONNECTED TO SDA AND SCLK
#define HIGH 1                 //DEFINING MACRO HIGH AND LOW FOR SDA AND SCLK
#define LOW 0


void Delay();
void Long_Delay();
void reset();
void I2C_Start(void);
void I2C_Stop(void);
void I2C_Reset();
unsigned char I2C_Read(void);
void I2C_Write(unsigned int write);
void EEPROM_WrByte(unsigned int word_address,unsigned int data_write);
void PAGE_Write(unsigned int word_address3,unsigned int data_write);
void ack_eeprom();
unsigned char EEPROM_RdByte(unsigned int word_address1);
void Sequence_read(unsigned int hex_start_address,unsigned int hex_end_address);
int getdata();
int getnumber();


#endif

