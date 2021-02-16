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
	.globl _reset
	.globl _Sequence_read
	.globl _EEPROM_RdByte
	.globl _PAGE_Write
	.globl _EEPROM_WrByte
	.globl _Delay
	.globl _strtol
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
	.globl _page_block3
	.globl _page_block2
	.globl _page_block1
	.globl _word_address3
	.globl _word_address2
	.globl _word_address1
	.globl _word_address
	.globl _EEPROM_CMD_PAGE
	.globl _EEPROM_CMD
	.globl _getdata
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
_getdata_a_65536_57:
	.ds 3
_getnumber_a_65536_65:
	.ds 4
_main_write_address_327682_83:
	.ds 2
_main_data_write_327684_87:
	.ds 2
_main_read_address_327682_102:
	.ds 2
_main_hex_start_address_327682_108:
	.ds 2
_main_hex_end_address_327683_111:
	.ds 2
_main_page_address_327682_116:
	.ds 2
_main_data_to_write_327684_120:
	.ds 2
_putchar_c_65536_125:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_EEPROM_CMD::
	.ds 2
_EEPROM_CMD_PAGE::
	.ds 2
_word_address::
	.ds 2
_word_address1::
	.ds 2
_word_address2::
	.ds 2
_word_address3::
	.ds 2
_page_block1::
	.ds 2
_page_block2::
	.ds 2
_page_block3::
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
;Allocation info for local variables in function 'getdata'
;------------------------------------------------------------
;a                         Allocated with name '_getdata_a_65536_57'
;z                         Allocated with name '_getdata_z_65536_57'
;c                         Allocated with name '_getdata_c_65536_57'
;b                         Allocated with name '_getdata_b_131073_59'
;b                         Allocated with name '_getdata_b_131073_62'
;------------------------------------------------------------
;	main.c:14: int getdata()
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
;	main.c:19: while(1)
00105$:
;	main.c:21: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:22: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:23: if (b==13)          //IF ENTER IS PUT CONTINUE
	cjne	r5,#0x0d,00345$
	cjne	r7,#0x00,00345$
	sjmp	00105$
00345$:
;	main.c:30: a[0]=c;                 //TAKE THE CHARACTER IN ARRAY A[0]
	mov	dptr,#_getdata_a_65536_57
	mov	a,r6
	movx	@dptr,a
