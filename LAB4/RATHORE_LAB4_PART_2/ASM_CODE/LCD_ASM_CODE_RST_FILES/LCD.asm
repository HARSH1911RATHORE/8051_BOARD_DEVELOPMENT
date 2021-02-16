;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module LCD
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _column
	.globl _row
	.globl _count
	.globl _input
	.globl _address1
	.globl _string
	.globl _column2
	.globl _row2
	.globl _ch
	.globl _lcdgotoxy_PARM_2
	.globl _data_register_read
	.globl _busy_flag_read
	.globl _data_register_write
	.globl _instruction_reg_write
	.globl _delay
	.globl _lcdbusywait
	.globl _lcdinit
	.globl _lcd_clear_screen
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
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
	.area	OSEG    (OVR,DATA)
_delay_sloc0_1_0:
	.ds 4
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
_delay_n_65536_51:
	.ds 4
_lcdgotoaddr_addr_65536_61:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_rows_65536_63:
	.ds 1
_lcdgotoxy_address_65537_65:
	.ds 2
_lcdputch_cc_65536_66:
	.ds 1
_lcdputstr_string_65536_68:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_ch::
	.ds 1
_row2::
	.ds 1
_column2::
	.ds 1
_string::
	.ds 3
_address1::
	.ds 1
_input::
	.ds 1
_count::
	.ds 1
_row::
	.ds 1
_column::
	.ds 1
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated with name '_delay_n_65536_51'
;i                         Allocated with name '_delay_i_65536_52'
;j                         Allocated with name '_delay_j_65536_52'
;sloc0                     Allocated with name '_delay_sloc0_1_0'
;------------------------------------------------------------
;	LCD.c:34: void delay(uint32_t n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_delay_n_65536_51
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	LCD.c:38: for(i=0; i<n; i++)
	mov	dptr,#_delay_n_65536_51
	movx	a,@dptr
	mov	_delay_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_sloc0_1_0 + 3),a
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,_delay_sloc0_1_0
	mov	a,r1
	subb	a,(_delay_sloc0_1_0 + 1)
	mov	a,r6
	subb	a,(_delay_sloc0_1_0 + 2)
	mov	a,r7
	subb	a,(_delay_sloc0_1_0 + 3)
	jnc	00109$
;	LCD.c:40: for(j=0; j<1275; j++)
	mov	r6,#0xfb
	mov	r7,#0x04
00105$:
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	mov	a,r6
	orl	a,r7
	jnz	00105$
;	LCD.c:38: for(i=0; i<n; i++)
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
	sjmp	00107$
00109$:
;	LCD.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	LCD.c:47: void lcdbusywait()
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	LCD.c:49: while(busy_flag_read&0x80);                               ///checking for the busy flag, if it is 1
00101$:
	mov	dptr,#_busy_flag_read
	movx	a,@dptr
	jb	acc.7,00101$
;	LCD.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	LCD.c:52: void lcdinit(void)
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	LCD.c:54: delay(15);                                    ///15ms delay
	mov	dptr,#(0x0f&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	LCD.c:55: instruction_reg_write = unlock;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:57: delay(4);                                    ///4.1ms delay
	mov	dptr,#(0x04&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	LCD.c:58: instruction_reg_write = unlock;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:60: delay(1);                                   ///100uS delay
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	LCD.c:61: instruction_reg_write = unlock;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x30
	movx	@dptr,a
;	LCD.c:63: lcdbusywait();                                  /// wait for busy flag to clear
	lcall	_lcdbusywait
;	LCD.c:65: instruction_reg_write = Function_set;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x38
	movx	@dptr,a
;	LCD.c:67: lcdbusywait();                                  /// wait for busy flag to clear
	lcall	_lcdbusywait
;	LCD.c:69: instruction_reg_write = display_off;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x08
	movx	@dptr,a
;	LCD.c:71: lcdbusywait();                                    /// wait for busy flag to clear
	lcall	_lcdbusywait
;	LCD.c:73: instruction_reg_write = display_on;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x0e
	movx	@dptr,a
;	LCD.c:75: lcdbusywait();                                  /// wait for busy flag to clear
	lcall	_lcdbusywait
;	LCD.c:77: instruction_reg_write = entrymode_set;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x06
	movx	@dptr,a
;	LCD.c:79: lcdbusywait();                                  /// wait for busy flag to clear
	lcall	_lcdbusywait
;	LCD.c:81: instruction_reg_write = clearscreen;
	mov	dptr,#_instruction_reg_write
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear_screen'
;------------------------------------------------------------
;	LCD.c:84: void lcd_clear_screen()
;	-----------------------------------------
;	 function lcd_clear_screen
;	-----------------------------------------
_lcd_clear_screen:
;	LCD.c:86: instruction_reg_write = clearscreen;         ///function to clear the lcd screen
	mov	dptr,#_instruction_reg_write
	mov	a,#0x01
	movx	@dptr,a
