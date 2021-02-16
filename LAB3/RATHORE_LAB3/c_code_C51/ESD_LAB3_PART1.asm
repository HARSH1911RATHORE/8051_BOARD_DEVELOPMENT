;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_size
	.globl _main
	.globl _free
	.globl _malloc
	.globl _atoi
	.globl _printf_tiny
	.globl _gets
	.globl _printf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _buffer1
	.globl _buffer0
	.globl _no_of_characters
	.globl _buffer_free_Space
	.globl _buffer_space_filled
	.globl _buffer_allocated_size
	.globl _buffer
	.globl _c
	.globl _buffer_start_size
	.globl _buffer_num
	.globl _ascii
	.globl _buffer_size
	.globl _i
	.globl ___sdcc_heap
	.globl _function
	.globl _getnumber
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_function_sloc0_1_0:
	.ds 2
_function_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___sdcc_heap::
	.ds 4000
_i::
	.ds 2
_buffer_size::
	.ds 300
_ascii::
	.ds 2
_buffer_num::
	.ds 2
_buffer_start_size::
	.ds 2
_c::
	.ds 1
_buffer::
	.ds 450
_buffer_allocated_size::
	.ds 2
_buffer_space_filled::
	.ds 2
_buffer_free_Space::
	.ds 2
_no_of_characters::
	.ds 2
_function_count1_65536_48:
	.ds 2
_function_count2_65536_48:
	.ds 2
_getnumber_number_65536_80:
	.ds 200
_putchar_c_65536_81:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_buffer0::
	.ds 2
