;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module I2C
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_tiny
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
	.globl _Sequence_read_PARM_2
	.globl _PAGE_Write_PARM_2
	.globl _EEPROM_WrByte_PARM_2
	.globl _Delay
	.globl _Long_Delay
	.globl _I2C_Start
	.globl _I2C_Stop
	.globl _I2C_Reset
	.globl _I2C_Read
	.globl _I2C_Write
	.globl _EEPROM_WrByte
	.globl _PAGE_Write
	.globl _ack_eeprom
	.globl _EEPROM_RdByte
	.globl _Sequence_read
	.globl _reset
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_I2C_Read_read_65536_75:
	.ds 1
_I2C_Write_write_65536_78:
	.ds 2
_EEPROM_WrByte_PARM_2:
	.ds 2
_EEPROM_WrByte_word_address_65536_82:
	.ds 2
_PAGE_Write_PARM_2:
	.ds 2
_PAGE_Write_word_address3_65536_84:
	.ds 2
_EEPROM_RdByte_word_address1_65536_90:
	.ds 2
_Sequence_read_PARM_2:
	.ds 2
_Sequence_read_hex_start_address_65536_92:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;	I2C.c:3: void Delay()
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	I2C.c:11: __endasm;
	nop
	nop
	nop
	nop
	nop
;	I2C.c:12: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Long_Delay'
;------------------------------------------------------------
;i                         Allocated with name '_Long_Delay_i_65536_58'
;------------------------------------------------------------
;	I2C.c:14: void Long_Delay()
;	-----------------------------------------
;	 function Long_Delay
;	-----------------------------------------
_Long_Delay:
;	I2C.c:18: for (i=0; i<100; i++)
	mov	r6,#0x64
	mov	r7,#0x00
00108$:
;	I2C.c:20: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00165$
	dec	r7
00165$:
;	I2C.c:18: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	I2C.c:22: for (i=0; i<100; i++)
	jnz	00108$
	mov	r6,#0x64
	mov	r7,a
00111$:
;	I2C.c:24: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00167$
	dec	r7
00167$:
;	I2C.c:22: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	I2C.c:26: for (i=0; i<100; i++)
	jnz	00111$
	mov	r6,#0x64
	mov	r7,a
00114$:
;	I2C.c:28: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00169$
	dec	r7
00169$:
;	I2C.c:26: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	I2C.c:30: for (i=0; i<100; i++)
	jnz	00114$
	mov	r6,#0x64
	mov	r7,a
00117$:
;	I2C.c:32: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00171$
	dec	r7
00171$:
;	I2C.c:30: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	I2C.c:34: for (i=0; i<100; i++)
	jnz	00117$
	mov	r6,#0x64
	mov	r7,a
00120$:
;	I2C.c:36: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00173$
	dec	r7
00173$:
;	I2C.c:34: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
	jnz	00120$
;	I2C.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;	I2C.c:40: void I2C_Start(void)
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
;	I2C.c:42: SDA=HIGH;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
;	assignBit
	setb	_P1_5
;	I2C.c:44: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:45: Delay();                  //DELAY GIVEN BETWEEN SCLK GOING LOW AND SDA GOING LOW
	lcall	_Delay
;	I2C.c:46: SDA=LOW;
;	assignBit
	clr	_P1_5
;	I2C.c:47: Delay();
	lcall	_Delay
;	I2C.c:48: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;	I2C.c:50: void I2C_Stop(void)
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	I2C.c:52: SCLK=LOW;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
;	assignBit
	clr	_P1_6
;	I2C.c:54: SDA=LOW;
;	assignBit
	clr	_P1_5
;	I2C.c:55: Delay();                   //DELAY GIVEN BETWEEN SCLK GOING HIGH AND SDA GOING HIGH
	lcall	_Delay
;	I2C.c:56: SCLK=HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:57: Delay();
	lcall	_Delay
;	I2C.c:58: SDA=HIGH;
;	assignBit
	setb	_P1_5
;	I2C.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Reset'
;------------------------------------------------------------
;	I2C.c:60: void I2C_Reset()
;	-----------------------------------------
;	 function I2C_Reset
;	-----------------------------------------
_I2C_Reset:
;	I2C.c:62: SDA=HIGH;                 //SENDING 9 BITS OF 1 DURING EEPROM RESET PHASE
;	assignBit
	setb	_P1_5