;	LCD.c:87: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddr_addr_65536_61'
;------------------------------------------------------------
;	LCD.c:88: void lcdgotoaddr(uint8_t addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_65536_61
	movx	@dptr,a
;	LCD.c:90: instruction_reg_write = addr;               ///function to write to the lcd ddram address
	movx	a,@dptr
	mov	dptr,#_instruction_reg_write
	movx	@dptr,a
;	LCD.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;columns                   Allocated with name '_lcdgotoxy_PARM_2'
;rows                      Allocated with name '_lcdgotoxy_rows_65536_63'
;address                   Allocated with name '_lcdgotoxy_address_65537_65'
;a                         Allocated with name '_lcdgotoxy_a_65537_65'
;b                         Allocated with name '_lcdgotoxy_b_65537_65'
;c                         Allocated with name '_lcdgotoxy_c_65537_65'
;d                         Allocated with name '_lcdgotoxy_d_65537_65'
;------------------------------------------------------------
;	LCD.c:93: void lcdgotoxy(uint8_t rows, uint8_t columns)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_rows_65536_63
	movx	@dptr,a
;	LCD.c:95: row=rows;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_row
	movx	@dptr,a
;	LCD.c:96: column=columns;
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_column
	movx	@dptr,a
;	LCD.c:97: int address=0;                           ///function to specify the required location to go to specified by the row and column
	mov	dptr,#_lcdgotoxy_address_65537_65
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	LCD.c:103: if (rows==0)
	mov	a,r7
;	LCD.c:104: address=a+columns;                  ///increment the value of the address of each row and column address as specified as row and column values
	jnz	00102$
	mov	ar5,r6
	mov	r7,a
	mov	dptr,#_lcdgotoxy_address_65537_65
	mov	a,#0x80
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	LCD.c:105: if (rows==1)                            ///for the address
	mov	dptr,#_lcdgotoxy_rows_65536_63
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
;	LCD.c:106: address=b+columns;
	mov	ar5,r6
	mov	r7,#0x00
	mov	dptr,#_lcdgotoxy_address_65537_65
	mov	a,#0xc0
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00104$:
;	LCD.c:107: if (rows==2)
	mov	dptr,#_lcdgotoxy_rows_65536_63
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00106$
;	LCD.c:108: address=c+columns;
	mov	ar5,r6
	mov	r7,#0x00
	mov	dptr,#_lcdgotoxy_address_65537_65
	mov	a,#0x90
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	LCD.c:109: if (rows==3)
	mov	dptr,#_lcdgotoxy_rows_65536_63
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00108$
;	LCD.c:110: address=d+columns;
	mov	r7,#0x00
	mov	dptr,#_lcdgotoxy_address_65537_65
	mov	a,#0xd0
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00108$:
;	LCD.c:111: lcdgotoaddr(address);                ///using lcd go to address to go to a required location
	mov	dptr,#_lcdgotoxy_address_65537_65
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
;	LCD.c:112: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_65536_66'
;------------------------------------------------------------
;	LCD.c:114: void lcdputch(char cc)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_65536_66
	movx	@dptr,a
;	LCD.c:116: data_register_write=cc;            ///putting character on the lcd display at the desired location
	movx	a,@dptr
	mov	dptr,#_data_register_write
	movx	@dptr,a
;	LCD.c:117: lcdbusywait();
	lcall	_lcdbusywait
;	LCD.c:118: delay(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
;	LCD.c:120: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;string                    Allocated with name '_lcdputstr_string_65536_68'
;------------------------------------------------------------
;	LCD.c:121: void lcdputstr(char *string)
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_string_65536_68
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:123: count=column;
	mov	dptr,#_column
	movx	a,@dptr
	mov	dptr,#_count
	movx	@dptr,a
;	LCD.c:124: while(*string!='\0' && (*string!='\n' && *string!='\r'))             ///till string ends keep putting characters on lcd
	mov	dptr,#_lcdputstr_string_65536_68
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00108$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00138$
	ljmp	00119$
00138$:
	cjne	r4,#0x0a,00139$
	ljmp	00119$
00139$:
	cjne	r4,#0x0d,00140$
	ljmp	00119$
00140$:
;	LCD.c:126: lcdputch(*string++);            ///send characters one by one
	inc	r5
	cjne	r5,#0x00,00141$
	inc	r6
00141$:
	mov	dptr,#_lcdputstr_string_65536_68
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:128: count++;
	mov	dptr,#_count
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	LCD.c:129: if (count==16)                ///check the count of the characters
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x10,00108$
;	LCD.c:131: row=row+1;
	mov	dptr,#_row
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	LCD.c:132: count=0;
	mov	dptr,#_count
	clr	a
	movx	@dptr,a
;	LCD.c:133: if(row==4)                ///if column value is 16 goto the next line and to the next row
	mov	dptr,#_row
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00102$
;	LCD.c:135: lcdgotoxy(0,0);
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoxy
	pop	ar5
	pop	ar6
	pop	ar7
;	LCD.c:136: row=0;
	mov	dptr,#_row
	clr	a
	movx	@dptr,a
	ljmp	00108$
00102$:
;	LCD.c:141: lcdgotoxy(row,0);    ///if reached the last column and last row, jump to the first location
	mov	dptr,#_row
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_lcdgotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoxy
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00108$
00119$:
	mov	dptr,#_lcdputstr_string_65536_68
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	LCD.c:145: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__ch:
	.db #0x00	; 0
__xinit__row2:
	.db #0x00	;  0
__xinit__column2:
	.db #0x00	;  0
__xinit__string:
	.byte #0x00,#0x00,#0x00
__xinit__address1:
	.db #0x00	;  0
__xinit__input:
	.db #0x00	; 0
__xinit__count:
	.db #0x00	; 0
__xinit__row:
	.db #0x00	; 0
__xinit__column:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
