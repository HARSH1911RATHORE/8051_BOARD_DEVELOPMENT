#include "I2C.h"
#include "LIBRARY.h"

int EEPROM_CMD=0;                //EEPROM COMMAND TO PERFORM WRITE OR READ OPERATION
int EEPROM_CMD_PAGE=0;           //EEPROM COMMAND TO PERFORM WRITE OPEARTION
unsigned int word_address=0;     //WORD ADDRESS DEFINED FOR WRITE, READ OPERATUIONS AND
unsigned int word_address1=0;    //TO PERFORM SEQUENTIAL READ OPERATION
unsigned int word_address2=0;
unsigned int word_address3=0;
int page_block1=0;               //PAGE BLOCKS DEFINED FOR VARIOUS WRITE, READ AND SEQUENTIAL READ OPERATIONS
int page_block2=0;               //SET AS GLOBAL SO THAT ANY CHANGE MADE DURING OPERTATIONS DOES NOT CHANGE
int page_block3=0;

int getdata()
{
    char a[3];                //FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
    int z;
    char c;
    while(1)
    {
        c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
        int b=(int)c;
        if (b==13)          //IF ENTER IS PUT CONTINUE
        {
            continue;
        }
        else                //ELSE BREAK
            break;
    }
    a[0]=c;                 //TAKE THE CHARACTER IN ARRAY A[0]
    putchar(a[0]);

    while(1)
    {
        c=getchar();        //TAKE THE CHARACTER IN VARIABLE
        int b=(int)c;
        if (b==13)
        {
            continue;       //IF ENTER IS PUT CONTINUE
        }
        else
            break;           //ELSE BREAK
    }
    a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
    putchar(a[1]);
    //TAKING ONLY THE VALUES WHICH ARE REQUIRED AND ARE VALID HEX INPUTS
    if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||
        a[0]=='6'||a[0]=='7'||a[0]=='8'||a[0]=='9'||a[0]=='a'||a[0]=='b'||a[0]=='c'||
        a[0]=='d'||a[0]=='e'||a[0]=='f'||a[0]=='A'||a[0]=='B'||a[0]=='C'||a[0]=='D'||
        a[0]=='E'||a[0]=='F')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||
        a[1]=='5'||a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||
        a[1]=='a'||a[1]=='b'||a[1]=='c'||a[1]=='d'||a[1]=='e'||
        a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F'))
    {
        z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
        return (z);
    }
    else
        return(-1);                 //IF VALUES NOT VALID RETURN -1
}

int getnumber()         //FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
{
    char a[4];
    int z;

    char c;
    while(1)
    {
        c=getchar();     //TAKE THE CHARACTER IN VARIABLE C
        int b=(int)c;
        if (b==13)
        {
            continue;    //IF ENTER IS PUT CONTINUE
        }
        else
            break;      //ELSE BREAK
    }
    a[0]=c;
    putchar(a[0]);

    while(1)
    {
        c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
        int b=(int)c;
        if (b==13)
        {

            continue;       //IF ENTER IS PUT CONTINUE
        }
        else
            break;          //ELSE BREAK
    }
    a[1]=c;
    putchar(a[1]);


    while(1)
    {
        c=getchar();        //TAKE THE CHARACTER IN VARIABLE C


        int b=(int)c;
        if (b==13)
        {
            continue;       //IF ENTER IS PUT CONTINUE
        }
        else
            break;          //ELSE BREAK
    }
    a[2]=c;
    putchar(a[2]);

    //TAKING ONLY THE VALUES WHICH ARE REQUIRED AND ARE VALID HEX INPUTS
    if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||a[0]=='6'||
        a[0]=='7')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
        a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||
        a[1]=='c'||a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||
        a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F')&&(a[2]=='0'||a[2]=='1'||
        a[2]=='2'||a[2]=='3'||a[2]=='4'||a[2]=='5'||a[2]=='6'||a[2]=='7'||
        a[2]=='8'||a[2]=='9'||a[2]=='A'||a[2]=='B'||a[2]=='C'||a[2]=='D'||
        a[2]=='E'||a[2]=='F'||a[2]=='a'||a[2]=='b'||a[2]=='c'||a[2]=='d'||a[2]=='e'||a[2]=='f'))
    {
        z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
        return (z);
    }
    else if ((a[0]=='\n'&&a[0]=='\r')||(a[1]=='\n'&&a[1]=='\r')||(a[2]=='\n'&&a[2]=='\r'))
    {
        z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
        return (z);
    }
    else
        return(-1);
}