;	main.c:31: putchar(a[0]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:33: while(1)
00111$:
;	main.c:35: c=getchar();        //TAKE THE CHARACTER IN VARIABLE
	lcall	_getchar
	mov	r6,dpl
;	main.c:36: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:37: if (b==13)
	cjne	r5,#0x0d,00346$
	cjne	r7,#0x00,00346$
	sjmp	00111$
00346$:
;	main.c:44: a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	main.c:45: putchar(a[1]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:47: if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00347$
	ljmp	00158$
00347$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00348$
	ljmp	00158$
00348$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00349$
	ljmp	00158$
00349$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x33,00350$
	ljmp	00158$
00350$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00351$
	ljmp	00158$
00351$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00352$
	ljmp	00158$
00352$:
;	main.c:48: a[0]=='6'||a[0]=='7'||a[0]=='8'||a[0]=='9'||a[0]=='a'||a[0]=='b'||a[0]=='c'||
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00353$
	ljmp	00158$
00353$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00354$
	ljmp	00158$
00354$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00355$
	ljmp	00158$
00355$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00356$
	ljmp	00158$
00356$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00357$
	sjmp	00158$
00357$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x62,00358$
	sjmp	00158$
00358$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00359$
	sjmp	00158$
00359$:
;	main.c:49: a[0]=='d'||a[0]=='e'||a[0]=='f'||a[0]=='A'||a[0]=='B'||a[0]=='C'||a[0]=='D'||
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00360$
	sjmp	00158$
00360$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x65,00361$
	sjmp	00158$
00361$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x66,00362$
	sjmp	00158$
00362$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00363$
	sjmp	00158$
00363$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x42,00364$
	sjmp	00158$
00364$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00365$
	sjmp	00158$
00365$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x44,00366$
	sjmp	00158$
00366$:
;	main.c:50: a[0]=='E'||a[0]=='F')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00367$
	sjmp	00158$
00367$:
	mov	dptr,#_getdata_a_65536_57
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x46,00368$
	sjmp	00369$
00368$:
	ljmp	00114$
00369$:
00158$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00370$
	ljmp	00113$
00370$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00371$
	ljmp	00113$
00371$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00372$
	ljmp	00113$
00372$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x33,00373$
	ljmp	00113$
00373$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00374$
	ljmp	00113$
00374$:
;	main.c:51: a[1]=='5'||a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00375$
	ljmp	00113$
00375$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00376$
	ljmp	00113$
00376$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00377$
	ljmp	00113$
00377$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00378$
	ljmp	00113$
00378$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00379$
	ljmp	00113$
00379$:
;	main.c:52: a[1]=='a'||a[1]=='b'||a[1]=='c'||a[1]=='d'||a[1]=='e'||
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00380$
	sjmp	00113$
00380$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x62,00381$
	sjmp	00113$
00381$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00382$
	sjmp	00113$
00382$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00383$
	sjmp	00113$
00383$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x65,00384$
	sjmp	00113$
00384$:
;	main.c:53: a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F'))
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x66,00385$
	sjmp	00113$
00385$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00386$
	sjmp	00113$
00386$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x42,00387$
	sjmp	00113$
00387$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00388$
	sjmp	00113$
00388$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x44,00389$
	sjmp	00113$
00389$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00390$
	sjmp	00113$
00390$:
	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x46,00114$
00113$:
;	main.c:55: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
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
	mov	dptr,#_getdata_a_65536_57
	mov	b,#0x00
;	main.c:56: return (z);
	ljmp	_strtol
00114$:
;	main.c:59: return(-1);                 //IF VALUES NOT VALID RETURN -1
	mov	dptr,#0xffff
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getnumber'
;------------------------------------------------------------
;a                         Allocated with name '_getnumber_a_65536_65'
;z                         Allocated with name '_getnumber_z_65536_65'
;c                         Allocated with name '_getnumber_c_65536_65'
;b                         Allocated with name '_getnumber_b_131073_67'
;b                         Allocated with name '_getnumber_b_131073_70'
;b                         Allocated with name '_getnumber_b_131073_73'
;------------------------------------------------------------
;	main.c:62: int getnumber()         //FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
;	-----------------------------------------
;	 function getnumber
;	-----------------------------------------
_getnumber:
;	main.c:68: while(1)
00105$:
;	main.c:70: c=getchar();     //TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:71: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:72: if (b==13)
	cjne	r5,#0x0d,00415$
	cjne	r7,#0x00,00415$
	sjmp	00105$
00415$:
;	main.c:79: a[0]=c;
	mov	dptr,#_getnumber_a_65536_65
	mov	a,r6
	movx	@dptr,a
;	main.c:80: putchar(a[0]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:82: while(1)
00111$:
;	main.c:84: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:85: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:86: if (b==13)
	cjne	r5,#0x0d,00416$
	cjne	r7,#0x00,00416$
	sjmp	00111$
00416$:
;	main.c:94: a[1]=c;
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	main.c:95: putchar(a[1]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:98: while(1)
00117$:
;	main.c:100: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
	lcall	_getchar
	mov	r6,dpl
;	main.c:103: int b=(int)c;
	mov	ar5,r6
	mov	r7,#0x00
;	main.c:104: if (b==13)
	cjne	r5,#0x0d,00417$
	cjne	r7,#0x00,00417$
	sjmp	00117$
00417$:
;	main.c:111: a[2]=c;
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	main.c:112: putchar(a[2]);
	mov	dpl,r5
	mov	dph,r7
	lcall	_putchar
;	main.c:115: if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||a[0]=='6'||
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00418$
	sjmp	00158$
00418$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00419$
	sjmp	00158$
00419$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00420$
	sjmp	00158$
00420$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x33,00421$
	sjmp	00158$
00421$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00422$
	sjmp	00158$
00422$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00423$
	sjmp	00158$
00423$:
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00424$
	sjmp	00158$
00424$:
;	main.c:116: a[0]=='7')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00425$
	sjmp	00426$
00425$:
	ljmp	00128$
00426$:
00158$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00427$
	ljmp	00180$
00427$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00428$
	ljmp	00180$
00428$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00429$
	ljmp	00180$
00429$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x33,00430$
	ljmp	00180$
00430$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00431$
	ljmp	00180$
00431$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00432$
	ljmp	00180$
00432$:
;	main.c:117: a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00433$
	ljmp	00180$
00433$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00434$
	ljmp	00180$
00434$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00435$
	ljmp	00180$
00435$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00436$
	ljmp	00180$
00436$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00437$
	sjmp	00180$
00437$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x62,00438$
	sjmp	00180$
00438$:
;	main.c:118: a[1]=='c'||a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00439$
	sjmp	00180$
00439$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00440$
	sjmp	00180$
00440$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x65,00441$
	sjmp	00180$
00441$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x66,00442$
	sjmp	00180$
00442$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00443$
	sjmp	00180$
00443$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x42,00444$
	sjmp	00180$
00444$:
;	main.c:119: a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F')&&(a[2]=='0'||a[2]=='1'||
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00445$
	sjmp	00180$
00445$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x44,00446$
	sjmp	00180$
00446$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00447$
	sjmp	00180$
00447$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x46,00448$
	sjmp	00449$
00448$:
	ljmp	00128$
00449$:
00180$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00450$
	ljmp	00127$
00450$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00451$
	ljmp	00127$
00451$:
;	main.c:120: a[2]=='2'||a[2]=='3'||a[2]=='4'||a[2]=='5'||a[2]=='6'||a[2]=='7'||
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00452$
	ljmp	00127$
00452$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x33,00453$
	ljmp	00127$
00453$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00454$
	ljmp	00127$
00454$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00455$
	ljmp	00127$
00455$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00456$
	ljmp	00127$
00456$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00457$
	ljmp	00127$
00457$:
;	main.c:121: a[2]=='8'||a[2]=='9'||a[2]=='A'||a[2]=='B'||a[2]=='C'||a[2]=='D'||
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00458$
	ljmp	00127$
00458$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x39,00459$
	ljmp	00127$
00459$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00460$
	sjmp	00127$
00460$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x42,00461$
	sjmp	00127$
00461$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00462$
	sjmp	00127$
00462$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x44,00463$
	sjmp	00127$
00463$:
;	main.c:122: a[2]=='E'||a[2]=='F'||a[2]=='a'||a[2]=='b'||a[2]=='c'||a[2]=='d'||a[2]=='e'||a[2]=='f'))
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00464$
	sjmp	00127$
