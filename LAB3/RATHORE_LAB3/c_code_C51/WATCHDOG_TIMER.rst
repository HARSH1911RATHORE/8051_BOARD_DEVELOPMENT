                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _printf_tiny
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _P5_7
                                     89 	.globl _P5_6
                                     90 	.globl _P5_5
                                     91 	.globl _P5_4
                                     92 	.globl _P5_3
                                     93 	.globl _P5_2
                                     94 	.globl _P5_1
                                     95 	.globl _P5_0
                                     96 	.globl _P4_7
                                     97 	.globl _P4_6
                                     98 	.globl _P4_5
                                     99 	.globl _P4_4
                                    100 	.globl _P4_3
                                    101 	.globl _P4_2
                                    102 	.globl _P4_1
                                    103 	.globl _P4_0
                                    104 	.globl _PX0L
                                    105 	.globl _PT0L
                                    106 	.globl _PX1L
                                    107 	.globl _PT1L
                                    108 	.globl _PSL
                                    109 	.globl _PT2L
                                    110 	.globl _PPCL
                                    111 	.globl _EC
                                    112 	.globl _CCF0
                                    113 	.globl _CCF1
                                    114 	.globl _CCF2
                                    115 	.globl _CCF3
                                    116 	.globl _CCF4
                                    117 	.globl _CR
                                    118 	.globl _CF
                                    119 	.globl _TF2
                                    120 	.globl _EXF2
                                    121 	.globl _RCLK
                                    122 	.globl _TCLK
                                    123 	.globl _EXEN2
                                    124 	.globl _TR2
                                    125 	.globl _C_T2
                                    126 	.globl _CP_RL2
                                    127 	.globl _T2CON_7
                                    128 	.globl _T2CON_6
                                    129 	.globl _T2CON_5
                                    130 	.globl _T2CON_4
                                    131 	.globl _T2CON_3
                                    132 	.globl _T2CON_2
                                    133 	.globl _T2CON_1
                                    134 	.globl _T2CON_0
                                    135 	.globl _PT2
                                    136 	.globl _ET2
                                    137 	.globl _B
                                    138 	.globl _ACC
                                    139 	.globl _PSW
                                    140 	.globl _IP
                                    141 	.globl _P3
                                    142 	.globl _IE
                                    143 	.globl _P2
                                    144 	.globl _SBUF
                                    145 	.globl _SCON
                                    146 	.globl _P1
                                    147 	.globl _TH1
                                    148 	.globl _TH0
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TMOD
                                    152 	.globl _TCON
                                    153 	.globl _PCON
                                    154 	.globl _DPH
                                    155 	.globl _DPL
                                    156 	.globl _SP
                                    157 	.globl _P0
                                    158 	.globl _EECON
                                    159 	.globl _KBF
                                    160 	.globl _KBE
                                    161 	.globl _KBLS
                                    162 	.globl _BRL
                                    163 	.globl _BDRCON
                                    164 	.globl _T2MOD
                                    165 	.globl _SPDAT
                                    166 	.globl _SPSTA
                                    167 	.globl _SPCON
                                    168 	.globl _SADEN
                                    169 	.globl _SADDR
                                    170 	.globl _WDTPRG
                                    171 	.globl _WDTRST
                                    172 	.globl _P5
                                    173 	.globl _P4
                                    174 	.globl _IPH1
                                    175 	.globl _IPL1
                                    176 	.globl _IPH0
                                    177 	.globl _IPL0
                                    178 	.globl _IEN1
                                    179 	.globl _IEN0
                                    180 	.globl _CMOD
                                    181 	.globl _CL
                                    182 	.globl _CH
                                    183 	.globl _CCON
                                    184 	.globl _CCAPM4
                                    185 	.globl _CCAPM3
                                    186 	.globl _CCAPM2
                                    187 	.globl _CCAPM1
                                    188 	.globl _CCAPM0
                                    189 	.globl _CCAP4L
                                    190 	.globl _CCAP3L
                                    191 	.globl _CCAP2L
                                    192 	.globl _CCAP1L
                                    193 	.globl _CCAP0L
                                    194 	.globl _CCAP4H
                                    195 	.globl _CCAP3H
                                    196 	.globl _CCAP2H
                                    197 	.globl _CCAP1H
                                    198 	.globl _CCAP0H
                                    199 	.globl _CKCON1
                                    200 	.globl _CKCON0
                                    201 	.globl _CKRL
                                    202 	.globl _AUXR1
                                    203 	.globl _AUXR
                                    204 	.globl _TH2
                                    205 	.globl _TL2
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _T2CON
                                    209 	.globl _delay
                                    210 	.globl _refresh_WDT
                                    211 	.globl _putchar
                                    212 	.globl _getchar
                                    213 ;--------------------------------------------------------
                                    214 ; special function registers
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           0000C8   218 _T2CON	=	0x00c8
                           0000CA   219 _RCAP2L	=	0x00ca
                           0000CB   220 _RCAP2H	=	0x00cb
                           0000CC   221 _TL2	=	0x00cc
                           0000CD   222 _TH2	=	0x00cd
                           00008E   223 _AUXR	=	0x008e
                           0000A2   224 _AUXR1	=	0x00a2
                           000097   225 _CKRL	=	0x0097
                           00008F   226 _CKCON0	=	0x008f
                           0000AF   227 _CKCON1	=	0x00af
                           0000FA   228 _CCAP0H	=	0x00fa
                           0000FB   229 _CCAP1H	=	0x00fb
                           0000FC   230 _CCAP2H	=	0x00fc
                           0000FD   231 _CCAP3H	=	0x00fd
                           0000FE   232 _CCAP4H	=	0x00fe
                           0000EA   233 _CCAP0L	=	0x00ea
                           0000EB   234 _CCAP1L	=	0x00eb
                           0000EC   235 _CCAP2L	=	0x00ec
                           0000ED   236 _CCAP3L	=	0x00ed
                           0000EE   237 _CCAP4L	=	0x00ee
                           0000DA   238 _CCAPM0	=	0x00da
                           0000DB   239 _CCAPM1	=	0x00db
                           0000DC   240 _CCAPM2	=	0x00dc
                           0000DD   241 _CCAPM3	=	0x00dd
                           0000DE   242 _CCAPM4	=	0x00de
                           0000D8   243 _CCON	=	0x00d8
                           0000F9   244 _CH	=	0x00f9
                           0000E9   245 _CL	=	0x00e9
                           0000D9   246 _CMOD	=	0x00d9
                           0000A8   247 _IEN0	=	0x00a8
                           0000B1   248 _IEN1	=	0x00b1
                           0000B8   249 _IPL0	=	0x00b8
                           0000B7   250 _IPH0	=	0x00b7
                           0000B2   251 _IPL1	=	0x00b2
                           0000B3   252 _IPH1	=	0x00b3
                           0000C0   253 _P4	=	0x00c0
                           0000E8   254 _P5	=	0x00e8
                           0000A6   255 _WDTRST	=	0x00a6
                           0000A7   256 _WDTPRG	=	0x00a7
                           0000A9   257 _SADDR	=	0x00a9
                           0000B9   258 _SADEN	=	0x00b9
                           0000C3   259 _SPCON	=	0x00c3
                           0000C4   260 _SPSTA	=	0x00c4
                           0000C5   261 _SPDAT	=	0x00c5
                           0000C9   262 _T2MOD	=	0x00c9
                           00009B   263 _BDRCON	=	0x009b
                           00009A   264 _BRL	=	0x009a
                           00009C   265 _KBLS	=	0x009c
                           00009D   266 _KBE	=	0x009d
                           00009E   267 _KBF	=	0x009e
                           0000D2   268 _EECON	=	0x00d2
                           000080   269 _P0	=	0x0080
                           000081   270 _SP	=	0x0081
                           000082   271 _DPL	=	0x0082
                           000083   272 _DPH	=	0x0083
                           000087   273 _PCON	=	0x0087
                           000088   274 _TCON	=	0x0088
                           000089   275 _TMOD	=	0x0089
                           00008A   276 _TL0	=	0x008a
                           00008B   277 _TL1	=	0x008b
                           00008C   278 _TH0	=	0x008c
                           00008D   279 _TH1	=	0x008d
                           000090   280 _P1	=	0x0090
                           000098   281 _SCON	=	0x0098
                           000099   282 _SBUF	=	0x0099
                           0000A0   283 _P2	=	0x00a0
                           0000A8   284 _IE	=	0x00a8
                           0000B0   285 _P3	=	0x00b0
                           0000B8   286 _IP	=	0x00b8
                           0000D0   287 _PSW	=	0x00d0
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                                    290 ;--------------------------------------------------------
                                    291 ; special function bits
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           0000AD   295 _ET2	=	0x00ad
                           0000BD   296 _PT2	=	0x00bd
                           0000C8   297 _T2CON_0	=	0x00c8
                           0000C9   298 _T2CON_1	=	0x00c9
                           0000CA   299 _T2CON_2	=	0x00ca
                           0000CB   300 _T2CON_3	=	0x00cb
                           0000CC   301 _T2CON_4	=	0x00cc
                           0000CD   302 _T2CON_5	=	0x00cd
                           0000CE   303 _T2CON_6	=	0x00ce
                           0000CF   304 _T2CON_7	=	0x00cf
                           0000C8   305 _CP_RL2	=	0x00c8
                           0000C9   306 _C_T2	=	0x00c9
                           0000CA   307 _TR2	=	0x00ca
                           0000CB   308 _EXEN2	=	0x00cb
                           0000CC   309 _TCLK	=	0x00cc
                           0000CD   310 _RCLK	=	0x00cd
                           0000CE   311 _EXF2	=	0x00ce
                           0000CF   312 _TF2	=	0x00cf
                           0000DF   313 _CF	=	0x00df
                           0000DE   314 _CR	=	0x00de
                           0000DC   315 _CCF4	=	0x00dc
                           0000DB   316 _CCF3	=	0x00db
                           0000DA   317 _CCF2	=	0x00da
                           0000D9   318 _CCF1	=	0x00d9
                           0000D8   319 _CCF0	=	0x00d8
                           0000AE   320 _EC	=	0x00ae
                           0000BE   321 _PPCL	=	0x00be
                           0000BD   322 _PT2L	=	0x00bd
                           0000BC   323 _PSL	=	0x00bc
                           0000BB   324 _PT1L	=	0x00bb
                           0000BA   325 _PX1L	=	0x00ba
                           0000B9   326 _PT0L	=	0x00b9
                           0000B8   327 _PX0L	=	0x00b8
                           0000C0   328 _P4_0	=	0x00c0
                           0000C1   329 _P4_1	=	0x00c1
                           0000C2   330 _P4_2	=	0x00c2
                           0000C3   331 _P4_3	=	0x00c3
                           0000C4   332 _P4_4	=	0x00c4
                           0000C5   333 _P4_5	=	0x00c5
                           0000C6   334 _P4_6	=	0x00c6
                           0000C7   335 _P4_7	=	0x00c7
                           0000E8   336 _P5_0	=	0x00e8
                           0000E9   337 _P5_1	=	0x00e9
                           0000EA   338 _P5_2	=	0x00ea
                           0000EB   339 _P5_3	=	0x00eb
                           0000EC   340 _P5_4	=	0x00ec
                           0000ED   341 _P5_5	=	0x00ed
                           0000EE   342 _P5_6	=	0x00ee
                           0000EF   343 _P5_7	=	0x00ef
                           000080   344 _P0_0	=	0x0080
                           000081   345 _P0_1	=	0x0081
                           000082   346 _P0_2	=	0x0082
                           000083   347 _P0_3	=	0x0083
                           000084   348 _P0_4	=	0x0084
                           000085   349 _P0_5	=	0x0085
                           000086   350 _P0_6	=	0x0086
                           000087   351 _P0_7	=	0x0087
                           000088   352 _IT0	=	0x0088
                           000089   353 _IE0	=	0x0089
                           00008A   354 _IT1	=	0x008a
                           00008B   355 _IE1	=	0x008b
                           00008C   356 _TR0	=	0x008c
                           00008D   357 _TF0	=	0x008d
                           00008E   358 _TR1	=	0x008e
                           00008F   359 _TF1	=	0x008f
                           000090   360 _P1_0	=	0x0090
                           000091   361 _P1_1	=	0x0091
                           000092   362 _P1_2	=	0x0092
                           000093   363 _P1_3	=	0x0093
                           000094   364 _P1_4	=	0x0094
                           000095   365 _P1_5	=	0x0095
                           000096   366 _P1_6	=	0x0096
                           000097   367 _P1_7	=	0x0097
                           000098   368 _RI	=	0x0098
                           000099   369 _TI	=	0x0099
                           00009A   370 _RB8	=	0x009a
                           00009B   371 _TB8	=	0x009b
                           00009C   372 _REN	=	0x009c
                           00009D   373 _SM2	=	0x009d
                           00009E   374 _SM1	=	0x009e
                           00009F   375 _SM0	=	0x009f
                           0000A0   376 _P2_0	=	0x00a0
                           0000A1   377 _P2_1	=	0x00a1
                           0000A2   378 _P2_2	=	0x00a2
                           0000A3   379 _P2_3	=	0x00a3
                           0000A4   380 _P2_4	=	0x00a4
                           0000A5   381 _P2_5	=	0x00a5
                           0000A6   382 _P2_6	=	0x00a6
                           0000A7   383 _P2_7	=	0x00a7
                           0000A8   384 _EX0	=	0x00a8
                           0000A9   385 _ET0	=	0x00a9
                           0000AA   386 _EX1	=	0x00aa
                           0000AB   387 _ET1	=	0x00ab
                           0000AC   388 _ES	=	0x00ac
                           0000AF   389 _EA	=	0x00af
                           0000B0   390 _P3_0	=	0x00b0
                           0000B1   391 _P3_1	=	0x00b1
                           0000B2   392 _P3_2	=	0x00b2
                           0000B3   393 _P3_3	=	0x00b3
                           0000B4   394 _P3_4	=	0x00b4
                           0000B5   395 _P3_5	=	0x00b5
                           0000B6   396 _P3_6	=	0x00b6
                           0000B7   397 _P3_7	=	0x00b7
                           0000B0   398 _RXD	=	0x00b0
                           0000B1   399 _TXD	=	0x00b1
                           0000B2   400 _INT0	=	0x00b2
                           0000B3   401 _INT1	=	0x00b3
                           0000B4   402 _T0	=	0x00b4
                           0000B5   403 _T1	=	0x00b5
                           0000B6   404 _WR	=	0x00b6
                           0000B7   405 _RD	=	0x00b7
                           0000B8   406 _PX0	=	0x00b8
                           0000B9   407 _PT0	=	0x00b9
                           0000BA   408 _PX1	=	0x00ba
                           0000BB   409 _PT1	=	0x00bb
                           0000BC   410 _PS	=	0x00bc
                           0000D0   411 _P	=	0x00d0
                           0000D1   412 _F1	=	0x00d1
                           0000D2   413 _OV	=	0x00d2
                           0000D3   414 _RS0	=	0x00d3
                           0000D4   415 _RS1	=	0x00d4
                           0000D5   416 _F0	=	0x00d5
                           0000D6   417 _AC	=	0x00d6
                           0000D7   418 _CY	=	0x00d7
                                    419 ;--------------------------------------------------------
                                    420 ; overlayable register banks
                                    421 ;--------------------------------------------------------
                                    422 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        423 	.ds 8
                                    424 ;--------------------------------------------------------
                                    425 ; internal ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area DSEG    (DATA)
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable items in internal ram 
                                    430 ;--------------------------------------------------------
                                    431 ;--------------------------------------------------------
                                    432 ; Stack segment in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 	.area	SSEG
      000009                        435 __start__stack:
      000009                        436 	.ds	1
                                    437 
                                    438 ;--------------------------------------------------------
                                    439 ; indirectly addressable internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area ISEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; absolute internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area IABS    (ABS,DATA)
                                    446 	.area IABS    (ABS,DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; bit data
                                    449 ;--------------------------------------------------------
                                    450 	.area BSEG    (BIT)
                                    451 ;--------------------------------------------------------
                                    452 ; paged external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area PSEG    (PAG,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XSEG    (XDATA)
      000001                        459 _putchar_c_65536_20:
      000001                        460 	.ds 2
                                    461 ;--------------------------------------------------------
                                    462 ; absolute external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XABS    (ABS,XDATA)
                                    465 ;--------------------------------------------------------
                                    466 ; external initialized ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XISEG   (XDATA)
                                    469 	.area HOME    (CODE)
                                    470 	.area GSINIT0 (CODE)
                                    471 	.area GSINIT1 (CODE)
                                    472 	.area GSINIT2 (CODE)
                                    473 	.area GSINIT3 (CODE)
                                    474 	.area GSINIT4 (CODE)
                                    475 	.area GSINIT5 (CODE)
                                    476 	.area GSINIT  (CODE)
                                    477 	.area GSFINAL (CODE)
                                    478 	.area CSEG    (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; interrupt vector 
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
      003000                        483 __interrupt_vect:
      003000 02 30 06         [24]  484 	ljmp	__sdcc_gsinit_startup
                                    485 ;--------------------------------------------------------
                                    486 ; global & static initialisations
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 	.area GSFINAL (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.globl __sdcc_gsinit_startup
                                    493 	.globl __sdcc_program_startup
                                    494 	.globl __start__stack
                                    495 	.globl __mcs51_genXINIT
                                    496 	.globl __mcs51_genXRAMCLEAR
                                    497 	.globl __mcs51_genRAMCLEAR
                                    498 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  499 	ljmp	__sdcc_program_startup
                                    500 ;--------------------------------------------------------
                                    501 ; Home
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area HOME    (CODE)
      003003                        505 __sdcc_program_startup:
      003003 02 30 62         [24]  506 	ljmp	_main
                                    507 ;	return from main will return to caller
                                    508 ;--------------------------------------------------------
                                    509 ; code
                                    510 ;--------------------------------------------------------
                                    511 	.area CSEG    (CODE)
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'main'
                                    514 ;------------------------------------------------------------
                                    515 ;	main.c:16: void main()
                                    516 ;	-----------------------------------------
                                    517 ;	 function main
                                    518 ;	-----------------------------------------
      003062                        519 _main:
                           000007   520 	ar7 = 0x07
                           000006   521 	ar6 = 0x06
                           000005   522 	ar5 = 0x05
                           000004   523 	ar4 = 0x04
                           000003   524 	ar3 = 0x03
                           000002   525 	ar2 = 0x02
                           000001   526 	ar1 = 0x01
                           000000   527 	ar0 = 0x00
                                    528 ;	main.c:19: CMOD = CMOD | 0x40;
      003062 43 D9 40         [24]  529 	orl	_CMOD,#0x40
                                    530 ;	main.c:20: CL=0;
                                    531 ;	main.c:21: CH=0;
                                    532 ;	main.c:22: printf_tiny("Reset");
      003065 E4               [12]  533 	clr	a
      003066 F5 E9            [12]  534 	mov	_CL,a
      003068 F5 F9            [12]  535 	mov	_CH,a
      00306A 74 F9            [12]  536 	mov	a,#___str_0
      00306C C0 E0            [24]  537 	push	acc
      00306E 74 31            [12]  538 	mov	a,#(___str_0 >> 8)
      003070 C0 E0            [24]  539 	push	acc
      003072 12 30 D0         [24]  540 	lcall	_printf_tiny
      003075 15 81            [12]  541 	dec	sp
      003077 15 81            [12]  542 	dec	sp
                                    543 ;	main.c:23: CMOD=CMOD|0x02;
      003079 43 D9 02         [24]  544 	orl	_CMOD,#0x02
                                    545 ;	main.c:25: CCAP4L = 0xFF; // Setup PCA module 4 for Watchdog Timer
      00307C 75 EE FF         [24]  546 	mov	_CCAP4L,#0xff
                                    547 ;	main.c:26: CCAP4H = 0xFF;
      00307F 75 FE FF         [24]  548 	mov	_CCAP4H,#0xff
                                    549 ;	main.c:27: CCAPM4 = 0x4C;
      003082 75 DE 4C         [24]  550 	mov	_CCAPM4,#0x4c
                                    551 ;	main.c:28: CR=1;
                                    552 ;	assignBit
      003085 D2 DE            [12]  553 	setb	_CR
                                    554 ;	main.c:29: while (1)
      003087                        555 00102$:
                                    556 ;	main.c:33: delay();
      003087 12 30 8C         [24]  557 	lcall	_delay
                                    558 ;	main.c:35: }
      00308A 80 FB            [24]  559 	sjmp	00102$
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'delay'
                                    562 ;------------------------------------------------------------
                                    563 ;i                         Allocated with name '_delay_i_65536_17'
                                    564 ;------------------------------------------------------------
                                    565 ;	main.c:36: void delay()
                                    566 ;	-----------------------------------------
                                    567 ;	 function delay
                                    568 ;	-----------------------------------------
      00308C                        569 _delay:
                                    570 ;	main.c:39: for(i = 0; i < 1024; i++);
      00308C 7E 00            [12]  571 	mov	r6,#0x00
      00308E 7F 04            [12]  572 	mov	r7,#0x04
      003090                        573 00104$:
      003090 1E               [12]  574 	dec	r6
      003091 BE FF 01         [24]  575 	cjne	r6,#0xff,00113$
      003094 1F               [12]  576 	dec	r7
      003095                        577 00113$:
      003095 EE               [12]  578 	mov	a,r6
      003096 4F               [12]  579 	orl	a,r7
      003097 70 F7            [24]  580 	jnz	00104$
                                    581 ;	main.c:40: }
      003099 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'refresh_WDT'
                                    585 ;------------------------------------------------------------
                                    586 ;	main.c:42: void refresh_WDT()
                                    587 ;	-----------------------------------------
                                    588 ;	 function refresh_WDT
                                    589 ;	-----------------------------------------
      00309A                        590 _refresh_WDT:
                                    591 ;	main.c:44: EA = 0;
                                    592 ;	assignBit
      00309A C2 AF            [12]  593 	clr	_EA
                                    594 ;	main.c:45: CCAP4L = 0;
      00309C 75 EE 00         [24]  595 	mov	_CCAP4L,#0x00
                                    596 ;	main.c:46: CCAP4H = CH;
      00309F 85 F9 FE         [24]  597 	mov	_CCAP4H,_CH
                                    598 ;	main.c:47: EA = 1;
                                    599 ;	assignBit
      0030A2 D2 AF            [12]  600 	setb	_EA
                                    601 ;	main.c:48: }
      0030A4 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'putchar'
                                    605 ;------------------------------------------------------------
                                    606 ;c                         Allocated with name '_putchar_c_65536_20'
                                    607 ;------------------------------------------------------------
                                    608 ;	main.c:50: int putchar (int c)
                                    609 ;	-----------------------------------------
                                    610 ;	 function putchar
                                    611 ;	-----------------------------------------
      0030A5                        612 _putchar:
      0030A5 AF 83            [24]  613 	mov	r7,dph
      0030A7 E5 82            [12]  614 	mov	a,dpl
      0030A9 90 00 01         [24]  615 	mov	dptr,#_putchar_c_65536_20
      0030AC F0               [24]  616 	movx	@dptr,a
      0030AD EF               [12]  617 	mov	a,r7
      0030AE A3               [24]  618 	inc	dptr
      0030AF F0               [24]  619 	movx	@dptr,a
                                    620 ;	main.c:52: while (!TI);				// compare asm code generated for these three lines
      0030B0                        621 00101$:
      0030B0 30 99 FD         [24]  622 	jnb	_TI,00101$
                                    623 ;	main.c:54: SBUF = c;  	// load serial port with transmit value
      0030B3 90 00 01         [24]  624 	mov	dptr,#_putchar_c_65536_20
      0030B6 E0               [24]  625 	movx	a,@dptr
      0030B7 FE               [12]  626 	mov	r6,a
      0030B8 A3               [24]  627 	inc	dptr
      0030B9 E0               [24]  628 	movx	a,@dptr
      0030BA 8E 99            [24]  629 	mov	_SBUF,r6
                                    630 ;	main.c:55: TI = 0;  	// clear TI flag
                                    631 ;	assignBit
      0030BC C2 99            [12]  632 	clr	_TI
                                    633 ;	main.c:56: return 0;
      0030BE 90 00 00         [24]  634 	mov	dptr,#0x0000
                                    635 ;	main.c:57: }
      0030C1 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'getchar'
                                    639 ;------------------------------------------------------------
                                    640 ;	main.c:59: int getchar ()
                                    641 ;	-----------------------------------------
                                    642 ;	 function getchar
                                    643 ;	-----------------------------------------
      0030C2                        644 _getchar:
                                    645 ;	main.c:61: while (!RI);                // compare asm code generated for these three lines
      0030C2                        646 00101$:
                                    647 ;	main.c:63: RI = 0;			// clear RI flag
                                    648 ;	assignBit
      0030C2 10 98 02         [24]  649 	jbc	_RI,00114$
      0030C5 80 FB            [24]  650 	sjmp	00101$
      0030C7                        651 00114$:
                                    652 ;	main.c:64: return SBUF;  	// return character from SBUF
      0030C7 AE 99            [24]  653 	mov	r6,_SBUF
      0030C9 7F 00            [12]  654 	mov	r7,#0x00
      0030CB 8E 82            [24]  655 	mov	dpl,r6
      0030CD 8F 83            [24]  656 	mov	dph,r7
                                    657 ;	main.c:65: }
      0030CF 22               [24]  658 	ret
                                    659 	.area CSEG    (CODE)
                                    660 	.area CONST   (CODE)
                                    661 	.area CONST   (CODE)
      0031F9                        662 ___str_0:
      0031F9 52 65 73 65 74         663 	.ascii "Reset"
      0031FE 00                     664 	.db 0x00
                                    665 	.area CSEG    (CODE)
                                    666 	.area XINIT   (CODE)
                                    667 	.area CABS    (ABS,CODE)