void main()
{
    printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");    //PRINT STATEMENTS FOR THE USER INTERFACE
    printf_tiny("\n\r~~~~~~~~~~~~~~~~~I2C~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
    printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
    printf_tiny("\n\rThe following commands will be performed \n\r");
    printf_tiny("\n\rW-Write Byte \n\r");
    printf_tiny("\n\rR-Read Byte \n\r");
    printf_tiny("\n\rH-Hex Dump \n\r");
    printf_tiny("\n\rP-Page Write \n\r");
    printf_tiny("\n\rE-Reset Eeprom \n\r");

    while(1)
    {
        printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); //PRINT STATEMENTS FOR THE SELECTING THE KEY
        printf_tiny("\n\rEnter The Key\n\r ");
        printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
        char input;
        input=getchar();                          //TAKE INPUT IN FORM A CHARACTER FORM USER
        putchar(input);

        if(input!='\n' && input!='\r')
        {
            switch(input)
            {
            case('W'):                                                              //WRITE OPERATION
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tWRITE BYTE\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the 3 Digit Write Address\n\r");
                int write_address=getnumber();                                  //ACCEPTING THE WRITE ADDRESS
                while (write_address==-1)                                       //PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
                    printf_tiny ("\n\rEnter a New Address\n\r",write_address);
                    write_address=getnumber();
                }
                while(!(write_address>=0 && write_address<=2047))              // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
                {
                    printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
                    printf_tiny ("\n\rEnter a New Address\n\r",write_address);
                    write_address=getnumber();                                //IF NOT TAKE IT AGAIN
                    if(write_address!='\n' && write_address!='\r')
                        write_address=getnumber();
                }

                printf_tiny ("\n\rThe Address for Write Operation is %x.\n\r",write_address);

                int internal_address=write_address;                     //TAKING ADDRESS IN A VARIABLE
                int page_selection_bits=write_address&0x700;            //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
                int page_block=page_selection_bits>>7;
                EEPROM_CMD=0xA0|page_block;                             //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
                word_address=internal_address&0x0FF;                    //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME
                printf_tiny("\n\rEnter the 2 Digit Data value to be Written\n\r");
                int data_write=getdata();                               //ACCEPTING THE WRITE BYTE

                while (data_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
                    printf_tiny ("\n\rEnter a New Data\n\r",data_write);

                    data_write=getdata();
                }
                while(!(data_write>=0 && data_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
                {
                    printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
                    printf_tiny ("\n\rEnter a New Data\n\r",data_write);
                    data_write=getdata();
                    if(data_write!='\n' && data_write!='\r')
                        data_write=getdata();                           //IF NOT TAKE IT AGAIN
                }
                printf ("\n\rData Value to be Written is %x.\n\r",data_write);
                EEPROM_WrByte(word_address, data_write);                //CALLING THE FUNCTION TO WRITE BYTE AT A GIVEN LOCATION
                int i;
                                                                        //CALLING FOR DELAYS BETWEEN DIFFERENT BYTE WRITE
                for (i=0; i<100; i++)
                {
                    Delay();
                }
                for (i=0; i<100; i++)
                {
                    Delay();
                }
                for (i=0; i<100; i++)
                {
                    Delay();
                }
                for (i=0; i<100; i++)
                {
                    Delay();

                }
                for (i=0; i<100; i++)
                {
                    Delay();
                }

                break;
            }
            case('R'):                                                                  //READ OPERATION
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tREAD BYTE\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the 3 Digit Read Address\n\r");
                int read_address=getnumber();                                           //ACCEPTING THE READ ADDRESS
                while (read_address==-1)                                                //PRINT READ ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
                    printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);

                    read_address=getnumber();
                }
                while(!(read_address>=0 && read_address<=2047))                         // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
                {
                    printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
                    printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);
                    read_address=getnumber();                                           //IF NOT TAKE IT AGAIN
                    if(read_address!='\n' && read_address!='\r')
                        read_address=getnumber();
                }
                printf_tiny ("\n\rThe Read Byte Address is %x.\n\r",read_address);

                int internal_address=read_address;                                      //TAKING ADDRESS IN A VARIABLE
                int page_selection_bits=read_address&0x700;                             //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
                int page_block=page_selection_bits>>7;
                EEPROM_CMD=0xA0|page_block;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
                word_address1=internal_address&0x0FF;             //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME

                unsigned char x1 = EEPROM_RdByte(word_address1);

                printf_tiny("\n\n\n\r The Data Present at the Read Address is %x\n\r",x1);
                break;
            }
            case('H'):                                                                  //HEX DUMP OPERATION
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tHEX DUMP\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the 3 Digit Starting Address for Hex Dump\n\r");
                int hex_start_address=getnumber();                                           //ACCEPTING THE HEX DUMP START ADDRESS
                while (hex_start_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
                    printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
                    hex_start_address=getnumber();                                          //TAKING THE ADDRESS AGAIN
                }
                while(!(hex_start_address>=0 && hex_start_address<=2047))                   //CHECK IF VALUE FALLS IN RANGE
                {
                    printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
                    printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
                    hex_start_address=getnumber();                                          //IF NOT TAKE IT AGAIN
                    if(hex_start_address!='\n' && hex_start_address!='\r')
                        hex_start_address=getnumber();
                }
                printf_tiny ("\n\rHex Dump Starting Address entered is %x.\n\r",hex_start_address);

                printf_tiny("\n\rEnter the 3 Digit Ending Address for Hex Dump\n\r");

                int hex_end_address=getnumber();                                                //ACCEPTING THE HEX DUMP END ADDRESS
                while (hex_end_address==-1)                                                    //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
                    printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);

                    hex_end_address=getnumber();                                                //TAKING THE ADDRESS AGAIN
                }
                while(!(hex_end_address>=0 && hex_end_address<=2047))                           //CHECK IF VALUE FALLS IN RANGE
                {
                    printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
                    printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);
                    hex_end_address=getnumber();
                    if(hex_end_address!='\n' && hex_end_address!='\r')                          //IF NOT, TAKE IT AGAIN
                        hex_end_address=getnumber();
                }
                printf_tiny ("\n\rHex Dump Ending Address entered is %x.\n\r",hex_end_address);

                if(hex_start_address>hex_end_address)                                           //ERROR IF END ADDRESS <START ADDRESS
                {
                    printf_tiny("\n\rERROR:  The value of Hex Start Address was less than the Hex End Address\n\r");
                }
                Sequence_read(hex_start_address,hex_end_address);
                break;
            }
            case('P'):                                                              //PAGE WRITE OPERATION
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\tPAGE WRITE\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\rEnter the Page Address \n\r");
                int page_address=getnumber();

                while (page_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
                    printf_tiny ("\n\rEnter a new page starting address\n\r",page_address);

                    page_address=getnumber();                                           //TAKING THE ADDRESS AGAIN
                }
                while(!(page_address>=0 && page_address<=2047))                         //CHECK IF VALUE FALLS IN RANGE
                {
                    printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
                    printf_tiny ("\n\rEnter a new page address\n\r",page_address);
                    page_address=getnumber();
                    if(page_address!='\n' && page_address!='\r')
                        page_address=getnumber();
                }
                printf_tiny ("\n\rThe value of page address entered is %x.\n\r",page_address);
                int internal_address3=page_address;

                int page_selection_bits3=page_address&0x700;
                page_block3=page_selection_bits3>>7;
                EEPROM_CMD_PAGE=0xA0|page_block3;
                word_address3=internal_address3&0x0FF;
                printf_tiny("\n\rEnter the data to page write \n\r");

                int data_to_write;
                data_to_write=getdata();
                while (data_to_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
                {
                    printf_tiny ("\n\rData Entered is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Data\n\r");
                    data_to_write=getdata();
                }
                while(!(data_to_write>=0 && data_to_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
                {
                    printf_tiny ("\n\rData Entered is INVALID\n\r");
                    printf_tiny ("\n\rEnter a New Data\n\r");
                    data_to_write=getdata();
                    if(data_to_write!='\n' && data_to_write!='\r')
                        data_to_write=getdata();                           //IF NOT TAKE IT AGAIN
                }
                printf ("\n\rData Value to be Written is %x.\n\r",data_to_write);
                SDA=HIGH;
                PAGE_Write(word_address3,data_to_write);
                break;
            }
            case('E'):                                                  //RESET SIGNAL
            {
                printf_tiny("\n\r********************************************* \n\r");
                printf_tiny("\n\r\t\t\tRESET I2C\n\r ");
                printf_tiny("\n\r********************************************* \n\r");
                reset();
                break;
            }
            default:                                                    //INVALID INPUT
            {
                printf("\n\rINVALID INPUT: PLS ENTER THE CORRECT KEY\n\r");
                break;
            }
            }
        }
    }
}

int putchar (int c)
{
    while (!TI);				// WAIT FOR TX READY
    SBUF = c;           	// LOAD SERIAL PORT WITH TIMEOUT VALUE
    TI = 0;  	            // CLEAR TI FLAG
    return 0;
}

int getchar ()
{

    while (!RI);                // WAIT FOR RX READY
    RI = 0;			            // CLEAR RI FLAG
    return SBUF;  	            // REYTRUN CHARACTER FROM SBUF
}
