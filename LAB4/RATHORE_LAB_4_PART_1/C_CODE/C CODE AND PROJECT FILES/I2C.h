#ifndef I2C_H_
#define I2C_H_
#include "LIBRARY.h"

extern int EEPROM_CMD;                //EEPROM COMMAND TO PERFORM WRITE OR READ OPERATION
extern int EEPROM_CMD_PAGE;           //EEPROM COMMAND TO PERFORM WRITE OPEARTION
extern unsigned int word_address;     //WORD ADDRESS DEFINED FOR WRITE AND READ OPERATUIONS AND
extern unsigned int word_address1;    //TO PERFORM SEQUENTIAL READ OPERATION
extern unsigned int word_address2;
extern unsigned int word_address3;
extern int page_block1;               //PAGE BLOCKS DEFINED FOR VARIOUS WRITE, READ AND SEQUENTIAL READ OPERATIONS
extern int page_block2;               //SET AS GLOBAL SO THAT ANY CHANGE MADE DURING OPERTATIONS DOES NOT CHANGE
extern int page_block3;
void Delay();
void Long_Delay();
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
void reset();

#endif
