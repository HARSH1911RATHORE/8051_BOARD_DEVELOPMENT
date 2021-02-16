#include <stdio.h>
#include <stdlib.h>
#include<at89c51ed2.h>
#include <mcs51/8051.h>
#include <stdint.h>

#define HEAP_SIZE 4000



__xdata char __sdcc_heap[HEAP_SIZE];
const unsigned int __sdcc_heap_size = HEAP_SIZE;
int getnumber();
void function(void);
uint16_t i,buffer0=0,buffer1=1,buffer_size[150],ascii,buffer_num,buffer_start_size;
char c;                                   //LOWER CASE CHARACTERS
char *buffer[150];                        //initializing pointer array that points to memory location
uint16_t buffer_allocated_size;          //space allocated for buffer
uint16_t buffer_space_filled;            //space filled for buffer
uint16_t buffer_free_Space;               //free space for buffer
uint16_t no_of_characters;

int main()
{
    uint16_t buffer1=1,buffer0=0;
    // no of characters entered since the last ?
    //DEBUGPORT();
    printf_tiny("Specify the buffer size\n\r");
    buffer_start_size=getnumber();           //get the buffer size
    while (!((buffer_start_size <= 3200) && (buffer_start_size >= 32)&&(buffer_start_size%16==0)))  //checking for valid buffer size
    {
        printf_tiny("Invalid buffer size\n\r");                           //printing the result as per buffer size entered
        printf_tiny("Enter a new buffer size\n\r");
        buffer_start_size=getnumber();
    }
    buffer[0]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_0 at the start
    printf("Address of buffer_0=%p\n\r",buffer[0]);
    buffer[1]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_1 at the start
    printf("Address of buffer_1=%p\n\r",buffer[1]);

    if (buffer[1]==NULL)                                           //if buffer_1 is null, taking buffer size for both buffers again
    {
        printf_tiny("Error. Not enough space available for both buffers\n\r");
        printf_tiny("Free both buffers\n\r");
        free(buffer[0]);                                        //if buffer_1 is null, free buffer_0 and take input again
        printf_tiny("Print a smaller buffer size\n\r");
        buffer_start_size=getnumber();
        while((buffer_start_size<2000) && (buffer_start_size>=32) && (buffer_start_size%16==0))      ////checking for valid buffer size
        {
            buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));        //allocating space for the buffer_0 at the start and printing the address
            printf("Address of buffer_0=%p\n\r",buffer[0]);
            buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));    //allocating space for the buffer_1 at the start and printing the address
            printf("Address of buffer_1=%p\n\r",buffer[1]);
            function();
        }
    }
    else
    {
        function();
    }
    return 0;
}
void function(void)
{
    uint16_t count_plus=1,count1=0,count2=0,buffer1=1,buffer0=0;
    printf_tiny("\n\n\renter the characters\n\r");
    while (1)
    {
        c=getchar();                                            //taking the character input
        putchar(c);                                             //displaying it out in the terminal
        printf_tiny("\n\r");

        if(c!='\n' && c!='\r')                                  // ignoring enter on terminal as character
            {
                count1++;                                           //count the number of characters
                ascii=c;
                if(ascii!=10)                                       //ignoring enter command
                {


                    if (97<=ascii && ascii<=122)                    //if the character is lower case, store it in buffer_0
                    {
                        printf_tiny("\n\rascii value=%d\n\r",ascii);
                        count2++;                                   //count to indicate number of lower case digits entered
                        if (count2>buffer_start_size)
                            printf("Buffer is full\n\r");
                        buffer[0][count2-1]=c;                      //store the lower case characters in buffer_0

                    }
                else
                {
                    //check for other characters as input
                    switch(c)
                    {
                    case('+'):                          //if new buffer requested, increase the count
                    {
                        count_plus++;
                        printf_tiny("add buffer_%d",count_plus);
                        printf_tiny("\n\rbuffer_size=");
                        buffer_size[count_plus]=getnumber();   //take the valid buffer size of the new buffer
                        while (!((buffer_size[count_plus] <= 300) && (buffer_size[count_plus] >= 30)))
                        {
                            printf_tiny("\n\rinvalid size");
                            printf_tiny("\n\rvalid buffer_size=");
                            buffer_size[count_plus]=getnumber();    //if buffer size is invalid, take input again

                        }
                        buffer[count_plus]=(char*) malloc(buffer_size[count_plus]*sizeof(char));  //assign a malloc to the new buffer
                        printf("\n\raddress of new buffer is=%p\n\r",buffer[count_plus]);
                        if (buffer[count_plus]==NULL)                                             //if heap size is full, print no space
                            printf_tiny("\n\rNo space for addition of more buffers to the heap\n\r");

                        break;
                    }
                    case('-'):
                    {
                        printf_tiny("\n\rselect a valid buffer= ");
                        buffer_num=getnumber();                         //input for the buffer number to be deleted
                        if (buffer_num!=0)                              //buffer_0 is not to be deleted so ignore that
                        {
                            if (buffer_num>count_plus)                  //invalid buffer number which does not exist
                            {
                                printf_tiny("\n\rBuffer does not exist\n\r");
                            }
                            else
                            {
                                free(buffer[buffer_num]);         //free buffer which was selected
                                buffer[buffer_num]=NULL;
                                printf_tiny("\n\rbuffer%d freed\n\r",buffer_num);
                            }
                        }
                        else
                            printf_tiny("Buffer_0 cannot be deleted");    // print buffer_0 cannot be deleted
                        break;
                    }
                    case('='):                                        //print address of buffer_0
                                                              //print address of buffer_0
                        {
                            for (i=0; i<=count2; i++)
                            {
                                if (i%16==0)                      //display contents of buffer_0 in the desired format
                                {
                                    printf_tiny("\n\r");
                                    printf("%p",&buffer[0][i]);
                                }
                                printf(" %x",buffer[0][i]);
                            }
                            printf_tiny("\n\r");                //go to next line

                            break;

                        }
                    case('@'):
                    {
                        //free all buffers as input character is @
                        printf_tiny("\n\rfree all buffers and allocate new buffer size ");
                        for (i=0; i<=count_plus; i++)                 //free all buffers present on heap
                        {
                            free(buffer[i]);
                        }
                        printf_tiny("\n\rtake new buffer size\n\r");        // retake the buffer size for buffer_0 and buffer_1
                        count2=0;
                        buffer_start_size=getnumber();
                        buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));  //allocate buffers in the xram and print their address
                        printf("address of buffer_0=%p\n\r",buffer[0]);
                        buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));
                        printf("address of buffer_1=%p\n\r",buffer[1]);
                        break;
                    }
                    case('?'):
                    {
                        if (buffer0==0)                                    //display required contents of all buffers on heap
                        {
                            printf_tiny("\n\rbuffer_%d",buffer0);
                            buffer_allocated_size=buffer_start_size;
                            buffer_space_filled=count2;
                            buffer_free_Space=buffer_allocated_size-buffer_space_filled;
                            no_of_characters=count1-1;
                            printf_tiny("\n\rbuffer_number=%d",buffer0);                  //display contents of buffer_0 including size, start addr,
                            //end add, free space, no of characters since last ?
                            printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
                            printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
                            printf("\n\rbuffer_start_add=%p",buffer[0]);                  //display required contents of buffer_0 on heap
                            printf("\n\rbuffer_end_add=%p",buffer[0]+buffer_start_size-1);
                            printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
                            printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
                        }

                        if(buffer[1]!=NULL)
                        {
                            printf("\n\n\rbuffer_%d",buffer1);
                            buffer_allocated_size=buffer_start_size;
                            buffer_space_filled=0;
                            buffer_free_Space=buffer_allocated_size-buffer_space_filled;
                            no_of_characters=count1-1;                        //display contents of buffer_1 including size, start addr,
                            //end add, free space, no of characters since last ?
                            printf_tiny("\n\rbuffer_number=%d",buffer1);
                            printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
                            printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
                            printf("\n\rbuffer_start_add=%p",buffer[1]);
                            printf("\n\rbuffer_end_add=%p",buffer[1]+buffer_start_size-1); //display required contents of buffer_1 on heap
                            printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
                            printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
                        }
                        printf_tiny("\n\r");
                        for(i=2; i<=count_plus; i++)
                        {
                            if(buffer[i]!=NULL)
                            {
                                buffer_allocated_size=buffer_size[i];
                                buffer_free_Space=buffer_allocated_size-buffer_space_filled;
                                no_of_characters=count1-1;
                                printf_tiny("\n\n\rbuffer_number=%d",i);       //display contents of buffer_n including size, start addr,
                                                                                //end add, free space, no of characters since last ?
                                printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
                                printf_tiny("\n\rbuffer_space_filled=%d",0);
                                printf("\n\rbuffer_start_add=%p",buffer[i]);
                                printf("\n\rbuffer_end_add=%p",buffer[i]+buffer_size[i]-1);  //display required contents of buffer_n on heap
                                printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
                                printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
                            }
                        }
                        printf_tiny("\n\r");
                        for (i=0; i<count2; i++)     //display all characters when ? is entered present in buffer_0
                        {
                            if (i%16==0)
                            {
                                printf_tiny("\n\r");
                            }
                            printf("%c  ",buffer[0][i]);
                        }
                        printf_tiny("\n\r");
                        for (i=0; i<=count2; i++)      //   empty buffer_0 by making it zero
                        {
                            char *temp = buffer[0];
                            temp[i]=0;
                        }
                        count1=0;
                        count2=0;
                        break;
                    }

                    default:                               //go te next line
                    {
                        printf_tiny("\n\r");
                        break;
                    }

                    }
                }
            }
        }
    }
}

int getnumber()                                     //function to convert string into integer
{
    char number[200];
    uint16_t z;
    gets(number);
    z = atoi(number);                               //take string input through gets and convert into integer through atio
    printf ("The value entered is %d.\n\r",z);
    return (z);
}
int putchar (int c)
{
    while (!TI);				// compare asm code generated for these three lines
    // wait for TX ready, spin on TI
    SBUF = c;  	// load serial port with transmit value
    TI = 0;  	// clear TI flag
    return 0;
}

int getchar ()
{
    while (!RI);                // compare asm code generated for these three lines
    // wait for character to be received, spin on RI
    RI = 0;			// clear RI flag
    return SBUF;  	// return character from SBUF
}