_buffer1::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buffer1                   Allocated with name '_main_buffer1_65536_42'
;------------------------------------------------------------
;	main.c:27: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:32: printf_tiny("Specify the buffer size\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:33: buffer_start_size=getnumber();           //get the buffer size
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_buffer_start_size
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:34: while (!((buffer_start_size <= 3200) && (buffer_start_size >= 32)&&(buffer_start_size%16==0)))  //checking for valid buffer size
00103$:
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x80
	subb	a,r6
	mov	a,#0x0c
	subb	a,r7
	jc	00104$
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	subb	a,#0x00
	jc	00104$
	mov	a,r6
	anl	a,#0x0f
	jz	00105$
00104$:
;	main.c:36: printf_tiny("Invalid buffer size\n\r");                           //printing the result as per buffer size entered
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:37: printf_tiny("Enter a new buffer size\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:38: buffer_start_size=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_buffer_start_size
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00105$:
;	main.c:40: buffer[0]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_0 at the start
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#_buffer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:41: printf("Address of buffer_0=%p\n\r",buffer[0]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:42: buffer[1]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_1 at the start
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:43: printf("Address of buffer_1=%p\n\r",buffer[1]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:45: if (buffer[1]==NULL)                                           //if buffer_1 is null, taking buffer size for both buffers again
	mov	dptr,#(_buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00151$
	ljmp	00112$
00151$:
;	main.c:47: printf_tiny("Error. Not enough space available for both buffers\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:48: printf_tiny("Free both buffers\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:49: free(buffer[0]);                                        //if buffer_1 is null, free buffer_0 and take input again
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	main.c:50: printf_tiny("Print a smaller buffer size\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:51: buffer_start_size=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_buffer_start_size
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:52: while((buffer_start_size<2000) && (buffer_start_size>=32) && (buffer_start_size%16==0))      ////checking for valid buffer size
00108$:
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xd0
	mov	a,r7
	subb	a,#0x07
	jc	00152$
	ljmp	00113$
00152$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	subb	a,#0x00
	jnc	00153$
	ljmp	00113$
00153$:
	mov	a,r6
	anl	a,#0x0f
	jz	00155$
	sjmp	00113$
00155$:
;	main.c:54: buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));        //allocating space for the buffer_0 at the start and printing the address
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#_buffer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:55: printf("Address of buffer_0=%p\n\r",buffer[0]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:56: buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));    //allocating space for the buffer_1 at the start and printing the address
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:57: printf("Address of buffer_1=%p\n\r",buffer[1]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:58: function();
	lcall	_function
	ljmp	00108$
00112$:
;	main.c:63: function();
	lcall	_function
00113$:
;	main.c:65: return 0;
	mov	dptr,#0x0000
;	main.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'function'
;------------------------------------------------------------
;sloc0                     Allocated with name '_function_sloc0_1_0'
;sloc1                     Allocated with name '_function_sloc1_1_0'
;count_plus                Allocated with name '_function_count_plus_65536_48'
;count1                    Allocated with name '_function_count1_65536_48'
;count2                    Allocated with name '_function_count2_65536_48'
;buffer1                   Allocated with name '_function_buffer1_65536_48'
;buffer0                   Allocated with name '_function_buffer0_65536_48'
;temp                      Allocated with name '_function_temp_589824_78'
;------------------------------------------------------------
;	main.c:67: void function(void)
;	-----------------------------------------
;	 function function
;	-----------------------------------------
_function:
;	main.c:69: uint16_t count_plus=1,count1=0,count2=0,buffer1=1,buffer0=0;
	mov	dptr,#_function_count1_65536_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_function_count2_65536_48
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:70: printf_tiny("\n\n\renter the characters\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:71: while (1)
	mov	_function_sloc1_1_0,#0x01
	mov	(_function_sloc1_1_0 + 1),#0x00
00147$:
;	main.c:73: c=getchar();                                            //taking the character input
	lcall	_getchar
	mov	r4,dpl
	mov	dptr,#_c
	mov	a,r4
	movx	@dptr,a
;	main.c:74: putchar(c);                                             //displaying it out in the terminal
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	lcall	_putchar
;	main.c:75: printf_tiny("\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:77: if(c!='\n' && c!='\r')                                  // ignoring enter on terminal as character
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,00288$
	sjmp	00147$
00288$:
	cjne	r5,#0x0d,00289$
	sjmp	00147$
00289$:
;	main.c:79: count1++;                                           //count the number of characters
	mov	dptr,#_function_count1_65536_48
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:80: ascii=c;
	mov	ar4,r5
	mov	r5,#0x00
	mov	dptr,#_ascii
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:81: if(ascii!=10)                                       //ignoring enter command
	cjne	r4,#0x0a,00290$
	cjne	r5,#0x00,00290$
	sjmp	00147$
00290$:
;	main.c:85: if (97<=ascii && ascii<=122)                    //if the character is lower case, store it in buffer_0
	clr	c
	mov	a,r4
	subb	a,#0x61
	mov	a,r5
	subb	a,#0x00
	jnc	00291$
	ljmp	00138$
00291$:
	clr	c
	mov	a,#0x7a
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00138$
;	main.c:87: printf_tiny("\n\rascii value=%d\n\r",ascii);
	push	ar4
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:88: count2++;                                   //count to indicate number of lower case digits entered
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:89: if (count2>buffer_start_size)
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jnc	00102$
;	main.c:90: printf("Buffer is full\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
00102$:
;	main.c:91: buffer[0][count2-1]=c;                      //store the lower case characters in buffer_0
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	dec	r4
	cjne	r4,#0xff,00294$
	dec	r5
00294$:
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
	ljmp	00147$
00138$:
;	main.c:97: switch(c)
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2b,00295$
	sjmp	00103$
00295$:
	cjne	r5,#0x2d,00296$
	ljmp	00110$
00296$:
	cjne	r5,#0x3d,00297$
	ljmp	00117$
00297$:
	cjne	r5,#0x3f,00298$
	ljmp	00123$
00298$:
	cjne	r5,#0x40,00299$
	ljmp	00121$
00299$:
	ljmp	00135$
;	main.c:99: case('+'):                          //if new buffer requested, increase the count
00103$:
;	main.c:101: count_plus++;
	inc	_function_sloc1_1_0
	clr	a
	cjne	a,_function_sloc1_1_0,00300$
	inc	(_function_sloc1_1_0 + 1)
00300$:
;	main.c:102: printf_tiny("add buffer_%d",count_plus);
	push	_function_sloc1_1_0
	push	(_function_sloc1_1_0 + 1)
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:103: printf_tiny("\n\rbuffer_size=");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:104: buffer_size[count_plus]=getnumber();   //take the valid buffer size of the new buffer
	mov	a,_function_sloc1_1_0
	add	a,_function_sloc1_1_0
	mov	r4,a
	mov	a,(_function_sloc1_1_0 + 1)
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_buffer_size
	mov	r2,a
	mov	a,r5
	addc	a,#(_buffer_size >> 8)
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_getnumber
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:105: while (!((buffer_size[count_plus] <= 300) && (buffer_size[count_plus] >= 30)))
	mov	r0,_function_sloc1_1_0
	mov	r1,(_function_sloc1_1_0 + 1)
00105$:
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	_function_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_function_sloc0_1_0 + 1),a
	clr	c
	mov	a,#0x2c
	subb	a,_function_sloc0_1_0
	mov	a,#0x01
	subb	a,(_function_sloc0_1_0 + 1)
	jc	00106$
	mov	a,_function_sloc0_1_0
	subb	a,#0x1e
	mov	a,(_function_sloc0_1_0 + 1)
	subb	a,#0x00
	jnc	00107$
00106$:
;	main.c:107: printf_tiny("\n\rinvalid size");
	push	ar0
	push	ar1
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:108: printf_tiny("\n\rvalid buffer_size=");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:109: buffer_size[count_plus]=getnumber();    //if buffer size is invalid, take input again
	mov	a,r4
	add	a,#_buffer_size
	mov	r0,a
	mov	a,r5
	addc	a,#(_buffer_size >> 8)
	mov	r1,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_getnumber
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r0
	mov	dph,r1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	pop	ar1
	pop	ar0
	ljmp	00105$
00107$:
;	main.c:112: buffer[count_plus]=(char*) malloc(buffer_size[count_plus]*sizeof(char));  //assign a malloc to the new buffer
	mov	dptr,#__mulint_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_buffer
	mov	r6,a
	mov	a,r7
	addc	a,#(_buffer >> 8)
	mov	r7,a
	mov	dpl,_function_sloc0_1_0
	mov	dph,(_function_sloc0_1_0 + 1)
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:113: printf("\n\raddress of new buffer is=%p\n\r",buffer[count_plus]);
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar3
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:114: if (buffer[count_plus]==NULL)                                             //if heap size is full, print no space
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	orl	a,r7
	jz	00303$
	ljmp	00147$
00303$:
;	main.c:115: printf_tiny("\n\rNo space for addition of more buffers to the heap\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:117: break;
	ljmp	00147$
;	main.c:119: case('-'):
00110$:
;	main.c:121: printf_tiny("\n\rselect a valid buffer= ");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:122: buffer_num=getnumber();                         //input for the buffer number to be deleted
	lcall	_getnumber
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_buffer_num
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:123: if (buffer_num!=0)                              //buffer_0 is not to be deleted so ignore that
	mov	a,r6
	orl	a,r7
	jnz	00304$
	ljmp	00115$
00304$:
;	main.c:125: if (buffer_num>count_plus)                  //invalid buffer number which does not exist
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,_function_sloc1_1_0
	subb	a,r4
	mov	a,(_function_sloc1_1_0 + 1)
	subb	a,r5
	jnc	00112$
;	main.c:127: printf_tiny("\n\rBuffer does not exist\n\r");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	ljmp	00147$
00112$:
;	main.c:131: free(buffer[buffer_num]);         //free buffer which was selected
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	main.c:132: buffer[buffer_num]=NULL;
	mov	dptr,#_buffer_num
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_buffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:133: printf_tiny("\n\rbuffer%d freed\n\r",buffer_num);
	mov	dptr,#_buffer_num
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00147$
00115$:
;	main.c:137: printf_tiny("Buffer_0 cannot be deleted");    // print buffer_0 cannot be deleted
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:138: break;
	ljmp	00147$
;	main.c:140: case('='):                                        //print address of buffer_0
00117$:
;	main.c:143: for (i=0; i<=count2; i++)
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00149$:
;	main.c:145: if (i%16==0)                      //display contents of buffer_0 in the desired format
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r4
	anl	a,#0x0f
	jnz	00119$
;	main.c:147: printf_tiny("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:148: printf("%p",&buffer[0][i]);
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
00119$:
;	main.c:150: printf(" %x",buffer[0][i]);
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar5
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:143: for (i=0; i<=count2; i++)
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00308$
	ljmp	00149$
00308$:
;	main.c:152: printf_tiny("\n\r");                //go to next line
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:154: break;
	ljmp	00147$
;	main.c:157: case('@'):
00121$:
;	main.c:160: printf_tiny("\n\rfree all buffers and allocate new buffer size ");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:161: for (i=0; i<=count_plus; i++)                 //free all buffers present on heap
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	r6,_function_sloc1_1_0
	mov	r7,(_function_sloc1_1_0 + 1)
00151$:
;	main.c:163: free(buffer[i]);
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_buffer
	mov	dpl,a
	mov	a,r5
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_free
	pop	ar6
	pop	ar7
;	main.c:161: for (i=0; i<=count_plus; i++)                 //free all buffers present on heap
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00151$
;	main.c:165: printf_tiny("\n\rtake new buffer size\n\r");        // retake the buffer size for buffer_0 and buffer_1
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:166: count2=0;
	mov	dptr,#_function_count2_65536_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:167: buffer_start_size=getnumber();
	lcall	_getnumber
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_buffer_start_size
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:168: buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));  //allocate buffers in the xram and print their address
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#_buffer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:169: printf("address of buffer_0=%p\n\r",buffer[0]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:170: buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:171: printf("address of buffer_1=%p\n\r",buffer[1]);
	push	ar6
	push	ar7
	push	ar5
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:172: break;
	ljmp	00147$
;	main.c:174: case('?'):
00123$:
;	main.c:178: printf_tiny("\n\rbuffer_%d",buffer0);
	clr	a
	push	acc
	push	acc
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:179: buffer_allocated_size=buffer_start_size;
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_buffer_allocated_size
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:180: buffer_space_filled=count2;
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_buffer_space_filled
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:181: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
	mov	dptr,#_buffer_free_Space
	mov	a,r6
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r7
	subb	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:182: no_of_characters=count1-1;
	mov	dptr,#_function_count1_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_no_of_characters
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:183: printf_tiny("\n\rbuffer_number=%d",buffer0);                  //display contents of buffer_0 including size, start addr,
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:185: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
	mov	dptr,#_buffer_allocated_size
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:186: printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
	mov	dptr,#_buffer_space_filled
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:187: printf("\n\rbuffer_start_add=%p",buffer[0]);                  //display required contents of buffer_0 on heap
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:188: printf("\n\rbuffer_end_add=%p",buffer[0]+buffer_start_size-1);
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00310$
	dec	r4
00310$:
	push	ar7
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:189: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
	mov	dptr,#_buffer_free_Space
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:190: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
	mov	dptr,#_no_of_characters
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:193: if(buffer[1]!=NULL)
	mov	dptr,#(_buffer + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jnz	00311$
	ljmp	00127$
00311$:
;	main.c:195: printf("\n\n\rbuffer_%d",buffer1);
	push	ar7
	push	ar6
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:196: buffer_allocated_size=buffer_start_size;
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_buffer_allocated_size
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:197: buffer_space_filled=0;
	mov	dptr,#_buffer_space_filled
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:198: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
	mov	dptr,#_buffer_free_Space
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:199: no_of_characters=count1-1;                        //display contents of buffer_1 including size, start addr,
	dec	r6
	cjne	r6,#0xff,00312$
	dec	r7
00312$:
	mov	dptr,#_no_of_characters
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:201: printf_tiny("\n\rbuffer_number=%d",buffer1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:202: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
	mov	dptr,#_buffer_allocated_size
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:203: printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
	mov	dptr,#_buffer_space_filled
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:204: printf("\n\rbuffer_start_add=%p",buffer[1]);
	mov	dptr,#(_buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:205: printf("\n\rbuffer_end_add=%p",buffer[1]+buffer_start_size-1); //display required contents of buffer_1 on heap
	mov	dptr,#(_buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_buffer_start_size
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	dec	r5
	cjne	r5,#0xff,00313$
	dec	r6
00313$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:206: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
	mov	dptr,#_buffer_free_Space
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:207: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
	mov	dptr,#_no_of_characters
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00127$:
;	main.c:209: printf_tiny("\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:210: for(i=2; i<=count_plus; i++)
	mov	dptr,#_i
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_function_count1_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xff
	mov	_function_sloc0_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_function_sloc0_1_0 + 1),a
	mov	r4,_function_sloc1_1_0
	mov	r5,(_function_sloc1_1_0 + 1)
00154$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00314$
	ljmp	00130$
00314$:
;	main.c:212: if(buffer[i]!=NULL)
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r0
	add	a,#_buffer
	mov	dpl,a
	mov	a,r1
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	orl	a,r1
	jnz	00315$
	ljmp	00155$
00315$:
;	main.c:214: buffer_allocated_size=buffer_size[i];
	mov	a,r2
	add	a,r2
	mov	r6,a
	mov	a,r3
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_buffer_size
	mov	dpl,a
	mov	a,r7
	addc	a,#(_buffer_size >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_buffer_allocated_size
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:215: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
	mov	dptr,#_buffer_space_filled
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_buffer_free_Space
	mov	a,r6
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,r7
	subb	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:216: no_of_characters=count1-1;
	mov	dptr,#_no_of_characters
	mov	a,_function_sloc0_1_0
	movx	@dptr,a
	mov	a,(_function_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:217: printf_tiny("\n\n\rbuffer_number=%d",i);       //display contents of buffer_n including size, start addr,
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:219: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
	mov	dptr,#_buffer_allocated_size
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:220: printf_tiny("\n\rbuffer_space_filled=%d",0);
	clr	a
	push	acc
	push	acc
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:221: printf("\n\rbuffer_start_add=%p",buffer[i]);
	mov	dptr,#_i
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:222: printf("\n\rbuffer_end_add=%p",buffer[i]+buffer_size[i]-1);  //display required contents of buffer_n on heap
	mov	dptr,#_i
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_buffer
	mov	dpl,a
	mov	a,r3
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_buffer_size
	mov	dpl,a
	mov	a,r7
	addc	a,#(_buffer_size >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	dec	r1
	cjne	r1,#0xff,00316$
	dec	r2
00316$:
	push	ar5
	push	ar4
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:223: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
	mov	dptr,#_buffer_free_Space
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:224: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
	mov	dptr,#_no_of_characters
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
00155$:
;	main.c:210: for(i=2; i<=count_plus; i++)
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00154$
00130$:
;	main.c:227: printf_tiny("\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:228: for (i=0; i<count2; i++)     //display all characters when ? is entered present in buffer_0
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00157$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00133$
;	main.c:230: if (i%16==0)
	mov	a,r4
	anl	a,#0x0f
	jnz	00132$
;	main.c:232: printf_tiny("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00132$:
;	main.c:234: printf("%c  ",buffer[0][i]);
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar5
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:228: for (i=0; i<count2; i++)     //display all characters when ? is entered present in buffer_0
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00157$
00133$:
;	main.c:236: printf_tiny("\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:237: for (i=0; i<=count2; i++)      //   empty buffer_0 by making it zero
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_function_count2_65536_48
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00159$:
;	main.c:239: char *temp = buffer[0];
	mov	dptr,#_buffer
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	main.c:240: temp[i]=0;
	mov	dptr,#_i
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	main.c:237: for (i=0; i<=count2; i++)      //   empty buffer_0 by making it zero
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00159$
;	main.c:242: count1=0;
	mov	dptr,#_function_count1_65536_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:243: count2=0;
	mov	dptr,#_function_count2_65536_48
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:244: break;
	ljmp	00147$
;	main.c:247: default:                               //go te next line
00135$:
;	main.c:249: printf_tiny("\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:253: }
;	main.c:258: }
	ljmp	00147$
;------------------------------------------------------------
;Allocation info for local variables in function 'getnumber'
;------------------------------------------------------------
;number                    Allocated with name '_getnumber_number_65536_80'
;z                         Allocated with name '_getnumber_z_65536_80'
;------------------------------------------------------------
;	main.c:260: int getnumber()                                     //function to convert string into integer
;	-----------------------------------------
;	 function getnumber
;	-----------------------------------------
_getnumber:
;	main.c:264: gets(number);
	mov	dptr,#_getnumber_number_65536_80
	mov	b,#0x00
	lcall	_gets
;	main.c:265: z = atoi(number);                               //take string input through gets and convert into integer through atio
	mov	dptr,#_getnumber_number_65536_80
	mov	b,#0x00
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	main.c:266: printf ("The value entered is %d.\n\r",z);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:267: return (z);
	mov	dpl,r6
	mov	dph,r7
;	main.c:268: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_81'
;------------------------------------------------------------
;	main.c:269: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_81
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:271: while (!TI);				// compare asm code generated for these three lines
00101$:
	jnb	_TI,00101$
;	main.c:273: SBUF = c;  	// load serial port with transmit value
	mov	dptr,#_putchar_c_65536_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:274: TI = 0;  	// clear TI flag
;	assignBit
	clr	_TI
;	main.c:275: return 0;
	mov	dptr,#0x0000
;	main.c:276: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:278: int getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:280: while (!RI);                // compare asm code generated for these three lines
00101$:
;	main.c:282: RI = 0;			// clear RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:283: return SBUF;  	// return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:284: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___sdcc_heap_size:
	.byte #0xa0, #0x0f	; 4000
	.area CONST   (CODE)
___str_0:
	.ascii "Specify the buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Invalid buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Enter a new buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Address of buffer_0=%p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Address of buffer_1=%p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Error. Not enough space available for both buffers"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Free both buffers"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Print a smaller buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "enter the characters"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "ascii value=%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Buffer is full"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "add buffer_%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_size="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "invalid size"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "valid buffer_size="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "address of new buffer is=%p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "No space for addition of more buffers to the heap"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "select a valid buffer= "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer does not exist"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "buffer%d freed"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Buffer_0 cannot be deleted"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "%p"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "free all buffers and allocate new buffer size "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "take new buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "address of buffer_0=%p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "address of buffer_1=%p"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_number=%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_allocated_size=%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_space_filled=%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_start_add=%p"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_end_add=%p"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0a
	.db 0x0d
	.ascii "buffer_free_Space=%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.ascii "no_of_characters=%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "buffer_%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "buffer_number=%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "%c  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "The value entered is %d."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__buffer0:
	.byte #0x00, #0x00	; 0
__xinit__buffer1:
	.byte #0x01, #0x00	; 1
	.area CABS    (ABS,CODE)
