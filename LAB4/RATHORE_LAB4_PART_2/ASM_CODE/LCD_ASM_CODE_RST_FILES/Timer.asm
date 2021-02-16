;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module Timer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lcdbusywait
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
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
	.globl _hours
	.globl _minu
	.globl _minutes
	.globl _seconds
	.globl _second_value
	.globl _mili_value
	.globl _mili
	.globl _DisplayTimeToLCD_PARM_4
	.globl _DisplayTimeToLCD_PARM_3
	.globl _DisplayTimeToLCD_PARM_2
	.globl _data_register_read
	.globl _busy_flag_read
	.globl _data_register_write
	.globl _instruction_reg_write
	.globl _InitTimer0
	.globl _Timer0_ISR
	.globl _timer
	.globl _DisplayTimeToLCD
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
_timer_sloc0_1_0:
	.ds 2
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
_instruction_reg_write	=	0xf000
_data_register_write	=	0xf100
_busy_flag_read	=	0xf200
_data_register_read	=	0xf300
_DisplayTimeToLCD_PARM_2:
	.ds 2
_DisplayTimeToLCD_PARM_3:
	.ds 2
_DisplayTimeToLCD_PARM_4:
	.ds 2
_DisplayTimeToLCD_h_65536_56:
	.ds 2
_DisplayTimeToLCD_time_value_131072_58:
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mili::
	.ds 4
_mili_value::
	.ds 4
_second_value::
	.ds 4
_seconds::
	.ds 4
_minutes::
	.ds 4
_minu::
	.ds 4
_hours::
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
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	Timer.c:26: void InitTimer0(void)
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Timer.c:28: TMOD |= 0x01;                                                  /// Timer 0 Mode 1
	orl	_TMOD,#0x01
;	Timer.c:29: TH0=0x4B;
	mov	_TH0,#0x4b
;	Timer.c:30: TL0=0xFD;                                                      ///LOADING VALUE FOR 50 MS INTERRUPT TRIGGER
	mov	_TL0,#0xfd
;	Timer.c:31: ET0=1;
;	assignBit
	setb	_ET0
;	Timer.c:32: EA=1;                                                        ///ENABLING INTERRUPT
;	assignBit
	setb	_EA
;	Timer.c:33: TR0=1;
;	assignBit
	setb	_TR0
;	Timer.c:34: if (input=='S')                                             ///STOP THE TIMER
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x53,00104$
;	Timer.c:35: TR0=0;
;	assignBit
	clr	_TR0
	ret
00104$:
;	Timer.c:36: else if(input=='R')                                         ///START THE TIMER AGAIN
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x52,00106$
;	Timer.c:37: TR0 = 1;
;	assignBit
	setb	_TR0
00106$:
;	Timer.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	Timer.c:41: void Timer0_ISR (void) __interrupt 1                            /// It is called after every 50 msec
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	Timer.c:43: EA=0;
;	assignBit
	clr	_EA
;	Timer.c:44: (P1_2)=(P1_2)^1;
	cpl	_P1_2
;	Timer.c:45: mili=mili+5;                                                ///increment the mili value for each interrupt trigger to calculate the clock
	mov	dptr,#_mili
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mili
	mov	a,#0x05
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:46: TH0=0x4B;
	mov	_TH0,#0x4b
;	Timer.c:47: TL0=0xFD;
	mov	_TL0,#0xfd
;	Timer.c:48: TF0 = 0;                                                        /// Clear the interrupt flag
;	assignBit
	clr	_TF0
;	Timer.c:49: EA=1;
;	assignBit
	setb	_EA
;	Timer.c:50: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_timer_sloc0_1_0'
;------------------------------------------------------------
;	Timer.c:52: void timer()
;	-----------------------------------------
;	 function timer
;	-----------------------------------------
_timer:
;	Timer.c:54: mili_value=mili%100;
	mov	dptr,#_mili
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_mili_value
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:55: second_value=mili/100;
	mov	dptr,#_mili
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_second_value
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:56: seconds=second_value%60;                           ///printing the timer value form the start of program
	mov	dptr,#_second_value
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_seconds
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:57: minutes=second_value/60;
	mov	dptr,#_second_value
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_minutes
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:58: if (seconds>59)
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x3b
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
;	Timer.c:59: minutes++;                                    ///timer clock calculation performed by taking mod and divide operation
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_minutes
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	Timer.c:60: minu=minutes%60;                                    ///1 min=60 sec    1hour=60 min    1 sec=1000 mili seconds
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_minu
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:61: hours=minutes/60;
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	dptr,#_hours
	mov	a,r4
	movx	@dptr,a