;	I2C.c:63: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:64: Delay();
	lcall	_Delay
;	I2C.c:65: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:66: SDA=LOW;
;	assignBit
	clr	_P1_5
;	I2C.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Read'
;------------------------------------------------------------
;i                         Allocated with name '_I2C_Read_i_65536_75'
;read                      Allocated with name '_I2C_Read_read_65536_75'
;------------------------------------------------------------
;	I2C.c:69: unsigned char I2C_Read(void)
;	-----------------------------------------
;	 function I2C_Read
;	-----------------------------------------
_I2C_Read:
;	I2C.c:72: SDA= HIGH;
;	assignBit
	setb	_P1_5
;	I2C.c:73: read = 0;                     //MAKE VARIABLE READ=0, THE VARIABLE WHICH IS GOING TO STORE THE OUTPUT FORM THE ADDRESS
	mov	dptr,#_I2C_Read_read_65536_75
	clr	a
	movx	@dptr,a
;	I2C.c:74: for(i=0; i<8; i++)         //PERFORMING BIT BY BIT READ OF THE DATA AT THE ADDRESS
	mov	r7,#0x00
00102$:
;	I2C.c:76: SCLK = HIGH;           //SETTING CLOCK HIGH
;	assignBit
	setb	_P1_6
;	I2C.c:77: Delay();
	push	ar7
	lcall	_Delay
;	I2C.c:78: Delay();                //MAKING CLOCK HIGH FOR A LONG TIME
	lcall	_Delay
;	I2C.c:79: Delay();
	lcall	_Delay
	pop	ar7
;	I2C.c:80: read<<=1;                //SETTING UP VARIABLE READ
	mov	dptr,#_I2C_Read_read_65536_75
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	I2C.c:81: read |= SDA;             //LOADING THE VALUES PRESENT AT ADDRESS BIT BY BIT INTO VARIABLE
	movx	a,@dptr
	mov	r6,a
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	dptr,#_I2C_Read_read_65536_75
	orl	a,r6
	movx	@dptr,a
;	I2C.c:82: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:74: for(i=0; i<8; i++)         //PERFORMING BIT BY BIT READ OF THE DATA AT THE ADDRESS
	inc	r7
	cjne	r7,#0x08,00115$
00115$:
	jc	00102$
;	I2C.c:84: return read;
	mov	dptr,#_I2C_Read_read_65536_75
	movx	a,@dptr
