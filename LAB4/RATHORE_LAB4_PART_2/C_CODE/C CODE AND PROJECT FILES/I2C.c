#include"I2C.h"

void Delay()
{
    __asm                     //DELAY BETWEEN VARIOUS SDA AND SCLK CYCLES FOR EACH OF WRITE ,READ OPEARTIONS
    nop
    nop
    nop
    nop
    nop
    __endasm;
}

void Long_Delay()
{
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
}

void I2C_Start(void)
{
    SDA=HIGH;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
                               //LOW FOLLOWED BY SDA PUYLSE GOING LOW
    SCLK = HIGH;
    Delay();                  //DELAY GIVEN BETWEEN SCLK GOING LOW AND SDA GOING LOW
    SDA=LOW;
    Delay();
    SCLK = LOW;
}
void I2C_Stop(void)
{
    SCLK=LOW;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
                               //HIGH FOLLOWED BY SDA PUYLSE GOING HIGH
    SDA=LOW;
    Delay();                   //DELAY GIVEN BETWEEN SCLK GOING HIGH AND SDA GOING HIGH
    SCLK=HIGH;
    Delay();
    SDA=HIGH;
}
void I2C_Reset()
{
    SDA=HIGH;                 //SENDING 9 BITS OF 1 DURING EEPROM RESET PHASE
    SCLK = HIGH;
    Delay();
    SCLK = LOW;
    SDA=LOW;
}

unsigned char I2C_Read(void)
{
    unsigned char i,read;         //READ BYTE OPERATION IN WHICH SDA IS MAINTAINED HIGH DURING START
    SDA= HIGH;
    read = 0;                     //MAKE VARIABLE READ=0, THE VARIABLE WHICH IS GOING TO STORE THE OUTPUT FORM THE ADDRESS
    for(i=0; i<8; i++)         //PERFORMING BIT BY BIT READ OF THE DATA AT THE ADDRESS
    {
        SCLK = HIGH;           //SETTING CLOCK HIGH
        Delay();
        Delay();                //MAKING CLOCK HIGH FOR A LONG TIME
        Delay();
        read<<=1;                //SETTING UP VARIABLE READ
        read |= SDA;             //LOADING THE VALUES PRESENT AT ADDRESS BIT BY BIT INTO VARIABLE
        SCLK = LOW;
    }
    return read;
}


void I2C_Write(unsigned int write)
{
    int i;
    for(i=0; i<8; i++)
    {
        SDA = ((write & 0x80) ? 1 : 0);  //SETTING SDA LOW OR HIGH DEPENDING ON THE VALUE TO BE WRITTEN, WHETHER THE ADDRESS OR THE DATA VALUE
        SCLK = HIGH;                     //SETTING CLOCK PULSE BY MAKING IT HGIH AND LOW FOR WROTE OPEARTION IN THE SDA LINE
        Delay();
        SCLK = LOW;
        write<<=1;                       //SHIFTING THE WRITE VARIABLKE BY 1 BIT AND AGAIN LOADING ITS VALUE INTO SDA TILL 1 BYTE IS LOADED
    }
    SDA=HIGH;                           //SENDING A SDA HIGH SIGNAL TO WAIT TO RECEIVE ACK FROM RECEIVER WHICH MAKES THE SDA LINE LOW
    SCLK = HIGH;
    Delay();
    SCLK = LOW;
}

