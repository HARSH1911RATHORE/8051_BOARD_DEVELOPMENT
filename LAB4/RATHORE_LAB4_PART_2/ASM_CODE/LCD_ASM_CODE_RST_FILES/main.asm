;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _getadd
	.globl _getcol
	.globl _getrow
	.globl _getdata
	.globl _InitTimer0
	.globl _timer
	.globl _delay
	.globl _lcdbusywait
	.globl _lcdinit
	.globl _lcd_clear_screen
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _strtol
	.globl _atoi
	.globl _printf_tiny
	.globl _gets
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
	.globl _data_register_read
	.globl _busy_flag_read
	.globl _data_register_write
	.globl _instruction_reg_write
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
_instruction_reg_write	=	0xf000
_data_register_write	=	0xf100
_busy_flag_read	=	0xf200
_data_register_read	=	0xf300
_getrow_a_65536_52:
	.ds 2
_getcol_a_65536_57:
	.ds 3
_getadd_a_65536_58:
	.ds 3
_main_address_327681_72:
	.ds 2
_main_row1_327681_75:
	.ds 2
_main_column1_327682_77:
	.ds 2
_putchar_c_65536_89:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
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
;Allocation info for local variables in function 'getdata'
;------------------------------------------------------------
;strings                   Allocated with name '_getdata_strings_65536_51'
;------------------------------------------------------------
;	main.c:24: char *getdata()
;	-----------------------------------------
;	 function getdata
;	-----------------------------------------
_getdata:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:27: gets(strings);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_gets
;	main.c:28: return strings;
	mov	dptr,#0x0000
	mov	b,#0x00
;	main.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getrow'
;------------------------------------------------------------
;a                         Allocated with name '_getrow_a_65536_52'
;z                         Allocated with name '_getrow_z_65536_52'
;c                         Allocated with name '_getrow_c_65536_52'
;b                         Allocated with name '_getrow_b_131073_54'
;------------------------------------------------------------
;	main.c:31: int getrow()
;	-----------------------------------------
;	 function getrow
;	-----------------------------------------
_getrow:
;	main.c:36: while(1)
00105$:
;	main.c:38: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:39: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:40: if (b==13)          ///IF ENTER IS PUT CONTINUE
	cjne	r5,#0x0d,00135$
	cjne	r7,#0x00,00135$
	sjmp	00105$
00135$:
;	main.c:47: a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
	mov	dptr,#_getrow_a_65536_52
	mov	a,r6
	movx	@dptr,a