00464$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x46,00465$
	sjmp	00127$
00465$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00466$
	sjmp	00127$
00466$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x62,00467$
	sjmp	00127$
00467$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00468$
	sjmp	00127$
00468$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00469$
	sjmp	00127$
00469$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x65,00470$
	sjmp	00127$
00470$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x66,00128$
00127$:
;	main.c:124: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
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
	mov	dptr,#_getnumber_a_65536_65
	mov	b,#0x00
;	main.c:125: return (z);
	ljmp	_strtol
00128$:
;	main.c:127: else if ((a[0]=='\n'&&a[0]=='\r')||(a[1]=='\n'&&a[1]=='\r')||(a[2]=='\n'&&a[2]=='\r'))
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00124$
	mov	dptr,#_getnumber_a_65536_65
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00475$
	sjmp	00119$
00475$:
00124$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00126$
	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00478$
	sjmp	00119$
00478$:
00126$:
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00120$
	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00120$
00119$:
;	main.c:129: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
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
	mov	dptr,#_getnumber_a_65536_65
	mov	b,#0x00
;	main.c:130: return (z);
	ljmp	_strtol
00120$:
;	main.c:133: return(-1);
	mov	dptr,#0xffff
;	main.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated with name '_main_input_131073_79'
;write_address             Allocated with name '_main_write_address_327682_83'
;internal_address          Allocated with name '_main_internal_address_327683_86'
;page_selection_bits       Allocated with name '_main_page_selection_bits_327683_86'
;page_block                Allocated with name '_main_page_block_327683_86'
;data_write                Allocated with name '_main_data_write_327684_87'
;i                         Allocated with name '_main_i_327685_90'
;read_address              Allocated with name '_main_read_address_327682_102'
;internal_address          Allocated with name '_main_internal_address_327683_105'
;page_selection_bits       Allocated with name '_main_page_selection_bits_327683_105'
;page_block                Allocated with name '_main_page_block_327683_105'
;x1                        Allocated with name '_main_x1_327684_106'
;hex_start_address         Allocated with name '_main_hex_start_address_327682_108'
;hex_end_address           Allocated with name '_main_hex_end_address_327683_111'
;page_address              Allocated with name '_main_page_address_327682_116'
;internal_address3         Allocated with name '_main_internal_address3_327683_119'
;page_selection_bits3      Allocated with name '_main_page_selection_bits3_327683_119'
;data_to_write             Allocated with name '_main_data_to_write_327684_120'
;------------------------------------------------------------
;	main.c:138: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:140: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");    //PRINT STATEMENTS FOR THE USER INTERFACE
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:141: printf_tiny("\n\r~~~~~~~~~~~~~~~~~I2C~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:142: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:143: printf_tiny("\n\rThe following commands will be performed \n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:144: printf_tiny("\n\rW-Write Byte \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:145: printf_tiny("\n\rR-Read Byte \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:146: printf_tiny("\n\rH-Hex Dump \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:147: printf_tiny("\n\rP-Page Write \n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:148: printf_tiny("\n\rE-Reset Eeprom \n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:150: while(1)
00189$:
;	main.c:152: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); //PRINT STATEMENTS FOR THE SELECTING THE KEY
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:153: printf_tiny("\n\rEnter The Key\n\r ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:154: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:156: input=getchar();                          //TAKE INPUT IN FORM A CHARACTER FORM USER
	lcall	_getchar
	mov	r6,dpl
;	main.c:157: putchar(input);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	main.c:159: if(input!='\n' && input!='\r')
	cjne	r6,#0x0a,00457$
	sjmp	00189$
00457$:
	cjne	r6,#0x0d,00458$
	sjmp	00189$
00458$:
;	main.c:161: switch(input)
	cjne	r6,#0x45,00459$
	ljmp	00182$
00459$:
	cjne	r6,#0x48,00460$
	ljmp	00138$
00460$:
	cjne	r6,#0x50,00461$
	ljmp	00161$
00461$:
	cjne	r6,#0x52,00462$
	ljmp	00127$
00462$:
	cjne	r6,#0x57,00463$
	sjmp	00464$
00463$:
	ljmp	00183$
00464$:
;	main.c:165: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:166: printf_tiny("\n\r\t\tWRITE BYTE\n\r ");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:167: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:168: printf_tiny("\n\rEnter the 3 Digit Write Address\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:169: int write_address=getnumber();                                  //ACCEPTING THE WRITE ADDRESS
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_write_address_327682_83
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:170: while (write_address==-1)                                       //PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00102$:
	mov	dptr,#_main_write_address_327682_83
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00109$
	cjne	r7,#0xff,00109$
;	main.c:172: printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:173: printf_tiny ("\n\rEnter a New Address\n\r",write_address);
	push	ar6
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:174: write_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_write_address_327682_83
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:176: while(!(write_address>=0 && write_address<=2047))              // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
	sjmp	00102$
00109$:
	mov	dptr,#_main_write_address_327682_83
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00110$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
00110$:
;	main.c:178: printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
	mov	dptr,#_main_write_address_327682_83
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:179: printf_tiny ("\n\rEnter a New Address\n\r",write_address);
	push	ar4
	push	ar5
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:180: write_address=getnumber();                                //IF NOT TAKE IT AGAIN
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_write_address_327682_83
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:181: if(write_address!='\n' && write_address!='\r')
	cjne	r4,#0x0a,00469$
	cjne	r5,#0x00,00469$
	sjmp	00109$
00469$:
	cjne	r4,#0x0d,00470$
	cjne	r5,#0x00,00470$
	sjmp	00109$
00470$:
;	main.c:182: write_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_write_address_327682_83
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00109$
00111$:
;	main.c:185: printf_tiny ("\n\rThe Address for Write Operation is %x.\n\r",write_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:188: int page_selection_bits=write_address&0x700;            //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
	mov	r4,#0x00
	mov	a,#0x07
	anl	a,r7
;	main.c:189: int page_block=page_selection_bits>>7;
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00471$
	orl	a,#0xfe
00471$:
	mov	r5,a
;	main.c:190: EEPROM_CMD=0xA0|page_block;                             //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
	mov	dptr,#_EEPROM_CMD
	mov	a,#0xa0
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:191: word_address=internal_address&0x0FF;                    //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME
	mov	dptr,#_word_address
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:192: printf_tiny("\n\rEnter the 2 Digit Data value to be Written\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:193: int data_write=getdata();                               //ACCEPTING THE WRITE BYTE
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_write_327684_87
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:195: while (data_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
00112$:
	mov	dptr,#_main_data_write_327684_87
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00119$
	cjne	r7,#0xff,00119$
;	main.c:197: printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:198: printf_tiny ("\n\rEnter a New Data\n\r",data_write);
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
;	main.c:200: data_write=getdata();
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_write_327684_87
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:202: while(!(data_write>=0 && data_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
	sjmp	00112$
00119$:
	mov	dptr,#_main_data_write_327684_87
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00120$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00121$
00120$:
;	main.c:204: printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
	mov	dptr,#_main_data_write_327684_87
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:205: printf_tiny ("\n\rEnter a New Data\n\r",data_write);
	push	ar4
	push	ar5
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:206: data_write=getdata();
	lcall	_getdata
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_data_write_327684_87
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:207: if(data_write!='\n' && data_write!='\r')
	cjne	r4,#0x0a,00476$
	cjne	r5,#0x00,00476$
	sjmp	00119$
00476$:
	cjne	r4,#0x0d,00477$
	cjne	r5,#0x00,00477$
	sjmp	00119$
00477$:
;	main.c:208: data_write=getdata();                           //IF NOT TAKE IT AGAIN
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_write_327684_87
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00119$
00121$:
;	main.c:210: printf ("\n\rData Value to be Written is %x.\n\r",data_write);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:211: EEPROM_WrByte(word_address, data_write);                //CALLING THE FUNCTION TO WRITE BYTE AT A GIVEN LOCATION
	mov	dptr,#_word_address
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_EEPROM_WrByte_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_EEPROM_WrByte
;	main.c:214: for (i=0; i<100; i++)
	mov	r6,#0x64
	mov	r7,#0x00
00193$:
;	main.c:216: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00478$
	dec	r7
00478$:
;	main.c:214: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	main.c:218: for (i=0; i<100; i++)
	jnz	00193$
	mov	r6,#0x64
	mov	r7,a
00196$:
;	main.c:220: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00480$
	dec	r7
00480$:
;	main.c:218: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	main.c:222: for (i=0; i<100; i++)
	jnz	00196$
	mov	r6,#0x64
	mov	r7,a
00199$:
;	main.c:224: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00482$
	dec	r7
00482$:
;	main.c:222: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	main.c:226: for (i=0; i<100; i++)
	jnz	00199$
	mov	r6,#0x64
	mov	r7,a
00202$:
;	main.c:228: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00484$
	dec	r7
00484$:
;	main.c:226: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
;	main.c:231: for (i=0; i<100; i++)
	jnz	00202$
	mov	r6,#0x64
	mov	r7,a
00205$:
;	main.c:233: Delay();
	push	ar7
	push	ar6
	lcall	_Delay
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xff,00486$
	dec	r7
00486$:
;	main.c:231: for (i=0; i<100; i++)
	mov	a,r6
	orl	a,r7
	jnz	00205$
;	main.c:236: break;
	ljmp	00189$
;	main.c:238: case('R'):                                                                  //READ OPERATION
00127$:
;	main.c:240: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:241: printf_tiny("\n\r\t\tREAD BYTE\n\r ");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:242: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:243: printf_tiny("\n\rEnter the 3 Digit Read Address\n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:244: int read_address=getnumber();                                           //ACCEPTING THE READ ADDRESS
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_read_address_327682_102
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:245: while (read_address==-1)                                                //PRINT READ ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00128$:
	mov	dptr,#_main_read_address_327682_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00135$
	cjne	r7,#0xff,00135$
;	main.c:247: printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:248: printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:250: read_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_read_address_327682_102
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:252: while(!(read_address>=0 && read_address<=2047))                         // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
	sjmp	00128$
00135$:
	mov	dptr,#_main_read_address_327682_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00136$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00137$
00136$:
;	main.c:254: printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
	mov	dptr,#_main_read_address_327682_102
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:255: printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);
	push	ar4
	push	ar5
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:256: read_address=getnumber();                                           //IF NOT TAKE IT AGAIN
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_read_address_327682_102
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:257: if(read_address!='\n' && read_address!='\r')
	cjne	r4,#0x0a,00492$
	cjne	r5,#0x00,00492$
	sjmp	00135$
00492$:
	cjne	r4,#0x0d,00493$
	cjne	r5,#0x00,00493$
	sjmp	00135$
00493$:
;	main.c:258: read_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_read_address_327682_102
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00135$
00137$:
;	main.c:260: printf_tiny ("\n\rThe Read Byte Address is %x.\n\r",read_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:263: int page_selection_bits=read_address&0x700;                             //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
	mov	r4,#0x00
	mov	a,#0x07
	anl	a,r7
;	main.c:264: int page_block=page_selection_bits>>7;
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00494$
	orl	a,#0xfe
00494$:
	mov	r5,a
;	main.c:265: EEPROM_CMD=0xA0|page_block;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
	mov	dptr,#_EEPROM_CMD
	mov	a,#0xa0
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:266: word_address1=internal_address&0x0FF;             //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME
	mov	r7,#0x00
	mov	dptr,#_word_address1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:268: unsigned char x1 = EEPROM_RdByte(word_address1);
	mov	dpl,r6
	mov	dph,r7
	lcall	_EEPROM_RdByte
	mov	r7,dpl
;	main.c:270: printf_tiny("\n\n\n\r The Data Present at the Read Address is %x\n\r",x1);
	mov	r6,#0x00
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
;	main.c:271: break;
	ljmp	00189$
;	main.c:273: case('H'):                                                                  //HEX DUMP OPERATION
00138$:
;	main.c:275: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:276: printf_tiny("\n\r\t\tHEX DUMP\n\r ");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:277: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:278: printf_tiny("\n\rEnter the 3 Digit Starting Address for Hex Dump\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:279: int hex_start_address=getnumber();                                           //ACCEPTING THE HEX DUMP START ADDRESS
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_start_address_327682_108
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:280: while (hex_start_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00139$:
	mov	dptr,#_main_hex_start_address_327682_108
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00146$
	cjne	r7,#0xff,00146$
;	main.c:282: printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:283: printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
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
;	main.c:284: hex_start_address=getnumber();                                          //TAKING THE ADDRESS AGAIN
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_start_address_327682_108
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:286: while(!(hex_start_address>=0 && hex_start_address<=2047))                   //CHECK IF VALUE FALLS IN RANGE
	sjmp	00139$
00146$:
	mov	dptr,#_main_hex_start_address_327682_108
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00147$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00148$
00147$:
;	main.c:288: printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
	mov	dptr,#_main_hex_start_address_327682_108
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:289: printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
	push	ar4
	push	ar5
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:290: hex_start_address=getnumber();                                          //IF NOT TAKE IT AGAIN
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_hex_start_address_327682_108
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:291: if(hex_start_address!='\n' && hex_start_address!='\r')
	cjne	r4,#0x0a,00499$
	cjne	r5,#0x00,00499$
	sjmp	00146$
00499$:
	cjne	r4,#0x0d,00500$
	cjne	r5,#0x00,00500$
	sjmp	00146$
00500$:
;	main.c:292: hex_start_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_start_address_327682_108
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00146$
00148$:
;	main.c:294: printf_tiny ("\n\rHex Dump Starting Address entered is %x.\n\r",hex_start_address);
	push	ar6
	push	ar7
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:296: printf_tiny("\n\rEnter the 3 Digit Ending Address for Hex Dump\n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:298: int hex_end_address=getnumber();                                                //ACCEPTING THE HEX DUMP END ADDRESS
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_end_address_327683_111
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:299: while (hex_end_address==-1)                                                    //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00149$:
	mov	dptr,#_main_hex_end_address_327683_111
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00156$
	cjne	r7,#0xff,00156$
;	main.c:301: printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:302: printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);
	push	ar6
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:304: hex_end_address=getnumber();                                                //TAKING THE ADDRESS AGAIN
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_end_address_327683_111
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:306: while(!(hex_end_address>=0 && hex_end_address<=2047))                           //CHECK IF VALUE FALLS IN RANGE
	sjmp	00149$
00156$:
	mov	dptr,#_main_hex_end_address_327683_111
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00157$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00158$
00157$:
;	main.c:308: printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
	mov	dptr,#_main_hex_end_address_327683_111
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:309: printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);
	push	ar4
	push	ar5
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:310: hex_end_address=getnumber();
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_hex_end_address_327683_111
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:311: if(hex_end_address!='\n' && hex_end_address!='\r')                          //IF NOT, TAKE IT AGAIN
	cjne	r4,#0x0a,00505$
	cjne	r5,#0x00,00505$
	sjmp	00156$
00505$:
	cjne	r4,#0x0d,00506$
	cjne	r5,#0x00,00506$
	sjmp	00156$
00506$:
;	main.c:312: hex_end_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_hex_end_address_327683_111
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00156$
00158$:
;	main.c:314: printf_tiny ("\n\rHex Dump Ending Address entered is %x.\n\r",hex_end_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:316: if(hex_start_address>hex_end_address)                                           //ERROR IF END ADDRESS <START ADDRESS
	mov	dptr,#_main_hex_start_address_327682_108
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00160$
;	main.c:318: printf_tiny("\n\rERROR:  The value of Hex Start Address was less than the Hex End Address\n\r");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00160$:
;	main.c:320: Sequence_read(hex_start_address,hex_end_address);
	mov	dptr,#_main_hex_start_address_327682_108
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_hex_end_address_327683_111
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_Sequence_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_Sequence_read
;	main.c:321: break;
	ljmp	00189$
;	main.c:323: case('P'):                                                              //PAGE WRITE OPERATION
00161$:
;	main.c:325: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:326: printf_tiny("\n\r\t\tPAGE WRITE\n\r ");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:327: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:328: printf_tiny("\n\rEnter the Page Address \n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:329: int page_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_page_address_327682_116
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:331: while (page_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
00162$:
	mov	dptr,#_main_page_address_327682_116
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00169$
	cjne	r7,#0xff,00169$
;	main.c:333: printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:334: printf_tiny ("\n\rEnter a new page starting address\n\r",page_address);
	push	ar6
	push	ar7
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:336: page_address=getnumber();                                           //TAKING THE ADDRESS AGAIN
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_page_address_327682_116
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:338: while(!(page_address>=0 && page_address<=2047))                         //CHECK IF VALUE FALLS IN RANGE
	sjmp	00162$
00169$:
	mov	dptr,#_main_page_address_327682_116
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00170$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00171$
00170$:
;	main.c:340: printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
	mov	dptr,#_main_page_address_327682_116
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:341: printf_tiny ("\n\rEnter a new page address\n\r",page_address);
	push	ar4
	push	ar5
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:342: page_address=getnumber();
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_page_address_327682_116
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:343: if(page_address!='\n' && page_address!='\r')
	cjne	r4,#0x0a,00512$
	cjne	r5,#0x00,00512$
	sjmp	00169$
00512$:
	cjne	r4,#0x0d,00513$
	cjne	r5,#0x00,00513$
	sjmp	00169$
00513$:
;	main.c:344: page_address=getnumber();
	lcall	_getnumber
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_page_address_327682_116
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	ljmp	00169$
00171$:
;	main.c:346: printf_tiny ("\n\rThe value of page address entered is %x.\n\r",page_address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:349: int page_selection_bits3=page_address&0x700;
	mov	r4,#0x00
	mov	a,#0x07
	anl	a,r7
;	main.c:350: page_block3=page_selection_bits3>>7;
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00514$
	orl	a,#0xfe
00514$:
	mov	r5,a
	mov	dptr,#_page_block3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:351: EEPROM_CMD_PAGE=0xA0|page_block3;
	mov	dptr,#_EEPROM_CMD_PAGE
	mov	a,#0xa0
	orl	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:352: word_address3=internal_address3&0x0FF;
	mov	dptr,#_word_address3
	mov	a,r6
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:353: printf_tiny("\n\rEnter the data to page write \n\r");
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:356: data_to_write=getdata();
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_to_write_327684_120
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:357: while (data_to_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
00172$:
	mov	dptr,#_main_data_to_write_327684_120
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xff,00179$
	cjne	r7,#0xff,00179$
;	main.c:359: printf_tiny ("\n\rData Entered is INVALID\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:360: printf_tiny ("\n\rEnter a New Data\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:361: data_to_write=getdata();
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_to_write_327684_120
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:363: while(!(data_to_write>=0 && data_to_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
	sjmp	00172$
00179$:
	mov	dptr,#_main_data_to_write_327684_120
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00180$
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00181$
00180$:
;	main.c:365: printf_tiny ("\n\rData Entered is INVALID\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:366: printf_tiny ("\n\rEnter a New Data\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:367: data_to_write=getdata();
	lcall	_getdata
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_main_data_to_write_327684_120
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:368: if(data_to_write!='\n' && data_to_write!='\r')
	cjne	r4,#0x0a,00519$
	cjne	r5,#0x00,00519$
	sjmp	00179$
00519$:
	cjne	r4,#0x0d,00520$
	cjne	r5,#0x00,00520$
	sjmp	00179$
00520$:
;	main.c:369: data_to_write=getdata();                           //IF NOT TAKE IT AGAIN
	lcall	_getdata
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_main_data_to_write_327684_120
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00179$
00181$:
;	main.c:371: printf ("\n\rData Value to be Written is %x.\n\r",data_to_write);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:372: SDA=HIGH;
;	assignBit
	setb	_P1_5
;	main.c:373: PAGE_Write(word_address3,data_to_write);
	mov	dptr,#_word_address3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_PAGE_Write_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_PAGE_Write
;	main.c:374: break;
	ljmp	00189$
;	main.c:376: case('E'):                                                  //RESET SIGNAL
00182$:
;	main.c:378: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:379: printf_tiny("\n\r\t\t\tRESET I2C\n\r ");
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:380: printf_tiny("\n\r********************************************* \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:381: reset();
	lcall	_reset
;	main.c:382: break;
	ljmp	00189$
;	main.c:384: default:                                                    //INVALID INPUT
00183$:
;	main.c:386: printf("\n\rINVALID INPUT: PLS ENTER THE CORRECT KEY\n\r");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:389: }
;	main.c:392: }
	ljmp	00189$
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_125'
;------------------------------------------------------------
;	main.c:394: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_125
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:396: while (!TI);				// WAIT FOR TX READY
00101$:
	jnb	_TI,00101$
;	main.c:397: SBUF = c;           	// LOAD SERIAL PORT WITH TIMEOUT VALUE
	mov	dptr,#_putchar_c_65536_125
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:398: TI = 0;  	            // CLEAR TI FLAG
;	assignBit
	clr	_TI
;	main.c:399: return 0;
	mov	dptr,#0x0000
;	main.c:400: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:402: int getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:405: while (!RI);                // WAIT FOR RX READY
00101$:
;	main.c:406: RI = 0;			            // CLEAR RI FLAG
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:407: return SBUF;  	            // REYTRUN CHARACTER FROM SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:408: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "~~~~~~~~~~~~~~~~~I2C~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
	.db 0x0a
	.db 0x0d
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
	.ascii "W-Write Byte "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "R-Read Byte "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "H-Hex Dump "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "P-Page Write "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "E-Reset Eeprom "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "Enter The Key"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "********************************************* "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "WRITE BYTE"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 3 Digit Write Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "The Write Address Entered is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "The Address for Write Operation is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 2 Digit Data value to be Written"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Data Entered is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "Data Value to be Written is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "READ BYTE"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 3 Digit Read Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii "Read Address entered is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Read Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "The Read Byte Address is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii " The Data Present at the Read Address is %x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "HEX DUMP"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 3 Digit Starting Address for Hex Dump"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "Hex Dump Starting Address is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Hex Dump Starting Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "Hex Dump Starting Address entered is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the 3 Digit Ending Address for Hex Dump"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "Hex Dump Ending Address is INVALID"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a New Hex Dump Ending Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.ascii "Hex Dump Ending Address entered is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x0a
	.db 0x0d
	.ascii "ERROR:  The value of Hex Start Address was less than the Hex"
	.ascii " End Address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.ascii "PAGE WRITE"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the Page Address "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.ascii "The value of page address entered is invalid"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a new page starting address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a new page address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0d
	.ascii "The value of page address entered is %x."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the data to page write "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0a
	.db 0x0d
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "RESET I2C"
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.db 0x0d
	.ascii "INVALID INPUT: PLS ENTER THE CORRECT KEY"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__EEPROM_CMD:
	.byte #0x00, #0x00	;  0
__xinit__EEPROM_CMD_PAGE:
	.byte #0x00, #0x00	;  0
__xinit__word_address:
	.byte #0x00, #0x00	; 0
__xinit__word_address1:
	.byte #0x00, #0x00	; 0
__xinit__word_address2:
	.byte #0x00, #0x00	; 0
__xinit__word_address3:
	.byte #0x00, #0x00	; 0
__xinit__page_block1:
	.byte #0x00, #0x00	;  0
__xinit__page_block2:
	.byte #0x00, #0x00	;  0
__xinit__page_block3:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
