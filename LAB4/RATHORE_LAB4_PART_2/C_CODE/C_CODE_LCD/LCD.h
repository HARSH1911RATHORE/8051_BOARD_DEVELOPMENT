
#ifndef I2C_H_
#define I2C_H_

/*****************************************************************************​​*​​
​​*HARSH RATHORE​​
*UNIVERSITY OF COLORADO BOULDER
*FALL 2019
*EMBEDDED SYSTEMS DESIGN
​​******************************************************************************/
///**​​*​​@file​ ​name LCD.h
/*​​@LCD commands
**this header file contains all the lcd command and display instructions
​​*​​*​​@author​​ Harsh Rathore
​*​​@ date 21st nov 2019
​​*​​@version​​1.0​

*/

#define unlock (0x30)
#define Function_set (0x38)      ///macro defined for different sets of lcd commands
#define display_off (0x08)
#define display_on (0x0E)
#define entrymode_set (0x06)
#define clearscreen (0x01)
                                                 ///extern defined to be used by other files
extern volatile int8_t row2;                         ///rows and column value defined as global so that value of the teh string gets printed even when timer is running
extern volatile char ch;                                               /// hence defined its values inside the timer function
extern volatile int8_t column2;
extern volatile char *string;          ///input string which will be taken from the user is defined as global and defined inside timer function so that
                                                ///it gets printed

extern volatile int8_t  address1;                                 ///defining the address for input from the user to write a particular character

extern volatile char input;                         ///input of ui made to make the user take charge of lcd display
extern volatile uint8_t count;                      ///count used for goto xy instruction
extern volatile uint8_t row;                    ///making the row and column as global, defined for the string print when it gets displayed
                                                ///it should wrap around and
                                                    ///print line by line and should not skip the line
extern volatile uint8_t column;
__xdata __at (0xF000) volatile unsigned char instruction_reg_write;  ///Instruction Register Write address

__xdata __at (0xF100) volatile unsigned char data_register_write;   ///Data register write address

__xdata __at (0xF200) volatile unsigned char busy_flag_read;        ///  Busy Flag Read address

__xdata __at (0xF300) volatile unsigned char data_register_read;   ///Data register read address
void LCD_Init(void);
void lcdputstr(char *string);
void lcdputch(char cc);
void lcdgotoxy( uint8_t rows, uint8_t columns);
void lcdgotoaddr(uint8_t addr);
void lcd_clear_screen();
void lcdinit(void);
void lcdbusywait();
void delay(uint32_t n);



#endif