;	Timer.c:62: DisplayTimeToLCD(hours,minutes,seconds,mili_value);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	_timer_sloc0_1_0,r0
	mov	(_timer_sloc0_1_0 + 1),r1
	mov	dptr,#_mili_value
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_DisplayTimeToLCD_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_DisplayTimeToLCD_PARM_3
	mov	a,_timer_sloc0_1_0
	movx	@dptr,a
	mov	a,(_timer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_DisplayTimeToLCD_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
;	Timer.c:63: }
	ljmp	_DisplayTimeToLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'DisplayTimeToLCD'
;------------------------------------------------------------
;m                         Allocated with name '_DisplayTimeToLCD_PARM_2'
;s                         Allocated with name '_DisplayTimeToLCD_PARM_3'
;mil                       Allocated with name '_DisplayTimeToLCD_PARM_4'
;h                         Allocated with name '_DisplayTimeToLCD_h_65536_56'
;i                         Allocated with name '_DisplayTimeToLCD_i_131072_58'
;time_value                Allocated with name '_DisplayTimeToLCD_time_value_131072_58'
;------------------------------------------------------------
;	Timer.c:66: void DisplayTimeToLCD( unsigned int h, unsigned int m, unsigned int s,unsigned int mil )   /// Displays time in HH:MM:SS.mili format
;	-----------------------------------------
;	 function DisplayTimeToLCD
;	-----------------------------------------
_DisplayTimeToLCD:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_DisplayTimeToLCD_h_65536_56
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Timer.c:68: if (input!='S')
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x53,00121$
	ret
00121$:
;	Timer.c:71: char time_value[10]= {'0',':','0','0',':','0','0','.','0'};
	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0001)
	mov	a,#0x3a
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0002)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0004)
	mov	a,#0x3a
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0005)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0007)
	mov	a,#0x2e
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0008)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0009)
	clr	a
	movx	@dptr,a
;	Timer.c:72: time_value[0]=(h%10)+48;
	mov	dptr,#_DisplayTimeToLCD_h_65536_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
	movx	@dptr,a
;	Timer.c:73: time_value[1]=':';
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0001)
	mov	a,#0x3a
	movx	@dptr,a
;	Timer.c:74: time_value[2]=(m/10)+48;                           ///taking the ascii value of the clock and printing in the values of clock on lcd
	mov	dptr,#_DisplayTimeToLCD_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r4
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0002)
	movx	@dptr,a
;	Timer.c:75: time_value[3]=(m%10)+48;
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0003)
	movx	@dptr,a
;	Timer.c:76: time_value[4]=':';
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0004)
	mov	a,#0x3a
	movx	@dptr,a
;	Timer.c:77: time_value[5]=(s/10)+48;
	mov	dptr,#_DisplayTimeToLCD_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r4
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0005)
	movx	@dptr,a
;	Timer.c:78: time_value[6]=(s%10)+48;
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0006)
	movx	@dptr,a
;	Timer.c:79: time_value[7]='.';
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0007)
	mov	a,#0x2e
	movx	@dptr,a
;	Timer.c:80: time_value[8]=(mil/10)+48;
	mov	dptr,#_DisplayTimeToLCD_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0008)
	movx	@dptr,a
;	Timer.c:81: time_value[9]='\0';
	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0009)
	clr	a
	movx	@dptr,a
;	Timer.c:83: lcdgotoxy(0,6);                                   ///go to a particular location to print time
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_lcdgotoxy
;	Timer.c:84: lcdbusywait();
	lcall	_lcdbusywait
;	Timer.c:85: lcdputstr(time_value);                           ///print time at that location
	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
	mov	b,#0x00
	lcall	_lcdputstr
;	Timer.c:86: lcdbusywait();
	lcall	_lcdbusywait
;	Timer.c:87: if(input=='W')                                   ///if input is to write character , print character value at that location
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x57,00102$
;	Timer.c:89: lcdgotoaddr(address1);
	mov	dptr,#_address1
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	Timer.c:90: lcdputch(ch);
	mov	dptr,#_ch
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
00102$:
;	Timer.c:92: if(input=='P')                              ///if input is to write string , print string value at that location
	mov	dptr,#_input
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x50,00107$
;	Timer.c:94: lcdgotoxy(row2,column2);
	mov	dptr,#_row2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_column2
	movx	a,@dptr
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	lcall	_lcdgotoxy
;	Timer.c:95: lcdputstr(string);
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
;	Timer.c:98: }
	ljmp	_lcdputstr
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__mili:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__mili_value:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__second_value:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__seconds:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__minutes:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__minu:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__hours:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