;	main.c:48: putchar(a[0]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:51: if (a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3')
	mov	dptr,#_getrow_a_65536_52
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00136$
	sjmp	00107$
00136$:
	cjne	r7,#0x31,00137$
	sjmp	00107$
00137$:
	cjne	r7,#0x32,00138$
	sjmp	00107$
00138$:
	cjne	r7,#0x33,00108$
00107$:
;	main.c:53: z = atoi(a);
	mov	dptr,#_getrow_a_65536_52
	mov	b,#0x00
;	main.c:54: return (z);
	ljmp	_atoi
00108$:
;	main.c:57: return(-1);                 ///IF VALUES NOT VALID RETURN -1
	mov	dptr,#0xffff
;	main.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getcol'
;------------------------------------------------------------
;a                         Allocated with name '_getcol_a_65536_57'
;z                         Allocated with name '_getcol_z_65536_57'
;------------------------------------------------------------
;	main.c:60: int getcol()
;	-----------------------------------------
;	 function getcol
;	-----------------------------------------
_getcol:
;	main.c:64: gets(a);
	mov	dptr,#_getcol_a_65536_57
	mov	b,#0x00
	lcall	_gets
;	main.c:65: z = atoi(a);
	mov	dptr,#_getcol_a_65536_57
	mov	b,#0x00
;	main.c:66: return (z);
;	main.c:68: }
	ljmp	_atoi
;------------------------------------------------------------
;Allocation info for local variables in function 'getadd'
;------------------------------------------------------------
;a                         Allocated with name '_getadd_a_65536_58'
;z                         Allocated with name '_getadd_z_65536_58'
;c                         Allocated with name '_getadd_c_65536_58'
;b                         Allocated with name '_getadd_b_131073_60'
;b                         Allocated with name '_getadd_b_131073_63'
;------------------------------------------------------------
;	main.c:70: int getadd()
;	-----------------------------------------
;	 function getadd
;	-----------------------------------------
_getadd:
;	main.c:75: while(1)
00105$:
;	main.c:77: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:78: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:79: if (b==13)          ///IF ENTER IS PUT CONTINUE
	cjne	r5,#0x0d,00265$
	cjne	r7,#0x00,00265$
	sjmp	00105$
00265$:
;	main.c:86: a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
	mov	dptr,#_getadd_a_65536_58
	mov	a,r6
	movx	@dptr,a
;	main.c:87: putchar(a[0]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:89: while(1)
00111$:
;	main.c:91: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE
	lcall	_getchar
	mov	r6,dpl
;	main.c:92: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:93: if (b==13)
	cjne	r5,#0x0d,00266$
	cjne	r7,#0x00,00266$
	sjmp	00111$
00266$:
;	main.c:100: a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
	mov	dptr,#(_getadd_a_65536_58 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	main.c:101: putchar(a[1]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:103: if ((a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
	mov	dptr,#(_getadd_a_65536_58 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00267$
	ljmp	00142$
00267$:
	cjne	r7,#0x31,00268$
	sjmp	00142$
00268$:
	cjne	r7,#0x32,00269$
	sjmp	00142$
00269$:
	cjne	r7,#0x33,00270$
	sjmp	00142$
00270$:
	cjne	r7,#0x34,00271$
	sjmp	00142$
00271$:
	cjne	r7,#0x35,00272$
	sjmp	00142$
00272$:
;	main.c:104: a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||a[1]=='c'||
	cjne	r7,#0x36,00273$
	sjmp	00142$
00273$:
	cjne	r7,#0x37,00274$
	sjmp	00142$
00274$:
	cjne	r7,#0x38,00275$
	sjmp	00142$
00275$:
	cjne	r7,#0x39,00276$
	sjmp	00142$
00276$:
	cjne	r7,#0x61,00277$
	sjmp	00142$
00277$:
	cjne	r7,#0x62,00278$
	sjmp	00142$
00278$:
	cjne	r7,#0x63,00279$
	sjmp	00142$
00279$:
;	main.c:105: a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||
	cjne	r7,#0x64,00280$
	sjmp	00142$
00280$:
	cjne	r7,#0x65,00281$
	sjmp	00142$
00281$:
	cjne	r7,#0x66,00282$
	sjmp	00142$
00282$:
	cjne	r7,#0x41,00283$
	sjmp	00142$
00283$:
	cjne	r7,#0x42,00284$
	sjmp	00142$
00284$:
	cjne	r7,#0x43,00285$
	sjmp	00142$
00285$:
	cjne	r7,#0x44,00286$
	sjmp	00142$
00286$:
;	main.c:106: a[1]=='E'||a[1]=='F')&&(a[0]=='8'||a[0]=='9'||a[0]=='c'||a[0]=='d'||a[0]=='C'||a[0]=='D'))
	cjne	r7,#0x45,00287$
	sjmp	00142$
00287$:
	cjne	r7,#0x46,00114$
00142$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00290$
	sjmp	00113$
00290$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00291$
	sjmp	00113$
00291$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00292$
	sjmp	00113$
00292$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00293$
	sjmp	00113$
00293$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00294$
	sjmp	00113$
00294$:
	mov	dptr,#_getadd_a_65536_58
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x44,00114$
00113$:
;	main.c:108: z=(int)strtol(a,NULL,16);   ///FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
	mov	dptr,#_strtol_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getadd_a_65536_58
	mov	b,#0x00
;	main.c:109: return (z);
	ljmp	_strtol
00114$:
;	main.c:112: return(-1);                 ///IF VALUES NOT VALID RETURN -1
	mov	dptr,#0xffff
;	main.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;address                   Allocated with name '_main_address_327681_72'
;row1                      Allocated with name '_main_row1_327681_75'
;column1                   Allocated with name '_main_column1_327682_77'
;------------------------------------------------------------
;	main.c:114: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:116: lcdinit();                     ///LCD INITIALIZATION
	lcall	_lcdinit