void EEPROM_WrByte(unsigned int word_address,unsigned int data_write)
{
    I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
    I2C_Write(EEPROM_CMD|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
    I2C_Write(word_address);         //FOLLOWED BY A WORD ADDRESS
    I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
    I2C_Stop();                      //FOLLOWED BY A STOP
    word_address++;                  //INCREMENTING THE WORD ADDRESS
    Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
    Delay();
    return;
}

void PAGE_Write(unsigned int word_address3,unsigned int data_write)
{
    I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
    I2C_Write(EEPROM_CMD_PAGE|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
    I2C_Write(word_address3);         //FOLLOWED BY A WORD ADDRESS
    int i;

    for(i=0;i<=16;i++)
    {
    I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
    Long_Delay();
    }
    I2C_Stop();                      //FOLLOWED BY A STOP
    word_address++;                  //INCREMENTING THE WORD ADDRESS
    Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
    Delay();
    return;
}

void ack_eeprom()
{
    SDA = HIGH;                    //SENDING SDA HIGH SIGNAL WITH THE CLOCK PULSE TO GET AN ACK FORM THE EEPROM
    SCLK = HIGH;
    Delay();
    SCLK = LOW;
}

unsigned char EEPROM_RdByte(unsigned int word_address1)
{
    unsigned int x;                     //READ BYTE OPERATION WHICH INVOLVED THE FOLLOWING STEPS
    SDA=HIGH;
    I2C_Start();                        //START GIGNAL
    I2C_Write(EEPROM_CMD|0x0);          //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
    I2C_Write(word_address1);           //FOLLOWED BY A WORD ADDRESS
    Delay();
    I2C_Start();                        //FOLLOWED BY A REPEATED START
    I2C_Write(EEPROM_CMD|0x1);          //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
    Delay();
    Delay();                            //DELAY BETWEEN OPEARTIONS
    Delay();
    Delay();
    x = I2C_Read();                     //FOLLOWED BY A READING THE VALUE IN A VARIABLE X
    SDA = HIGH;                         //FOLLOWED BY SENDING A NACK FROM MASTER
    SCLK = HIGH;
    Delay();
    SCLK = LOW;
    I2C_Stop();                         //FOLLOWED BY SENDING A STOP SIGNAL
    return(x);
}

void Sequence_read(unsigned int hex_start_address,unsigned int hex_end_address)
{
    int internal_address1=hex_start_address;           //TAKING HEX START ADDRESS IN A VARIABLE
    int page_selection_bits1=hex_start_address&0x700;  //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
    page_block1=page_selection_bits1>>7;
    EEPROM_CMD=0xA0|page_block1;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
    word_address2=internal_address1&0x0FF;             //REMOVING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SO THAT WE CAN READ FORM THE REQURIED WORD ADDRESS
    int j=hex_start_address-1;                         //READ BYTE OPERATION WHICH INVOLVED THE FOLLOWING STEPS
    I2C_Start();                                      //START GIGNAL
    I2C_Write(EEPROM_CMD|0x0);                        //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
    I2C_Write(word_address2);                         //FOLLOWED BY A WORD ADDRESS
    Delay();
    I2C_Start();                                      //FOLLOWED BY A REPEATED START
    Delay();
    I2C_Write(EEPROM_CMD|0x1);                        //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
    Delay();
    Delay();                                          //DELAY BETWEEN OPEARTIONS
    Delay();
    Delay();

    int i;

    int difference=hex_end_address-hex_start_address;  //STORING THE DIFFERENCE OF END AND START ADDRESS IN VARFIABLE DIFFERENCE
    for(i=0; i<=difference; i++)
    {
        j++;                                          //FOR START ADDRESS TO END ADDRESS
        if(i%16==0)                                   //IF DATA VALUE PRINTED 16 TIMES GOTO THE NEXT LINE
        {
            printf_tiny("\n\r");
            printf("%x   : ",internal_address1);     //PRINT THE ADDRESS VALUE
        }
        internal_address1++;                        //INCREMENTING THE ADDRESS COUNTER
        int sequence = I2C_Read();                  //READING FROM THE DESIRED LOCATIONS
        printf("%x ",sequence);
        SDA = LOW;
        SCLK = HIGH;                                //PERORMING FOR EACH DATA BYTE READ
        Delay();
        SCLK = LOW;
    }

    SDA = LOW;                                     //MAKING SDA LOW TO GET A NACK FROM THE EEPROM
    SCLK = HIGH;
    Delay();
    SCLK = LOW;
    I2C_Stop();
    SDA=HIGH;
    Delay();

}

void reset()
{
    int i;
    I2C_Start();               //EEPROM RESET OPERATION WHICH CONSISTS OF THE FOLLOWING COMMANDS
    for(i=0; i<=9; i++)        //START SIGNAL
    {                          //FOLLOWED BY 9 BITS OF 1
        I2C_Reset();
    }
    I2C_Start();              //FOLLLOWED BY START BIT
    I2C_Stop();               //FOLLOWED BY STOP BIT
}