;	I2C.c:85: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Write'
;------------------------------------------------------------
;write                     Allocated with name '_I2C_Write_write_65536_78'
;i                         Allocated with name '_I2C_Write_i_65536_79'
;------------------------------------------------------------
;	I2C.c:88: void I2C_Write(unsigned int write)
;	-----------------------------------------
;	 function I2C_Write
;	-----------------------------------------
_I2C_Write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_I2C_Write_write_65536_78
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:91: for(i=0; i<8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	I2C.c:93: SDA = ((write & 0x80) ? 1 : 0);  //SETTING SDA LOW OR HIGH DEPENDING ON THE VALUE TO BE WRITTEN, WHETHER THE ADDRESS OR THE DATA VALUE
	mov	dptr,#_I2C_Write_write_65536_78
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_5,c
;	I2C.c:94: SCLK = HIGH;                     //SETTING CLOCK PULSE BY MAKING IT HGIH AND LOW FOR WROTE OPEARTION IN THE SDA LINE
;	assignBit
	setb	_P1_6
;	I2C.c:95: Delay();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	I2C.c:96: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:97: write<<=1;                       //SHIFTING THE WRITE VARIABLKE BY 1 BIT AND AGAIN LOADING ITS VALUE INTO SDA TILL 1 BYTE IS LOADED
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_I2C_Write_write_65536_78
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	I2C.c:91: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	I2C.c:99: SDA=HIGH;                           //SENDING A SDA HIGH SIGNAL TO WAIT TO RECEIVE ACK FROM RECEIVER WHICH MAKES THE SDA LINE LOW
;	assignBit
	setb	_P1_5
;	I2C.c:100: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:101: Delay();
	lcall	_Delay
;	I2C.c:102: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EEPROM_WrByte'
;------------------------------------------------------------
;data_write                Allocated with name '_EEPROM_WrByte_PARM_2'
;word_address              Allocated with name '_EEPROM_WrByte_word_address_65536_82'
;------------------------------------------------------------
;	I2C.c:105: void EEPROM_WrByte(unsigned int word_address,unsigned int data_write)
;	-----------------------------------------
;	 function EEPROM_WrByte
;	-----------------------------------------
_EEPROM_WrByte:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:107: I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
	lcall	_I2C_Start
;	I2C.c:108: I2C_Write(EEPROM_CMD|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
	mov	dptr,#_EEPROM_CMD
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:109: I2C_Write(word_address);         //FOLLOWED BY A WORD ADDRESS
	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_I2C_Write
;	I2C.c:110: I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
	mov	dptr,#_EEPROM_WrByte_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_I2C_Write
;	I2C.c:111: I2C_Stop();                      //FOLLOWED BY A STOP
	lcall	_I2C_Stop
	pop	ar6
	pop	ar7
;	I2C.c:112: word_address++;                  //INCREMENTING THE WORD ADDRESS
	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:113: Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
	lcall	_Delay
;	I2C.c:114: Delay();
;	I2C.c:115: return;
;	I2C.c:116: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'PAGE_Write'
;------------------------------------------------------------
;data_write                Allocated with name '_PAGE_Write_PARM_2'
;word_address3             Allocated with name '_PAGE_Write_word_address3_65536_84'
;i                         Allocated with name '_PAGE_Write_i_65537_86'
;------------------------------------------------------------
;	I2C.c:118: void PAGE_Write(unsigned int word_address3,unsigned int data_write)
;	-----------------------------------------
;	 function PAGE_Write
;	-----------------------------------------
_PAGE_Write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_PAGE_Write_word_address3_65536_84
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:120: I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
	lcall	_I2C_Start
;	I2C.c:121: I2C_Write(EEPROM_CMD_PAGE|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
	mov	dptr,#_EEPROM_CMD_PAGE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:122: I2C_Write(word_address3);         //FOLLOWED BY A WORD ADDRESS
	mov	dptr,#_PAGE_Write_word_address3_65536_84
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:125: for(i=0;i<=16;i++)
	mov	dptr,#_PAGE_Write_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00102$:
;	I2C.c:127: I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_I2C_Write
;	I2C.c:128: Long_Delay();
	lcall	_Long_Delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	I2C.c:125: for(i=0;i<=16;i++)
	inc	r4
	cjne	r4,#0x00,00115$
	inc	r5
00115$:
	clr	c
	mov	a,#0x10
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	I2C.c:130: I2C_Stop();                      //FOLLOWED BY A STOP
	lcall	_I2C_Stop
;	I2C.c:131: word_address++;                  //INCREMENTING THE WORD ADDRESS
	mov	dptr,#_word_address
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	I2C.c:132: Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
	lcall	_Delay
;	I2C.c:133: Delay();
;	I2C.c:134: return;
;	I2C.c:135: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'ack_eeprom'
;------------------------------------------------------------
;	I2C.c:137: void ack_eeprom()
;	-----------------------------------------
;	 function ack_eeprom
;	-----------------------------------------
_ack_eeprom:
;	I2C.c:139: SDA = HIGH;                    //SENDING SDA HIGH SIGNAL WITH THE CLOCK PULSE TO GET AN ACK FORM THE EEPROM
;	assignBit
	setb	_P1_5
;	I2C.c:140: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:141: Delay();
	lcall	_Delay
;	I2C.c:142: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EEPROM_RdByte'
;------------------------------------------------------------
;word_address1             Allocated with name '_EEPROM_RdByte_word_address1_65536_90'
;x                         Allocated with name '_EEPROM_RdByte_x_65536_91'
;------------------------------------------------------------
;	I2C.c:145: unsigned char EEPROM_RdByte(unsigned int word_address1)
;	-----------------------------------------
;	 function EEPROM_RdByte
;	-----------------------------------------
_EEPROM_RdByte:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_EEPROM_RdByte_word_address1_65536_90
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:148: SDA=HIGH;
;	assignBit
	setb	_P1_5
;	I2C.c:149: I2C_Start();                        //START GIGNAL
	lcall	_I2C_Start
;	I2C.c:150: I2C_Write(EEPROM_CMD|0x0);          //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
	mov	dptr,#_EEPROM_CMD
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:151: I2C_Write(word_address1);           //FOLLOWED BY A WORD ADDRESS
	mov	dptr,#_EEPROM_RdByte_word_address1_65536_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:152: Delay();
	lcall	_Delay
;	I2C.c:153: I2C_Start();                        //FOLLOWED BY A REPEATED START
	lcall	_I2C_Start
;	I2C.c:154: I2C_Write(EEPROM_CMD|0x1);          //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
	mov	dptr,#_EEPROM_CMD
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	ar6,#0x01
	mov	dpl,r6
	mov	dph,r7
	lcall	_I2C_Write
;	I2C.c:155: Delay();
	lcall	_Delay
;	I2C.c:156: Delay();                            //DELAY BETWEEN OPEARTIONS
	lcall	_Delay
;	I2C.c:157: Delay();
	lcall	_Delay
;	I2C.c:158: Delay();
	lcall	_Delay
;	I2C.c:159: x = I2C_Read();                     //FOLLOWED BY A READING THE VALUE IN A VARIABLE X
	lcall	_I2C_Read
	mov	r7,dpl
;	I2C.c:160: SDA = HIGH;                         //FOLLOWED BY SENDING A NACK FROM MASTER
;	assignBit
	setb	_P1_5
;	I2C.c:161: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:162: Delay();
	push	ar7
	lcall	_Delay
;	I2C.c:163: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:164: I2C_Stop();                         //FOLLOWED BY SENDING A STOP SIGNAL
	lcall	_I2C_Stop
	pop	ar7
;	I2C.c:165: return(x);
	mov	dpl,r7
;	I2C.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sequence_read'
;------------------------------------------------------------
;hex_end_address           Allocated with name '_Sequence_read_PARM_2'
;hex_start_address         Allocated with name '_Sequence_read_hex_start_address_65536_92'
;internal_address1         Allocated with name '_Sequence_read_internal_address1_65536_93'
;page_selection_bits1      Allocated with name '_Sequence_read_page_selection_bits1_65536_93'
;j                         Allocated with name '_Sequence_read_j_65537_94'
;i                         Allocated with name '_Sequence_read_i_65538_95'
;difference                Allocated with name '_Sequence_read_difference_65538_95'
;sequence                  Allocated with name '_Sequence_read_sequence_196611_99'
;------------------------------------------------------------
;	I2C.c:168: void Sequence_read(unsigned int hex_start_address,unsigned int hex_end_address)
;	-----------------------------------------
;	 function Sequence_read
;	-----------------------------------------
_Sequence_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Sequence_read_hex_start_address_65536_92
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	I2C.c:170: int internal_address1=hex_start_address;           //TAKING HEX START ADDRESS IN A VARIABLE
	mov	dptr,#_Sequence_read_hex_start_address_65536_92
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	I2C.c:171: int page_selection_bits1=hex_start_address&0x700;  //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
	mov	r4,#0x00
	mov	a,#0x07
	anl	a,r7
;	I2C.c:172: page_block1=page_selection_bits1>>7;
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00122$
	orl	a,#0xfe
00122$:
	mov	r5,a
	mov	dptr,#_page_block1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	I2C.c:173: EEPROM_CMD=0xA0|page_block1;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
	mov	dptr,#_EEPROM_CMD
	mov	a,#0xa0
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	I2C.c:174: word_address2=internal_address1&0x0FF;             //REMOVING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SO THAT WE CAN READ FORM THE REQURIED WORD ADDRESS
	mov	dptr,#_word_address2
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	I2C.c:176: I2C_Start();                                      //START GIGNAL
	push	ar7
	push	ar6
	lcall	_I2C_Start
;	I2C.c:177: I2C_Write(EEPROM_CMD|0x0);                        //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
	mov	dptr,#_EEPROM_CMD
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_I2C_Write
;	I2C.c:178: I2C_Write(word_address2);                         //FOLLOWED BY A WORD ADDRESS
	mov	dptr,#_word_address2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_I2C_Write
;	I2C.c:179: Delay();
	lcall	_Delay
;	I2C.c:180: I2C_Start();                                      //FOLLOWED BY A REPEATED START
	lcall	_I2C_Start
;	I2C.c:181: Delay();
	lcall	_Delay
;	I2C.c:182: I2C_Write(EEPROM_CMD|0x1);                        //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
	mov	dptr,#_EEPROM_CMD
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	ar4,#0x01
	mov	dpl,r4
	mov	dph,r5
	lcall	_I2C_Write
;	I2C.c:183: Delay();
	lcall	_Delay
;	I2C.c:184: Delay();                                          //DELAY BETWEEN OPEARTIONS
	lcall	_Delay
;	I2C.c:185: Delay();
	lcall	_Delay
;	I2C.c:186: Delay();
	lcall	_Delay
	pop	ar6
	pop	ar7
;	I2C.c:190: int difference=hex_end_address-hex_start_address;  //STORING THE DIFFERENCE OF END AND START ADDRESS IN VARFIABLE DIFFERENCE
	mov	dptr,#_Sequence_read_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
;	I2C.c:191: for(i=0; i<=difference; i++)
	mov	r2,#0x00
	mov	r3,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
	ljmp	00103$
00123$:
;	I2C.c:194: if(i%16==0)                                   //IF DATA VALUE PRINTED 16 TIMES GOTO THE NEXT LINE
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	I2C.c:196: printf_tiny("\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	I2C.c:197: printf("%x   : ",internal_address1);     //PRINT THE ADDRESS VALUE
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	I2C.c:199: internal_address1++;                        //INCREMENTING THE ADDRESS COUNTER
	inc	r6
	cjne	r6,#0x00,00125$
	inc	r7
00125$:
;	I2C.c:200: int sequence = I2C_Read();                  //READING FROM THE DESIRED LOCATIONS
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_I2C_Read
	mov	r0,dpl
	mov	r1,#0x00
;	I2C.c:201: printf("%x ",sequence);
	push	ar0
	push	ar1
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	I2C.c:202: SDA = LOW;
;	assignBit
	clr	_P1_5
;	I2C.c:203: SCLK = HIGH;                                //PERORMING FOR EACH DATA BYTE READ
;	assignBit
	setb	_P1_6
;	I2C.c:204: Delay();
	lcall	_Delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	I2C.c:205: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:191: for(i=0; i<=difference; i++)
	inc	r2
	cjne	r2,#0x00,00126$
	inc	r3
00126$:
	ljmp	00105$
00103$:
;	I2C.c:208: SDA = LOW;                                     //MAKING SDA LOW TO GET A NACK FROM THE EEPROM
;	assignBit
	clr	_P1_5
;	I2C.c:209: SCLK = HIGH;
;	assignBit
	setb	_P1_6
;	I2C.c:210: Delay();
	lcall	_Delay
;	I2C.c:211: SCLK = LOW;
;	assignBit
	clr	_P1_6
;	I2C.c:212: I2C_Stop();
	lcall	_I2C_Stop
;	I2C.c:213: SDA=HIGH;
;	assignBit
	setb	_P1_5
;	I2C.c:214: Delay();
;	I2C.c:216: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;i                         Allocated with name '_reset_i_65536_100'
;------------------------------------------------------------
;	I2C.c:218: void reset()
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	I2C.c:221: I2C_Start();               //EEPROM RESET OPERATION WHICH CONSISTS OF THE FOLLOWING COMMANDS
	lcall	_I2C_Start
;	I2C.c:222: for(i=0; i<=9; i++)        //START SIGNAL
	mov	r6,#0x0a
	mov	r7,#0x00
00104$:
;	I2C.c:224: I2C_Reset();
	push	ar7
	push	ar6
	lcall	_I2C_Reset
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
;	I2C.c:222: for(i=0; i<=9; i++)        //START SIGNAL
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	I2C.c:226: I2C_Start();              //FOLLLOWED BY START BIT
	lcall	_I2C_Start
;	I2C.c:227: I2C_Stop();               //FOLLOWED BY STOP BIT
;	I2C.c:228: }
	ljmp	_I2C_Stop
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%x   : "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