;	main.c:117: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:118: lcdgotoxy(1,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	main.c:119: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:120: lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");   ///PUT STRING FOR LCD
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:121: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:122: lcdgotoxy(0,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_lcdgotoxy
;	main.c:123: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:124: lcdputstr("ABCDEFGHIKLMNOPQRESTUVWXYZ1234567890123456789abcdefghijklmnopqrstuvwxyz.");   ///WRITE STRING TO SEE WRAP AROUND
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:125: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:126: lcd_clear_screen();
	lcall	_lcd_clear_screen
;	main.c:127: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:128: lcdgotoxy(1,0);                ///PUT STRING AGAIN TO CHECK IF PRINTS CORRECTLY
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	main.c:129: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:130: lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:131: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:132: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:134: printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:135: printf_tiny("\n\rA-GO TO ADDRESS \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:136: printf_tiny("\n\rC-CLEAR SCREEN \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:137: printf_tiny("\n\rG-GO TO XY \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:138: printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:139: printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:140: printf_tiny("\n\rS-STOP THE TIMER \n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:141: printf_tiny("\n\rR-RESTART THE TIMER \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:142: printf_tiny("\n\rX-RESET THE TIMER \n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:143: printf_tiny("\n\r\ Enter the Key\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:144: while(1)
00135$:
;	main.c:146: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); ///PRINT STATEMENTS FOR THE SELECTING THE KEY
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:147: printf_tiny("\n\rEnter The Key\n\r ");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:148: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:150: input=getchar();                          ///TAKE INPUT IN FORM A CHARACTER FORM USER
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_input
	mov	a,r6
	movx	@dptr,a
;	main.c:151: putchar(input);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
;	main.c:153: if(input!='\n' && input!='\r')
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00231$
	sjmp	00135$
00231$:
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00232$
	sjmp	00135$
00232$:
;	main.c:155: switch(input)
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00233$
	sjmp	00101$
00233$:
	cjne	r7,#0x43,00234$
	ljmp	00113$
00234$:
	cjne	r7,#0x47,00235$
	ljmp	00105$
00235$:
	cjne	r7,#0x4d,00236$
	ljmp	00128$
00236$:
	cjne	r7,#0x50,00237$
	ljmp	00118$
00237$:
	cjne	r7,#0x52,00238$
	ljmp	00126$
00238$:
	cjne	r7,#0x53,00239$
	ljmp	00127$
00239$:
	cjne	r7,#0x57,00240$
	ljmp	00114$
00240$:
	ljmp	00129$
;	main.c:157: case('A'):                                                              ///WRITE ADDRESS
00101$:
;	main.c:159: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:160: printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:161: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:162: printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:163: int address=getadd();                                  ///ACCEPTING THE WRITE ADDRESS
	lcall	_getadd
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_address_327681_72
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:164: while (address==-1)                                       ///PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00102$:
	mov	dptr,#_main_address_327681_72
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00104$
	cjne	r7,#0xff,00104$
;	main.c:166: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:167: printf_tiny ("\n\rEnter a New Address\n\r",address);
	push	ar6
	push	ar7
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:168: address=getadd();
	lcall	_getadd
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_address_327681_72
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	main.c:170: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay
;	main.c:171: lcdbusywait();
	lcall	_lcdbusywait
	pop	ar6
;	main.c:172: lcdgotoaddr(address);
	mov	ar5,r6
	mov	dpl,r5
	push	ar6
	lcall	_lcdgotoaddr
;	main.c:173: lcdbusywait();
	lcall	_lcdbusywait
	pop	ar6
	pop	ar7
;	main.c:175: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address);
	push	ar6
	push	ar7
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:177: break;
	ljmp	00135$
;	main.c:179: case('G'):                                                                  ///READ OPERATION
00105$:
;	main.c:181: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:182: printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:183: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:184: printf_tiny("\n\rEnter the row and column\n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:185: printf_tiny("\n\rEnter the row\n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:186: int row1=getrow();                                           ///ACCEPTING THE ROW
	lcall	_getrow
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_row1_327681_75
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:187: while (row1==-1)                                             ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
00106$:
	mov	dptr,#_main_row1_327681_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00108$
	cjne	r7,#0xff,00108$
;	main.c:189: printf_tiny ("\n\rRow is INVALID\n\r");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:190: printf_tiny ("\n\rEnter a New Row\n\r");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:191: row1=getrow();
	lcall	_getrow
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_row1_327681_75
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00108$:
;	main.c:193: printf_tiny("\n\r The row entered is %d\n\r",row1);
	push	ar6
	push	ar7
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:194: printf_tiny("\n\rEnter the column\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:195: int column1=getcol();                                         ///ACCEPTING THE ADDRESS
	lcall	_getcol
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_column1_327682_77
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:196: while (!((column1 <= 15) && (column1>=0)))                    ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
00110$:
	mov	dptr,#_main_column1_327682_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x0f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00111$
	mov	a,r7
	jnb	acc.7,00112$
00111$:
;	main.c:198: printf_tiny ("\n\rColumn is INVALID\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:199: printf_tiny ("\n\rEnter a New Column\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:200: column1=getcol();
	lcall	_getcol
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_column1_327682_77
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00112$:
;	main.c:202: printf_tiny("\n\r The column entered is %d\n\r",column1);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:203: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:204: lcdbusywait();
	lcall	_lcdbusywait
	pop	ar6
	pop	ar7
;	main.c:205: lcdgotoxy(row1,column1);                                    ///GOTO THE DESIRED ROW COLUMN
	mov	dptr,#_main_row1_327681_75
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	lcall	_lcdgotoxy
;	main.c:206: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:207: break;
	ljmp	00135$
;	main.c:209: case ('C'):
00113$:
;	main.c:211: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:212: printf_tiny("\n\r\t\\t CLEAR THE SCREEN\n\r");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:213: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:214: lcdbusywait();                                            ///CLEAR THE SCREEN
	lcall	_lcdbusywait
;	main.c:215: lcd_clear_screen();
	lcall	_lcd_clear_screen
;	main.c:216: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:217: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:218: break;
	ljmp	00135$
;	main.c:220: case ('W'):
00114$:
;	main.c:222: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:223: printf_tiny("\n\r\t\tWRITE THE CHARACTER ON LCD\n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:224: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:225: printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address for writing the character\n\r");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:226: address1=getadd();                                  ///ACCEPTING THE DDRAM ADDRESS
	lcall	_getadd
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_address1
	mov	a,r6
	movx	@dptr,a
;	main.c:227: while (address1==-1)                                ///PRINT DDRAM ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00115$:
	mov	dptr,#_address1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00117$
;	main.c:229: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address1);
	mov	dptr,#_address1
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:230: printf_tiny ("\n\rEnter a New Address\n\r",address1);
	mov	dptr,#_address1
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:231: address1=getadd();
	lcall	_getadd
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_address1
	mov	a,r6
	movx	@dptr,a
	sjmp	00115$
00117$:
;	main.c:233: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:234: lcdgotoaddr(address1);
	mov	dptr,#_address1
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	main.c:235: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address1);
	mov	dptr,#_address1
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:236: printf_tiny("\n\r ENTER A CHARACTER\n\r");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:237: ch=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_ch
	mov	a,r6
	movx	@dptr,a
;	main.c:238: putchar(ch);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_putchar
;	main.c:239: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:240: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:241: lcdputch(ch);                                         ///PRITNING THE CHARACTER
	mov	dptr,#_ch
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:242: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:243: break;
	ljmp	00135$
;	main.c:245: case('P'):
00118$:
;	main.c:247: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:248: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:249: printf_tiny("\n\r\t\tPRINT THE STRING\n\r");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:250: printf_tiny("\n\rEnter the row and column for writing the string\n\r");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:251: printf_tiny("\n\rEnter the row\n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:252: row2=getrow();                                           ///ACCEPTING THE ROW
	lcall	_getrow
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_row2
	mov	a,r6
	movx	@dptr,a
;	main.c:253: while (row2==-1)                                         ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
00119$:
	mov	dptr,#_row2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00121$
;	main.c:255: printf_tiny ("\n\rRow is INVALID\n\r");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:256: printf_tiny ("\n\rEnter a New Row\n\r");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:257: row2=getrow();
	lcall	_getrow
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_row2
	mov	a,r6
	movx	@dptr,a
	sjmp	00119$
00121$:
;	main.c:259: printf_tiny("\n\r The row entered is %d\n\r",row2);
	mov	dptr,#_row2
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:260: printf_tiny("\n\rEnter the column\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:261: column2=getcol();                                           ///ACCEPTING THE COLUMN
	lcall	_getcol
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_column2
	mov	a,r6
	movx	@dptr,a
;	main.c:262: while (!((column2 <= 15) && (column2>=0)))                  ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
00123$:
	mov	dptr,#_column2
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#(0x0f ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00124$
	mov	dptr,#_column2
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00125$
00124$:
;	main.c:265: printf_tiny ("\n\rColumn is INVALID\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:266: printf_tiny ("\n\rEnter a New Column\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:267: column2=getcol();
	lcall	_getcol
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_column2
	mov	a,r6
	movx	@dptr,a
	sjmp	00123$
00125$:
;	main.c:269: printf_tiny("\n\r The column entered is %d\n\r",column2);
	mov	dptr,#_column2
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	push	ar7
	push	ar6
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:270: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:271: lcdgotoxy(row2,column2);                                   ///GO TO THE ROW AND COLUMN MENTIONED
	mov	dptr,#_row2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_column2
	movx	a,@dptr
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	lcall	_lcdgotoxy
;	main.c:272: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:273: printf_tiny("\n\r ENTER THE STRING WHICH NEEDS TO BE PRINTED\n\r");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:274: string=getdata();                                           ///TAKE STRING FROM THE USER
	lcall	_getdata
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_string
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:275: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:276: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:277: lcdputstr(string);                                          ///PRINT THE STRING AT THE REQUIRED LOCATION
	mov	dptr,#_string
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
	lcall	_lcdputstr
;	main.c:278: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:279: break;
	ljmp	00135$
;	main.c:282: case('R'):
00126$:
;	main.c:284: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:285: printf_tiny("\n\r\t\tRESTART THE TIMER\n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:286: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:287: mili=0;
	mov	dptr,#_mili
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:288: mili_value=0;
	mov	dptr,#_mili_value
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:289: second_value=0;
	mov	dptr,#_second_value
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:290: seconds=0;                           ///printing the timer value form the start of program by restarting the clock
	mov	dptr,#_seconds
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:291: minutes=0;
	mov	dptr,#_minutes
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:292: minu=0;
	mov	dptr,#_minu
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:293: hours=0;
	mov	dptr,#_hours
	movx	@dptr,a
;	main.c:294: break;
	ljmp	00135$
;	main.c:296: case('S'):
00127$:
;	main.c:298: printf_tiny("\n\rRESTART THE TIMER\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:299: printf_tiny("\n\r\t\tSTOP THE TIMER\n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:300: printf_tiny("\n\rRESTART THE TIMER\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:301: break;
	ljmp	00135$
;	main.c:303: case('M'):
00128$:
;	main.c:305: printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:306: printf_tiny("\n\rA-GO TO ADDRESS \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:307: printf_tiny("\n\rC-CLEAR SCREEN \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:308: printf_tiny("\n\rG-GO TO XY \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:309: printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:310: printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:311: printf_tiny("\n\rS-STOP THE TIMER \n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:312: printf_tiny("\n\rR-RESTART THE TIMER \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:313: printf_tiny("\n\rX-RESET THE TIMER \n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:315: default:
00129$:
;	main.c:317: printf_tiny("\n\r\INVALOD KEYn\r");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:320: }
;	main.c:323: }
	ljmp	00135$
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_89'
;------------------------------------------------------------
;	main.c:327: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_89
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:329: while (!TI);                              /// wait for TX ready, spin on TI
00101$:
	jnb	_TI,00101$
;	main.c:330: SBUF = c;  	                            /// load serial port with transmit value
	mov	dptr,#_putchar_c_65536_89
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:331: TI = 0;  	                           /// clear TI flag
;	assignBit
	clr	_TI
;	main.c:332: return 0;
	mov	dptr,#0x0000
;	main.c:333: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:335: int getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:337: while (!RI)                             /// wait for RI ready, spin on RI
00103$:
	jb	_RI,00105$
;	main.c:339: if(input=='T')                     ///TO PRINT TIME CONTINUOUSLY EVEN WHEN INPUT IS BEING ASKED FOR FROM THE USER
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x54,00102$
;	main.c:340: InitTimer0();
	lcall	_InitTimer0
00102$:
;	main.c:341: timer();
	lcall	_timer
	sjmp	00103$
00105$:
;	main.c:343: RI = 0;			                        /// clear RI flag
;	assignBit
	clr	_RI
;	main.c:344: return SBUF;  	                        /// return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:345: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Welcome to  Cu  Boulder.My name is Harsh Rathore"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "ABCDEFGHIKLMNOPQRESTUVWXYZ1234567890123456789abcdefghijklmno"
	.ascii "pqrstuvwxyz."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "The following commands will be performed "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "A-GO TO ADDRESS "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "C-CLEAR SCREEN "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "G-GO TO XY "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "W-WRITE A CHARACTER"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "P-PRINT A SENTENCE "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "S-STOP THE TIMER "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "R-RESTART THE TIMER "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "X-RESET THE TIMER "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii " Enter the Key"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "Enter The Key"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "********************************************* "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "GO TO ADDRESS"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 2 Digit LCD DDRAM Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "The 2 Digit LCD DDRAM Address Entered is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii "The 2 Digit LCD DDRAM Address is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the row and column"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the row"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii "Row is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Row"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii " The row entered is %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the column"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Column is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Column"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii " The column entered is %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x5c
	.ascii "t CLEAR THE SCREEN"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "WRITE THE CHARACTER ON LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 2 Digit LCD DDRAM Address for writing the characte"
	.ascii "r"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii " ENTER A CHARACTER"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "PRINT THE STRING"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the row and column for writing the string"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.ascii " ENTER THE STRING WHICH NEEDS TO BE PRINTED"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "RESTART THE TIMER"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.ascii "RESTART THE TIMER"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "STOP THE TIMER"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0d
	.ascii "INVALOD KEYn"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
