#include <stdio.h>
#include <stdlib.h>
#include<at89c51ed2.h>          ///include library functions needed for lcd display and 8051
#include <mcs51/8051.h>
#include <stdint.h>

#include "LCD.h"
#include "Timer.h"

/*****************************************************************************​​*​​
​​*HARSH RATHORE​​
*UNIVERSITY OF COLORADO BOULDER
*FALL 2019
*EMBEDDED SYSTEMS DESIGN
​​******************************************************************************/
///**​​*​​@file​ ​name main.c
/*​​@main
**this main function calls all the other lcd, input and timer functions
​​*​​*​​@author​​ Harsh Rathore
​*​​@ date 21st nov 2019
​​*​​@version​​1.0​

*/
char *getdata()
{
    char *strings=0;         ///get input string data from the user
    gets(strings);
    return strings;
}

int getrow()
{
    char a[2];                ///FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
    int z;
    char c;
    while(1)
    {
        c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
        int b=(int)c;
        if (b==13)          ///IF ENTER IS PUT CONTINUE
        {
            continue;
        }
        else                ///ELSE BREAK
            break;
    }
    a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
    putchar(a[0]);

    ///TAKING ONLY THE VALUES WHICH ARE REQUIRED AND ARE VALID HEX INPUTS
    if (a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3')
    {
        z = atoi(a);
        return (z);
    }
    else
        return(-1);                 ///IF VALUES NOT VALID RETURN -1
}

int getcol()
{
    char a[3];                ///FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
    uint16_t z;
    gets(a);
    z = atoi(a);
    return (z);

}

int getadd()
{
    char a[3];                ///FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
    int z;
    char c;
    while(1)
    {
        c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
        int b=(int)c;
        if (b==13)          ///IF ENTER IS PUT CONTINUE
        {
            continue;
        }
        else                ///ELSE BREAK
            break;
    }
    a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
    putchar(a[0]);

    while(1)
    {
        c=getchar();        ///TAKE THE CHARACTER IN VARIABLE
        int b=(int)c;
        if (b==13)
        {
            continue;       ///IF ENTER IS PUT CONTINUE
        }
        else
            break;           ///ELSE BREAK
    }
    a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
    putchar(a[1]);
    ///TAKING ONLY THE VALUES WHICH ARE REQUIRED AND ARE VALID HEX INPUTS
    if ((a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
            a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||a[1]=='c'||
            a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||
            a[1]=='E'||a[1]=='F')&&(a[0]=='8'||a[0]=='9'||a[0]=='c'||a[0]=='d'||a[0]=='C'||a[0]=='D'))
    {
        z=(int)strtol(a,NULL,16);   ///FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
        return (z);
    }
    else
        return(-1);                 ///IF VALUES NOT VALID RETURN -1
}
void main(void)
{
    lcdinit();                     ///LCD INITIALIZATION
    lcdbusywait();
    lcdgotoxy(1,0);
    lcdbusywait();
    lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");   ///PUT STRING FOR LCD
    lcdbusywait();
    lcdgotoxy(0,0);
    lcdbusywait();
    lcdputstr("ABCDEFGHIKLMNOPQRESTUVWXYZ1234567890123456789abcdefghijklmnopqrstuvwxyz.");   ///WRITE STRING TO SEE WRAP AROUND
    lcdbusywait();
    lcd_clear_screen();
    lcdbusywait();
    lcdgotoxy(1,0);                ///PUT STRING AGAIN TO CHECK IF PRINTS CORRECTLY
    lcdbusywait();
    lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");
    lcdbusywait();
    lcdbusywait();

    printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
    printf_tiny("\n\rA-GO TO ADDRESS \n\r");
    printf_tiny("\n\rC-CLEAR SCREEN \n\r");
    printf_tiny("\n\rG-GO TO XY \n\r");
    printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
    printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
    printf_tiny("\n\rS-STOP THE TIMER \n\r");
    printf_tiny("\n\rR-RESTART THE TIMER \n\r");
    printf_tiny("\n\rX-RESET THE TIMER \n\r");
    printf_tiny("\n\r\ Enter the Key\n\r");
    while(1)
    {
        printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); ///PRINT STATEMENTS FOR THE SELECTING THE KEY
        printf_tiny("\n\rEnter The Key\n\r ");
        printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");

        input=getchar();                          ///TAKE INPUT IN FORM A CHARACTER FORM USER
        putchar(input);

        if(input!='\n' && input!='\r')
        {
            switch(input)
            {
            case('A'):                                                              ///WRITE ADDRESS
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address\n\r");
                int address=getadd();                                  ///ACCEPTING THE WRITE ADDRESS
                while (address==-1)                                       ///PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address);
                    printf_tiny ("\n\rEnter a New Address\n\r",address);
                    address=getadd();
                }
                delay(5);
                lcdbusywait();
                lcdgotoaddr(address);
                lcdbusywait();

                printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address);

                break;
            }
            case('G'):                                                                  ///READ OPERATION
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the row and column\n\r");
                printf_tiny("\n\rEnter the row\n\r");
                int row1=getrow();                                           ///ACCEPTING THE ROW
                while (row1==-1)                                             ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rRow is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Row\n\r");
                    row1=getrow();
                }
                printf_tiny("\n\r The row entered is %d\n\r",row1);
                printf_tiny("\n\rEnter the column\n\r");
                int column1=getcol();                                         ///ACCEPTING THE ADDRESS
                while (!((column1 <= 15) && (column1>=0)))                    ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rColumn is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Column\n\r");
                    column1=getcol();
                }
                printf_tiny("\n\r The column entered is %d\n\r",column1);
                delay(5);
                lcdbusywait();
                lcdgotoxy(row1,column1);                                    ///GOTO THE DESIRED ROW COLUMN
                lcdbusywait();
                break;
            }
            case ('C'):
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\\t CLEAR THE SCREEN\n\r");
                printf_tiny("\n\r********************************************* \n\r");
                lcdbusywait();                                            ///CLEAR THE SCREEN
                lcd_clear_screen();
                delay(5);
                lcdbusywait();
                break;
            }
            case ('W'):
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tWRITE THE CHARACTER ON LCD\n\r");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address for writing the character\n\r");
                address1=getadd();                                  ///ACCEPTING THE DDRAM ADDRESS
                while (address1==-1)                                ///PRINT DDRAM ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address1);
                    printf_tiny ("\n\rEnter a New Address\n\r",address1);
                    address1=getadd();
                }
                delay(5);
                lcdgotoaddr(address1);
                printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address1);
                printf_tiny("\n\r ENTER A CHARACTER\n\r");
                ch=getchar();
                putchar(ch);
                delay(5);
                lcdbusywait();
                lcdputch(ch);                                         ///PRITNING THE CHARACTER
                lcdbusywait();
                break;
            }
            case('P'):
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tPRINT THE STRING\n\r");
                printf_tiny("\n\rEnter the row and column for writing the string\n\r");
                printf_tiny("\n\rEnter the row\n\r");
                row2=getrow();                                           ///ACCEPTING THE ROW
                while (row2==-1)                                         ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rRow is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Row\n\r");
                    row2=getrow();
                }
                printf_tiny("\n\r The row entered is %d\n\r",row2);
                printf_tiny("\n\rEnter the column\n\r");
                column2=getcol();                                           ///ACCEPTING THE COLUMN
                while (!((column2 <= 15) && (column2>=0)))                  ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
                    ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rColumn is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Column\n\r");
                    column2=getcol();
                }
                printf_tiny("\n\r The column entered is %d\n\r",column2);
                lcdbusywait();
                lcdgotoxy(row2,column2);                                   ///GO TO THE ROW AND COLUMN MENTIONED
                lcdbusywait();
                printf_tiny("\n\r ENTER THE STRING WHICH NEEDS TO BE PRINTED\n\r");
                string=getdata();                                           ///TAKE STRING FROM THE USER
                delay(5);
                lcdbusywait();
                lcdputstr(string);                                          ///PRINT THE STRING AT THE REQUIRED LOCATION
                lcdbusywait();
                break;

            }
            case('R'):
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tRESTART THE TIMER\n\r");
                printf_tiny("\n\r********************************************* \n\r");
                mili=0;
                mili_value=0;
                second_value=0;
                seconds=0;                           ///printing the timer value form the start of program by restarting the clock
                minutes=0;
                minu=0;
                hours=0;
                break;
            }
            case('S'):
            {
                printf_tiny("\n\rRESTART THE TIMER\n\r");
                printf_tiny("\n\r\t\tSTOP THE TIMER\n\r");
                printf_tiny("\n\rRESTART THE TIMER\n\r");
                break;
            }
            case('M'):
            {
                printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
                printf_tiny("\n\rA-GO TO ADDRESS \n\r");
                printf_tiny("\n\rC-CLEAR SCREEN \n\r");
                printf_tiny("\n\rG-GO TO XY \n\r");
                printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
                printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
                printf_tiny("\n\rS-STOP THE TIMER \n\r");
                printf_tiny("\n\rR-RESTART THE TIMER \n\r");
                printf_tiny("\n\rX-RESET THE TIMER \n\r");
            }
            default:
            {
                printf_tiny("\n\r\INVALOD KEYn\r");
            }

            }
        }
    }
}



int putchar (int c)
{
    while (!TI);                              /// wait for TX ready, spin on TI
    SBUF = c;  	                            /// load serial port with transmit value
    TI = 0;  	                           /// clear TI flag
    return 0;
}

int getchar ()
{
    while (!RI)                             /// wait for RI ready, spin on RI
    {
        if(input=='T')                     ///TO PRINT TIME CONTINUOUSLY EVEN WHEN INPUT IS BEING ASKED FOR FROM THE USER
            InitTimer0();
        timer();
    }                                      /// wait for character to be received, spin on RI
    RI = 0;			                        /// clear RI flag
    return SBUF;  	                        /// return character from SBUF
}
