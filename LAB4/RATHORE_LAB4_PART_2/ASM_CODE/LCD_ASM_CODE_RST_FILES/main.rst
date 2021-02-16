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
                                     12 	.globl _getadd
                                     13 	.globl _getcol
                                     14 	.globl _getrow
                                     15 	.globl _getdata
                                     16 	.globl _InitTimer0
                                     17 	.globl _timer
                                     18 	.globl _delay
                                     19 	.globl _lcdbusywait
                                     20 	.globl _lcdinit
                                     21 	.globl _lcd_clear_screen
                                     22 	.globl _lcdgotoaddr
                                     23 	.globl _lcdgotoxy
                                     24 	.globl _lcdputch
                                     25 	.globl _lcdputstr
                                     26 	.globl _strtol
                                     27 	.globl _atoi
                                     28 	.globl _printf_tiny
                                     29 	.globl _gets
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _B
                                    155 	.globl _ACC
                                    156 	.globl _PSW
                                    157 	.globl _IP
                                    158 	.globl _P3
                                    159 	.globl _IE
                                    160 	.globl _P2
                                    161 	.globl _SBUF
                                    162 	.globl _SCON
                                    163 	.globl _P1
                                    164 	.globl _TH1
                                    165 	.globl _TH0
                                    166 	.globl _TL1
                                    167 	.globl _TL0
                                    168 	.globl _TMOD
                                    169 	.globl _TCON
                                    170 	.globl _PCON
                                    171 	.globl _DPH
                                    172 	.globl _DPL
                                    173 	.globl _SP
                                    174 	.globl _P0
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _data_register_read
                                    227 	.globl _busy_flag_read
                                    228 	.globl _data_register_write
                                    229 	.globl _instruction_reg_write
                                    230 	.globl _putchar
                                    231 	.globl _getchar
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           000080   288 _P0	=	0x0080
                           000081   289 _SP	=	0x0081
                           000082   290 _DPL	=	0x0082
                           000083   291 _DPH	=	0x0083
                           000087   292 _PCON	=	0x0087
                           000088   293 _TCON	=	0x0088
                           000089   294 _TMOD	=	0x0089
                           00008A   295 _TL0	=	0x008a
                           00008B   296 _TL1	=	0x008b
                           00008C   297 _TH0	=	0x008c
                           00008D   298 _TH1	=	0x008d
                           000090   299 _P1	=	0x0090
                           000098   300 _SCON	=	0x0098
                           000099   301 _SBUF	=	0x0099
                           0000A0   302 _P2	=	0x00a0
                           0000A8   303 _IE	=	0x00a8
                           0000B0   304 _P3	=	0x00b0
                           0000B8   305 _IP	=	0x00b8
                           0000D0   306 _PSW	=	0x00d0
                           0000E0   307 _ACC	=	0x00e0
                           0000F0   308 _B	=	0x00f0
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           0000AD   314 _ET2	=	0x00ad
                           0000BD   315 _PT2	=	0x00bd
                           0000C8   316 _T2CON_0	=	0x00c8
                           0000C9   317 _T2CON_1	=	0x00c9
                           0000CA   318 _T2CON_2	=	0x00ca
                           0000CB   319 _T2CON_3	=	0x00cb
                           0000CC   320 _T2CON_4	=	0x00cc
                           0000CD   321 _T2CON_5	=	0x00cd
                           0000CE   322 _T2CON_6	=	0x00ce
                           0000CF   323 _T2CON_7	=	0x00cf
                           0000C8   324 _CP_RL2	=	0x00c8
                           0000C9   325 _C_T2	=	0x00c9
                           0000CA   326 _TR2	=	0x00ca
                           0000CB   327 _EXEN2	=	0x00cb
                           0000CC   328 _TCLK	=	0x00cc
                           0000CD   329 _RCLK	=	0x00cd
                           0000CE   330 _EXF2	=	0x00ce
                           0000CF   331 _TF2	=	0x00cf
                           0000DF   332 _CF	=	0x00df
                           0000DE   333 _CR	=	0x00de
                           0000DC   334 _CCF4	=	0x00dc
                           0000DB   335 _CCF3	=	0x00db
                           0000DA   336 _CCF2	=	0x00da
                           0000D9   337 _CCF1	=	0x00d9
                           0000D8   338 _CCF0	=	0x00d8
                           0000AE   339 _EC	=	0x00ae
                           0000BE   340 _PPCL	=	0x00be
                           0000BD   341 _PT2L	=	0x00bd
                           0000BC   342 _PSL	=	0x00bc
                           0000BB   343 _PT1L	=	0x00bb
                           0000BA   344 _PX1L	=	0x00ba
                           0000B9   345 _PT0L	=	0x00b9
                           0000B8   346 _PX0L	=	0x00b8
                           0000C0   347 _P4_0	=	0x00c0
                           0000C1   348 _P4_1	=	0x00c1
                           0000C2   349 _P4_2	=	0x00c2
                           0000C3   350 _P4_3	=	0x00c3
                           0000C4   351 _P4_4	=	0x00c4
                           0000C5   352 _P4_5	=	0x00c5
                           0000C6   353 _P4_6	=	0x00c6
                           0000C7   354 _P4_7	=	0x00c7
                           0000E8   355 _P5_0	=	0x00e8
                           0000E9   356 _P5_1	=	0x00e9
                           0000EA   357 _P5_2	=	0x00ea
                           0000EB   358 _P5_3	=	0x00eb
                           0000EC   359 _P5_4	=	0x00ec
                           0000ED   360 _P5_5	=	0x00ed
                           0000EE   361 _P5_6	=	0x00ee
                           0000EF   362 _P5_7	=	0x00ef
                           000080   363 _P0_0	=	0x0080
                           000081   364 _P0_1	=	0x0081
                           000082   365 _P0_2	=	0x0082
                           000083   366 _P0_3	=	0x0083
                           000084   367 _P0_4	=	0x0084
                           000085   368 _P0_5	=	0x0085
                           000086   369 _P0_6	=	0x0086
                           000087   370 _P0_7	=	0x0087
                           000088   371 _IT0	=	0x0088
                           000089   372 _IE0	=	0x0089
                           00008A   373 _IT1	=	0x008a
                           00008B   374 _IE1	=	0x008b
                           00008C   375 _TR0	=	0x008c
                           00008D   376 _TF0	=	0x008d
                           00008E   377 _TR1	=	0x008e
                           00008F   378 _TF1	=	0x008f
                           000090   379 _P1_0	=	0x0090
                           000091   380 _P1_1	=	0x0091
                           000092   381 _P1_2	=	0x0092
                           000093   382 _P1_3	=	0x0093
                           000094   383 _P1_4	=	0x0094
                           000095   384 _P1_5	=	0x0095
                           000096   385 _P1_6	=	0x0096
                           000097   386 _P1_7	=	0x0097
                           000098   387 _RI	=	0x0098
                           000099   388 _TI	=	0x0099
                           00009A   389 _RB8	=	0x009a
                           00009B   390 _TB8	=	0x009b
                           00009C   391 _REN	=	0x009c
                           00009D   392 _SM2	=	0x009d
                           00009E   393 _SM1	=	0x009e
                           00009F   394 _SM0	=	0x009f
                           0000A0   395 _P2_0	=	0x00a0
                           0000A1   396 _P2_1	=	0x00a1
                           0000A2   397 _P2_2	=	0x00a2
                           0000A3   398 _P2_3	=	0x00a3
                           0000A4   399 _P2_4	=	0x00a4
                           0000A5   400 _P2_5	=	0x00a5
                           0000A6   401 _P2_6	=	0x00a6
                           0000A7   402 _P2_7	=	0x00a7
                           0000A8   403 _EX0	=	0x00a8
                           0000A9   404 _ET0	=	0x00a9
                           0000AA   405 _EX1	=	0x00aa
                           0000AB   406 _ET1	=	0x00ab
                           0000AC   407 _ES	=	0x00ac
                           0000AF   408 _EA	=	0x00af
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B1   418 _TXD	=	0x00b1
                           0000B2   419 _INT0	=	0x00b2
                           0000B3   420 _INT1	=	0x00b3
                           0000B4   421 _T0	=	0x00b4
                           0000B5   422 _T1	=	0x00b5
                           0000B6   423 _WR	=	0x00b6
                           0000B7   424 _RD	=	0x00b7
                           0000B8   425 _PX0	=	0x00b8
                           0000B9   426 _PT0	=	0x00b9
                           0000BA   427 _PX1	=	0x00ba
                           0000BB   428 _PT1	=	0x00bb
                           0000BC   429 _PS	=	0x00bc
                           0000D0   430 _P	=	0x00d0
                           0000D1   431 _F1	=	0x00d1
                           0000D2   432 _OV	=	0x00d2
                           0000D3   433 _RS0	=	0x00d3
                           0000D4   434 _RS1	=	0x00d4
                           0000D5   435 _F0	=	0x00d5
                           0000D6   436 _AC	=	0x00d6
                           0000D7   437 _CY	=	0x00d7
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; Stack segment in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 	.area	SSEG
      00001C                        454 __start__stack:
      00001C                        455 	.ds	1
                                    456 
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
                           00F000   478 _instruction_reg_write	=	0xf000
                           00F100   479 _data_register_write	=	0xf100
                           00F200   480 _busy_flag_read	=	0xf200
                           00F300   481 _data_register_read	=	0xf300
      00000E                        482 _getrow_a_65536_52:
      00000E                        483 	.ds 2
      000010                        484 _getcol_a_65536_57:
      000010                        485 	.ds 3
      000013                        486 _getadd_a_65536_58:
      000013                        487 	.ds 3
      000016                        488 _main_address_327681_72:
      000016                        489 	.ds 2
      000018                        490 _main_row1_327681_75:
      000018                        491 	.ds 2
      00001A                        492 _main_column1_327682_77:
      00001A                        493 	.ds 2
      00001C                        494 _putchar_c_65536_89:
      00001C                        495 	.ds 2
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external initialized ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT0 (CODE)
                                    506 	.area GSINIT1 (CODE)
                                    507 	.area GSINIT2 (CODE)
                                    508 	.area GSINIT3 (CODE)
                                    509 	.area GSINIT4 (CODE)
                                    510 	.area GSINIT5 (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area CSEG    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; interrupt vector 
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
      003000                        518 __interrupt_vect:
      003000 02 30 3F         [24]  519 	ljmp	__sdcc_gsinit_startup
      003003 32               [24]  520 	reti
      003004                        521 	.ds	7
      00300B 02 3C 47         [24]  522 	ljmp	_Timer0_ISR
                                    523 ;--------------------------------------------------------
                                    524 ; global & static initialisations
                                    525 ;--------------------------------------------------------
                                    526 	.area HOME    (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.globl __sdcc_gsinit_startup
                                    531 	.globl __sdcc_program_startup
                                    532 	.globl __start__stack
                                    533 	.globl __mcs51_genXINIT
                                    534 	.globl __mcs51_genXRAMCLEAR
                                    535 	.globl __mcs51_genRAMCLEAR
                                    536 	.area GSFINAL (CODE)
      003098 02 30 0E         [24]  537 	ljmp	__sdcc_program_startup
                                    538 ;--------------------------------------------------------
                                    539 ; Home
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area HOME    (CODE)
      00300E                        543 __sdcc_program_startup:
      00300E 02 34 2A         [24]  544 	ljmp	_main
                                    545 ;	return from main will return to caller
                                    546 ;--------------------------------------------------------
                                    547 ; code
                                    548 ;--------------------------------------------------------
                                    549 	.area CSEG    (CODE)
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'getdata'
                                    552 ;------------------------------------------------------------
                                    553 ;strings                   Allocated with name '_getdata_strings_65536_51'
                                    554 ;------------------------------------------------------------
                                    555 ;	main.c:24: char *getdata()
                                    556 ;	-----------------------------------------
                                    557 ;	 function getdata
                                    558 ;	-----------------------------------------
      0032C2                        559 _getdata:
                           000007   560 	ar7 = 0x07
                           000006   561 	ar6 = 0x06
                           000005   562 	ar5 = 0x05
                           000004   563 	ar4 = 0x04
                           000003   564 	ar3 = 0x03
                           000002   565 	ar2 = 0x02
                           000001   566 	ar1 = 0x01
                           000000   567 	ar0 = 0x00
                                    568 ;	main.c:27: gets(strings);
      0032C2 90 00 00         [24]  569 	mov	dptr,#0x0000
      0032C5 75 F0 00         [24]  570 	mov	b,#0x00
      0032C8 12 46 0A         [24]  571 	lcall	_gets
                                    572 ;	main.c:28: return strings;
      0032CB 90 00 00         [24]  573 	mov	dptr,#0x0000
      0032CE 75 F0 00         [24]  574 	mov	b,#0x00
                                    575 ;	main.c:29: }
      0032D1 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'getrow'
                                    579 ;------------------------------------------------------------
                                    580 ;a                         Allocated with name '_getrow_a_65536_52'
                                    581 ;z                         Allocated with name '_getrow_z_65536_52'
                                    582 ;c                         Allocated with name '_getrow_c_65536_52'
                                    583 ;b                         Allocated with name '_getrow_b_131073_54'
                                    584 ;------------------------------------------------------------
                                    585 ;	main.c:31: int getrow()
                                    586 ;	-----------------------------------------
                                    587 ;	 function getrow
                                    588 ;	-----------------------------------------
      0032D2                        589 _getrow:
                                    590 ;	main.c:36: while(1)
      0032D2                        591 00105$:
                                    592 ;	main.c:38: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
      0032D2 12 3C 04         [24]  593 	lcall	_getchar
      0032D5 AE 82            [24]  594 	mov	r6,dpl
                                    595 ;	main.c:39: int b=(int)c;
      0032D7 8E 05            [24]  596 	mov	ar5,r6
      0032D9 7F 00            [12]  597 	mov	r7,#0x00
                                    598 ;	main.c:40: if (b==13)          ///IF ENTER IS PUT CONTINUE
      0032DB BD 0D 05         [24]  599 	cjne	r5,#0x0d,00135$
      0032DE BF 00 02         [24]  600 	cjne	r7,#0x00,00135$
      0032E1 80 EF            [24]  601 	sjmp	00105$
      0032E3                        602 00135$:
                                    603 ;	main.c:47: a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
      0032E3 90 00 0E         [24]  604 	mov	dptr,#_getrow_a_65536_52
      0032E6 EE               [12]  605 	mov	a,r6
      0032E7 F0               [24]  606 	movx	@dptr,a
                                    607 ;	main.c:48: putchar(a[0]);
      0032E8 8D 82            [24]  608 	mov	dpl,r5
      0032EA 8F 83            [24]  609 	mov	dph,r7
      0032EC 12 3B E7         [24]  610 	lcall	_putchar
                                    611 ;	main.c:51: if (a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3')
      0032EF 90 00 0E         [24]  612 	mov	dptr,#_getrow_a_65536_52
      0032F2 E0               [24]  613 	movx	a,@dptr
      0032F3 FF               [12]  614 	mov	r7,a
      0032F4 BF 30 02         [24]  615 	cjne	r7,#0x30,00136$
      0032F7 80 0D            [24]  616 	sjmp	00107$
      0032F9                        617 00136$:
      0032F9 BF 31 02         [24]  618 	cjne	r7,#0x31,00137$
      0032FC 80 08            [24]  619 	sjmp	00107$
      0032FE                        620 00137$:
      0032FE BF 32 02         [24]  621 	cjne	r7,#0x32,00138$
      003301 80 03            [24]  622 	sjmp	00107$
      003303                        623 00138$:
      003303 BF 33 09         [24]  624 	cjne	r7,#0x33,00108$
      003306                        625 00107$:
                                    626 ;	main.c:53: z = atoi(a);
      003306 90 00 0E         [24]  627 	mov	dptr,#_getrow_a_65536_52
      003309 75 F0 00         [24]  628 	mov	b,#0x00
                                    629 ;	main.c:54: return (z);
      00330C 02 44 EA         [24]  630 	ljmp	_atoi
      00330F                        631 00108$:
                                    632 ;	main.c:57: return(-1);                 ///IF VALUES NOT VALID RETURN -1
      00330F 90 FF FF         [24]  633 	mov	dptr,#0xffff
                                    634 ;	main.c:58: }
      003312 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'getcol'
                                    638 ;------------------------------------------------------------
                                    639 ;a                         Allocated with name '_getcol_a_65536_57'
                                    640 ;z                         Allocated with name '_getcol_z_65536_57'
                                    641 ;------------------------------------------------------------
                                    642 ;	main.c:60: int getcol()
                                    643 ;	-----------------------------------------
                                    644 ;	 function getcol
                                    645 ;	-----------------------------------------
      003313                        646 _getcol:
                                    647 ;	main.c:64: gets(a);
      003313 90 00 10         [24]  648 	mov	dptr,#_getcol_a_65536_57
      003316 75 F0 00         [24]  649 	mov	b,#0x00
      003319 12 46 0A         [24]  650 	lcall	_gets
                                    651 ;	main.c:65: z = atoi(a);
      00331C 90 00 10         [24]  652 	mov	dptr,#_getcol_a_65536_57
      00331F 75 F0 00         [24]  653 	mov	b,#0x00
                                    654 ;	main.c:66: return (z);
                                    655 ;	main.c:68: }
      003322 02 44 EA         [24]  656 	ljmp	_atoi
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'getadd'
                                    659 ;------------------------------------------------------------
                                    660 ;a                         Allocated with name '_getadd_a_65536_58'
                                    661 ;z                         Allocated with name '_getadd_z_65536_58'
                                    662 ;c                         Allocated with name '_getadd_c_65536_58'
                                    663 ;b                         Allocated with name '_getadd_b_131073_60'
                                    664 ;b                         Allocated with name '_getadd_b_131073_63'
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:70: int getadd()
                                    667 ;	-----------------------------------------
                                    668 ;	 function getadd
                                    669 ;	-----------------------------------------
      003325                        670 _getadd:
                                    671 ;	main.c:75: while(1)
      003325                        672 00105$:
                                    673 ;	main.c:77: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE C
      003325 12 3C 04         [24]  674 	lcall	_getchar
      003328 AE 82            [24]  675 	mov	r6,dpl
                                    676 ;	main.c:78: int b=(int)c;
      00332A 8E 05            [24]  677 	mov	ar5,r6
      00332C 7F 00            [12]  678 	mov	r7,#0x00
                                    679 ;	main.c:79: if (b==13)          ///IF ENTER IS PUT CONTINUE
      00332E BD 0D 05         [24]  680 	cjne	r5,#0x0d,00265$
      003331 BF 00 02         [24]  681 	cjne	r7,#0x00,00265$
      003334 80 EF            [24]  682 	sjmp	00105$
      003336                        683 00265$:
                                    684 ;	main.c:86: a[0]=c;                 ///TAKE THE CHARACTER IN ARRAY A[0]
      003336 90 00 13         [24]  685 	mov	dptr,#_getadd_a_65536_58
      003339 EE               [12]  686 	mov	a,r6
      00333A F0               [24]  687 	movx	@dptr,a
                                    688 ;	main.c:87: putchar(a[0]);
      00333B 8D 82            [24]  689 	mov	dpl,r5
      00333D 8F 83            [24]  690 	mov	dph,r7
      00333F 12 3B E7         [24]  691 	lcall	_putchar
                                    692 ;	main.c:89: while(1)
      003342                        693 00111$:
                                    694 ;	main.c:91: c=getchar();        ///TAKE THE CHARACTER IN VARIABLE
      003342 12 3C 04         [24]  695 	lcall	_getchar
      003345 AE 82            [24]  696 	mov	r6,dpl
                                    697 ;	main.c:92: int b=(int)c;
      003347 8E 05            [24]  698 	mov	ar5,r6
      003349 7F 00            [12]  699 	mov	r7,#0x00
                                    700 ;	main.c:93: if (b==13)
      00334B BD 0D 05         [24]  701 	cjne	r5,#0x0d,00266$
      00334E BF 00 02         [24]  702 	cjne	r7,#0x00,00266$
      003351 80 EF            [24]  703 	sjmp	00111$
      003353                        704 00266$:
                                    705 ;	main.c:100: a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
      003353 90 00 14         [24]  706 	mov	dptr,#(_getadd_a_65536_58 + 0x0001)
      003356 EE               [12]  707 	mov	a,r6
      003357 F0               [24]  708 	movx	@dptr,a
                                    709 ;	main.c:101: putchar(a[1]);
      003358 8D 82            [24]  710 	mov	dpl,r5
      00335A 8F 83            [24]  711 	mov	dph,r7
      00335C 12 3B E7         [24]  712 	lcall	_putchar
                                    713 ;	main.c:103: if ((a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
      00335F 90 00 14         [24]  714 	mov	dptr,#(_getadd_a_65536_58 + 0x0001)
      003362 E0               [24]  715 	movx	a,@dptr
      003363 FF               [12]  716 	mov	r7,a
      003364 BF 30 03         [24]  717 	cjne	r7,#0x30,00267$
      003367 02 33 D1         [24]  718 	ljmp	00142$
      00336A                        719 00267$:
      00336A BF 31 02         [24]  720 	cjne	r7,#0x31,00268$
      00336D 80 62            [24]  721 	sjmp	00142$
      00336F                        722 00268$:
      00336F BF 32 02         [24]  723 	cjne	r7,#0x32,00269$
      003372 80 5D            [24]  724 	sjmp	00142$
      003374                        725 00269$:
      003374 BF 33 02         [24]  726 	cjne	r7,#0x33,00270$
      003377 80 58            [24]  727 	sjmp	00142$
      003379                        728 00270$:
      003379 BF 34 02         [24]  729 	cjne	r7,#0x34,00271$
      00337C 80 53            [24]  730 	sjmp	00142$
      00337E                        731 00271$:
      00337E BF 35 02         [24]  732 	cjne	r7,#0x35,00272$
      003381 80 4E            [24]  733 	sjmp	00142$
      003383                        734 00272$:
                                    735 ;	main.c:104: a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||a[1]=='c'||
      003383 BF 36 02         [24]  736 	cjne	r7,#0x36,00273$
      003386 80 49            [24]  737 	sjmp	00142$
      003388                        738 00273$:
      003388 BF 37 02         [24]  739 	cjne	r7,#0x37,00274$
      00338B 80 44            [24]  740 	sjmp	00142$
      00338D                        741 00274$:
      00338D BF 38 02         [24]  742 	cjne	r7,#0x38,00275$
      003390 80 3F            [24]  743 	sjmp	00142$
      003392                        744 00275$:
      003392 BF 39 02         [24]  745 	cjne	r7,#0x39,00276$
      003395 80 3A            [24]  746 	sjmp	00142$
      003397                        747 00276$:
      003397 BF 61 02         [24]  748 	cjne	r7,#0x61,00277$
      00339A 80 35            [24]  749 	sjmp	00142$
      00339C                        750 00277$:
      00339C BF 62 02         [24]  751 	cjne	r7,#0x62,00278$
      00339F 80 30            [24]  752 	sjmp	00142$
      0033A1                        753 00278$:
      0033A1 BF 63 02         [24]  754 	cjne	r7,#0x63,00279$
      0033A4 80 2B            [24]  755 	sjmp	00142$
      0033A6                        756 00279$:
                                    757 ;	main.c:105: a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||
      0033A6 BF 64 02         [24]  758 	cjne	r7,#0x64,00280$
      0033A9 80 26            [24]  759 	sjmp	00142$
      0033AB                        760 00280$:
      0033AB BF 65 02         [24]  761 	cjne	r7,#0x65,00281$
      0033AE 80 21            [24]  762 	sjmp	00142$
      0033B0                        763 00281$:
      0033B0 BF 66 02         [24]  764 	cjne	r7,#0x66,00282$
      0033B3 80 1C            [24]  765 	sjmp	00142$
      0033B5                        766 00282$:
      0033B5 BF 41 02         [24]  767 	cjne	r7,#0x41,00283$
      0033B8 80 17            [24]  768 	sjmp	00142$
      0033BA                        769 00283$:
      0033BA BF 42 02         [24]  770 	cjne	r7,#0x42,00284$
      0033BD 80 12            [24]  771 	sjmp	00142$
      0033BF                        772 00284$:
      0033BF BF 43 02         [24]  773 	cjne	r7,#0x43,00285$
      0033C2 80 0D            [24]  774 	sjmp	00142$
      0033C4                        775 00285$:
      0033C4 BF 44 02         [24]  776 	cjne	r7,#0x44,00286$
      0033C7 80 08            [24]  777 	sjmp	00142$
      0033C9                        778 00286$:
                                    779 ;	main.c:106: a[1]=='E'||a[1]=='F')&&(a[0]=='8'||a[0]=='9'||a[0]=='c'||a[0]=='d'||a[0]=='C'||a[0]=='D'))
      0033C9 BF 45 02         [24]  780 	cjne	r7,#0x45,00287$
      0033CC 80 03            [24]  781 	sjmp	00142$
      0033CE                        782 00287$:
      0033CE BF 46 55         [24]  783 	cjne	r7,#0x46,00114$
      0033D1                        784 00142$:
      0033D1 90 00 13         [24]  785 	mov	dptr,#_getadd_a_65536_58
      0033D4 E0               [24]  786 	movx	a,@dptr
      0033D5 FF               [12]  787 	mov	r7,a
      0033D6 BF 38 02         [24]  788 	cjne	r7,#0x38,00290$
      0033D9 80 30            [24]  789 	sjmp	00113$
      0033DB                        790 00290$:
      0033DB 90 00 13         [24]  791 	mov	dptr,#_getadd_a_65536_58
      0033DE E0               [24]  792 	movx	a,@dptr
      0033DF FF               [12]  793 	mov	r7,a
      0033E0 BF 39 02         [24]  794 	cjne	r7,#0x39,00291$
      0033E3 80 26            [24]  795 	sjmp	00113$
      0033E5                        796 00291$:
      0033E5 90 00 13         [24]  797 	mov	dptr,#_getadd_a_65536_58
      0033E8 E0               [24]  798 	movx	a,@dptr
      0033E9 FF               [12]  799 	mov	r7,a
      0033EA BF 63 02         [24]  800 	cjne	r7,#0x63,00292$
      0033ED 80 1C            [24]  801 	sjmp	00113$
      0033EF                        802 00292$:
      0033EF 90 00 13         [24]  803 	mov	dptr,#_getadd_a_65536_58
      0033F2 E0               [24]  804 	movx	a,@dptr
      0033F3 FF               [12]  805 	mov	r7,a
      0033F4 BF 64 02         [24]  806 	cjne	r7,#0x64,00293$
      0033F7 80 12            [24]  807 	sjmp	00113$
      0033F9                        808 00293$:
      0033F9 90 00 13         [24]  809 	mov	dptr,#_getadd_a_65536_58
      0033FC E0               [24]  810 	movx	a,@dptr
      0033FD FF               [12]  811 	mov	r7,a
      0033FE BF 43 02         [24]  812 	cjne	r7,#0x43,00294$
      003401 80 08            [24]  813 	sjmp	00113$
      003403                        814 00294$:
      003403 90 00 13         [24]  815 	mov	dptr,#_getadd_a_65536_58
      003406 E0               [24]  816 	movx	a,@dptr
      003407 FF               [12]  817 	mov	r7,a
      003408 BF 44 1B         [24]  818 	cjne	r7,#0x44,00114$
      00340B                        819 00113$:
                                    820 ;	main.c:108: z=(int)strtol(a,NULL,16);   ///FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
      00340B 90 00 4D         [24]  821 	mov	dptr,#_strtol_PARM_2
      00340E E4               [12]  822 	clr	a
      00340F F0               [24]  823 	movx	@dptr,a
      003410 A3               [24]  824 	inc	dptr
      003411 F0               [24]  825 	movx	@dptr,a
      003412 A3               [24]  826 	inc	dptr
      003413 F0               [24]  827 	movx	@dptr,a
      003414 90 00 50         [24]  828 	mov	dptr,#_strtol_PARM_3
      003417 74 10            [12]  829 	mov	a,#0x10
      003419 F0               [24]  830 	movx	@dptr,a
      00341A E4               [12]  831 	clr	a
      00341B A3               [24]  832 	inc	dptr
      00341C F0               [24]  833 	movx	@dptr,a
      00341D 90 00 13         [24]  834 	mov	dptr,#_getadd_a_65536_58
      003420 75 F0 00         [24]  835 	mov	b,#0x00
                                    836 ;	main.c:109: return (z);
      003423 02 42 BD         [24]  837 	ljmp	_strtol
      003426                        838 00114$:
                                    839 ;	main.c:112: return(-1);                 ///IF VALUES NOT VALID RETURN -1
      003426 90 FF FF         [24]  840 	mov	dptr,#0xffff
                                    841 ;	main.c:113: }
      003429 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'main'
                                    845 ;------------------------------------------------------------
                                    846 ;address                   Allocated with name '_main_address_327681_72'
                                    847 ;row1                      Allocated with name '_main_row1_327681_75'
                                    848 ;column1                   Allocated with name '_main_column1_327682_77'
                                    849 ;------------------------------------------------------------
                                    850 ;	main.c:114: void main(void)
                                    851 ;	-----------------------------------------
                                    852 ;	 function main
                                    853 ;	-----------------------------------------
      00342A                        854 _main:
                                    855 ;	main.c:116: lcdinit();                     ///LCD INITIALIZATION
      00342A 12 30 FB         [24]  856 	lcall	_lcdinit
                                    857 ;	main.c:117: lcdbusywait();
      00342D 12 30 F3         [24]  858 	lcall	_lcdbusywait
                                    859 ;	main.c:118: lcdgotoxy(1,0);
      003430 90 00 06         [24]  860 	mov	dptr,#_lcdgotoxy_PARM_2
      003433 E4               [12]  861 	clr	a
      003434 F0               [24]  862 	movx	@dptr,a
      003435 75 82 01         [24]  863 	mov	dpl,#0x01
      003438 12 31 69         [24]  864 	lcall	_lcdgotoxy
                                    865 ;	main.c:119: lcdbusywait();
      00343B 12 30 F3         [24]  866 	lcall	_lcdbusywait
                                    867 ;	main.c:120: lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");   ///PUT STRING FOR LCD
      00343E 90 4E 6F         [24]  868 	mov	dptr,#___str_0
      003441 75 F0 80         [24]  869 	mov	b,#0x80
      003444 12 31 FC         [24]  870 	lcall	_lcdputstr
                                    871 ;	main.c:121: lcdbusywait();
      003447 12 30 F3         [24]  872 	lcall	_lcdbusywait
                                    873 ;	main.c:122: lcdgotoxy(0,0);
      00344A 90 00 06         [24]  874 	mov	dptr,#_lcdgotoxy_PARM_2
      00344D E4               [12]  875 	clr	a
      00344E F0               [24]  876 	movx	@dptr,a
      00344F 75 82 00         [24]  877 	mov	dpl,#0x00
      003452 12 31 69         [24]  878 	lcall	_lcdgotoxy
                                    879 ;	main.c:123: lcdbusywait();
      003455 12 30 F3         [24]  880 	lcall	_lcdbusywait
                                    881 ;	main.c:124: lcdputstr("ABCDEFGHIKLMNOPQRESTUVWXYZ1234567890123456789abcdefghijklmnopqrstuvwxyz.");   ///WRITE STRING TO SEE WRAP AROUND
      003458 90 4E A0         [24]  882 	mov	dptr,#___str_1
      00345B 75 F0 80         [24]  883 	mov	b,#0x80
      00345E 12 31 FC         [24]  884 	lcall	_lcdputstr
                                    885 ;	main.c:125: lcdbusywait();
      003461 12 30 F3         [24]  886 	lcall	_lcdbusywait
                                    887 ;	main.c:126: lcd_clear_screen();
      003464 12 31 56         [24]  888 	lcall	_lcd_clear_screen
                                    889 ;	main.c:127: lcdbusywait();
      003467 12 30 F3         [24]  890 	lcall	_lcdbusywait
                                    891 ;	main.c:128: lcdgotoxy(1,0);                ///PUT STRING AGAIN TO CHECK IF PRINTS CORRECTLY
      00346A 90 00 06         [24]  892 	mov	dptr,#_lcdgotoxy_PARM_2
      00346D E4               [12]  893 	clr	a
      00346E F0               [24]  894 	movx	@dptr,a
      00346F 75 82 01         [24]  895 	mov	dpl,#0x01
      003472 12 31 69         [24]  896 	lcall	_lcdgotoxy
                                    897 ;	main.c:129: lcdbusywait();
      003475 12 30 F3         [24]  898 	lcall	_lcdbusywait
                                    899 ;	main.c:130: lcdputstr("Welcome to  Cu  Boulder.My name is Harsh Rathore");
      003478 90 4E 6F         [24]  900 	mov	dptr,#___str_0
      00347B 75 F0 80         [24]  901 	mov	b,#0x80
      00347E 12 31 FC         [24]  902 	lcall	_lcdputstr
                                    903 ;	main.c:131: lcdbusywait();
      003481 12 30 F3         [24]  904 	lcall	_lcdbusywait
                                    905 ;	main.c:132: lcdbusywait();
      003484 12 30 F3         [24]  906 	lcall	_lcdbusywait
                                    907 ;	main.c:134: printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
      003487 74 E9            [12]  908 	mov	a,#___str_2
      003489 C0 E0            [24]  909 	push	acc
      00348B 74 4E            [12]  910 	mov	a,#(___str_2 >> 8)
      00348D C0 E0            [24]  911 	push	acc
      00348F 12 47 0F         [24]  912 	lcall	_printf_tiny
      003492 15 81            [12]  913 	dec	sp
      003494 15 81            [12]  914 	dec	sp
                                    915 ;	main.c:135: printf_tiny("\n\rA-GO TO ADDRESS \n\r");
      003496 74 17            [12]  916 	mov	a,#___str_3
      003498 C0 E0            [24]  917 	push	acc
      00349A 74 4F            [12]  918 	mov	a,#(___str_3 >> 8)
      00349C C0 E0            [24]  919 	push	acc
      00349E 12 47 0F         [24]  920 	lcall	_printf_tiny
      0034A1 15 81            [12]  921 	dec	sp
      0034A3 15 81            [12]  922 	dec	sp
                                    923 ;	main.c:136: printf_tiny("\n\rC-CLEAR SCREEN \n\r");
      0034A5 74 2C            [12]  924 	mov	a,#___str_4
      0034A7 C0 E0            [24]  925 	push	acc
      0034A9 74 4F            [12]  926 	mov	a,#(___str_4 >> 8)
      0034AB C0 E0            [24]  927 	push	acc
      0034AD 12 47 0F         [24]  928 	lcall	_printf_tiny
      0034B0 15 81            [12]  929 	dec	sp
      0034B2 15 81            [12]  930 	dec	sp
                                    931 ;	main.c:137: printf_tiny("\n\rG-GO TO XY \n\r");
      0034B4 74 40            [12]  932 	mov	a,#___str_5
      0034B6 C0 E0            [24]  933 	push	acc
      0034B8 74 4F            [12]  934 	mov	a,#(___str_5 >> 8)
      0034BA C0 E0            [24]  935 	push	acc
      0034BC 12 47 0F         [24]  936 	lcall	_printf_tiny
      0034BF 15 81            [12]  937 	dec	sp
      0034C1 15 81            [12]  938 	dec	sp
                                    939 ;	main.c:138: printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
      0034C3 74 50            [12]  940 	mov	a,#___str_6
      0034C5 C0 E0            [24]  941 	push	acc
      0034C7 74 4F            [12]  942 	mov	a,#(___str_6 >> 8)
      0034C9 C0 E0            [24]  943 	push	acc
      0034CB 12 47 0F         [24]  944 	lcall	_printf_tiny
      0034CE 15 81            [12]  945 	dec	sp
      0034D0 15 81            [12]  946 	dec	sp
                                    947 ;	main.c:139: printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
      0034D2 74 68            [12]  948 	mov	a,#___str_7
      0034D4 C0 E0            [24]  949 	push	acc
      0034D6 74 4F            [12]  950 	mov	a,#(___str_7 >> 8)
      0034D8 C0 E0            [24]  951 	push	acc
      0034DA 12 47 0F         [24]  952 	lcall	_printf_tiny
      0034DD 15 81            [12]  953 	dec	sp
      0034DF 15 81            [12]  954 	dec	sp
                                    955 ;	main.c:140: printf_tiny("\n\rS-STOP THE TIMER \n\r");
      0034E1 74 80            [12]  956 	mov	a,#___str_8
      0034E3 C0 E0            [24]  957 	push	acc
      0034E5 74 4F            [12]  958 	mov	a,#(___str_8 >> 8)
      0034E7 C0 E0            [24]  959 	push	acc
      0034E9 12 47 0F         [24]  960 	lcall	_printf_tiny
      0034EC 15 81            [12]  961 	dec	sp
      0034EE 15 81            [12]  962 	dec	sp
                                    963 ;	main.c:141: printf_tiny("\n\rR-RESTART THE TIMER \n\r");
      0034F0 74 96            [12]  964 	mov	a,#___str_9
      0034F2 C0 E0            [24]  965 	push	acc
      0034F4 74 4F            [12]  966 	mov	a,#(___str_9 >> 8)
      0034F6 C0 E0            [24]  967 	push	acc
      0034F8 12 47 0F         [24]  968 	lcall	_printf_tiny
      0034FB 15 81            [12]  969 	dec	sp
      0034FD 15 81            [12]  970 	dec	sp
                                    971 ;	main.c:142: printf_tiny("\n\rX-RESET THE TIMER \n\r");
      0034FF 74 AF            [12]  972 	mov	a,#___str_10
      003501 C0 E0            [24]  973 	push	acc
      003503 74 4F            [12]  974 	mov	a,#(___str_10 >> 8)
      003505 C0 E0            [24]  975 	push	acc
      003507 12 47 0F         [24]  976 	lcall	_printf_tiny
      00350A 15 81            [12]  977 	dec	sp
      00350C 15 81            [12]  978 	dec	sp
                                    979 ;	main.c:143: printf_tiny("\n\r\ Enter the Key\n\r");
      00350E 74 C6            [12]  980 	mov	a,#___str_11
      003510 C0 E0            [24]  981 	push	acc
      003512 74 4F            [12]  982 	mov	a,#(___str_11 >> 8)
      003514 C0 E0            [24]  983 	push	acc
      003516 12 47 0F         [24]  984 	lcall	_printf_tiny
      003519 15 81            [12]  985 	dec	sp
      00351B 15 81            [12]  986 	dec	sp
                                    987 ;	main.c:144: while(1)
      00351D                        988 00135$:
                                    989 ;	main.c:146: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); ///PRINT STATEMENTS FOR THE SELECTING THE KEY
      00351D 74 D9            [12]  990 	mov	a,#___str_12
      00351F C0 E0            [24]  991 	push	acc
      003521 74 4F            [12]  992 	mov	a,#(___str_12 >> 8)
      003523 C0 E0            [24]  993 	push	acc
      003525 12 47 0F         [24]  994 	lcall	_printf_tiny
      003528 15 81            [12]  995 	dec	sp
      00352A 15 81            [12]  996 	dec	sp
                                    997 ;	main.c:147: printf_tiny("\n\rEnter The Key\n\r ");
      00352C 74 0E            [12]  998 	mov	a,#___str_13
      00352E C0 E0            [24]  999 	push	acc
      003530 74 50            [12] 1000 	mov	a,#(___str_13 >> 8)
      003532 C0 E0            [24] 1001 	push	acc
      003534 12 47 0F         [24] 1002 	lcall	_printf_tiny
      003537 15 81            [12] 1003 	dec	sp
      003539 15 81            [12] 1004 	dec	sp
                                   1005 ;	main.c:148: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
      00353B 74 D9            [12] 1006 	mov	a,#___str_12
      00353D C0 E0            [24] 1007 	push	acc
      00353F 74 4F            [12] 1008 	mov	a,#(___str_12 >> 8)
      003541 C0 E0            [24] 1009 	push	acc
      003543 12 47 0F         [24] 1010 	lcall	_printf_tiny
      003546 15 81            [12] 1011 	dec	sp
      003548 15 81            [12] 1012 	dec	sp
                                   1013 ;	main.c:150: input=getchar();                          ///TAKE INPUT IN FORM A CHARACTER FORM USER
      00354A 12 3C 04         [24] 1014 	lcall	_getchar
      00354D AE 82            [24] 1015 	mov	r6,dpl
      00354F 90 00 9C         [24] 1016 	mov	dptr,#_input
      003552 EE               [12] 1017 	mov	a,r6
      003553 F0               [24] 1018 	movx	@dptr,a
                                   1019 ;	main.c:151: putchar(input);
      003554 E0               [24] 1020 	movx	a,@dptr
      003555 FF               [12] 1021 	mov	r7,a
      003556 7E 00            [12] 1022 	mov	r6,#0x00
      003558 8F 82            [24] 1023 	mov	dpl,r7
      00355A 8E 83            [24] 1024 	mov	dph,r6
      00355C 12 3B E7         [24] 1025 	lcall	_putchar
                                   1026 ;	main.c:153: if(input!='\n' && input!='\r')
      00355F 90 00 9C         [24] 1027 	mov	dptr,#_input
      003562 E0               [24] 1028 	movx	a,@dptr
      003563 FF               [12] 1029 	mov	r7,a
      003564 BF 0A 02         [24] 1030 	cjne	r7,#0x0a,00231$
      003567 80 B4            [24] 1031 	sjmp	00135$
      003569                       1032 00231$:
      003569 90 00 9C         [24] 1033 	mov	dptr,#_input
      00356C E0               [24] 1034 	movx	a,@dptr
      00356D FF               [12] 1035 	mov	r7,a
      00356E BF 0D 02         [24] 1036 	cjne	r7,#0x0d,00232$
      003571 80 AA            [24] 1037 	sjmp	00135$
      003573                       1038 00232$:
                                   1039 ;	main.c:155: switch(input)
      003573 90 00 9C         [24] 1040 	mov	dptr,#_input
      003576 E0               [24] 1041 	movx	a,@dptr
      003577 FF               [12] 1042 	mov	r7,a
      003578 BF 41 02         [24] 1043 	cjne	r7,#0x41,00233$
      00357B 80 2D            [24] 1044 	sjmp	00101$
      00357D                       1045 00233$:
      00357D BF 43 03         [24] 1046 	cjne	r7,#0x43,00234$
      003580 02 37 DA         [24] 1047 	ljmp	00113$
      003583                       1048 00234$:
      003583 BF 47 03         [24] 1049 	cjne	r7,#0x47,00235$
      003586 02 36 82         [24] 1050 	ljmp	00105$
      003589                       1051 00235$:
      003589 BF 4D 03         [24] 1052 	cjne	r7,#0x4d,00236$
      00358C 02 3B 4E         [24] 1053 	ljmp	00128$
      00358F                       1054 00236$:
      00358F BF 50 03         [24] 1055 	cjne	r7,#0x50,00237$
      003592 02 39 25         [24] 1056 	ljmp	00118$
      003595                       1057 00237$:
      003595 BF 52 03         [24] 1058 	cjne	r7,#0x52,00238$
      003598 02 3A AD         [24] 1059 	ljmp	00126$
      00359B                       1060 00238$:
      00359B BF 53 03         [24] 1061 	cjne	r7,#0x53,00239$
      00359E 02 3B 1E         [24] 1062 	ljmp	00127$
      0035A1                       1063 00239$:
      0035A1 BF 57 03         [24] 1064 	cjne	r7,#0x57,00240$
      0035A4 02 38 1C         [24] 1065 	ljmp	00114$
      0035A7                       1066 00240$:
      0035A7 02 3B D5         [24] 1067 	ljmp	00129$
                                   1068 ;	main.c:157: case('A'):                                                              ///WRITE ADDRESS
      0035AA                       1069 00101$:
                                   1070 ;	main.c:159: printf_tiny("\n\r********************************************* \n\r");
      0035AA 74 21            [12] 1071 	mov	a,#___str_14
      0035AC C0 E0            [24] 1072 	push	acc
      0035AE 74 50            [12] 1073 	mov	a,#(___str_14 >> 8)
      0035B0 C0 E0            [24] 1074 	push	acc
      0035B2 12 47 0F         [24] 1075 	lcall	_printf_tiny
      0035B5 15 81            [12] 1076 	dec	sp
      0035B7 15 81            [12] 1077 	dec	sp
                                   1078 ;	main.c:160: printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
      0035B9 74 54            [12] 1079 	mov	a,#___str_15
      0035BB C0 E0            [24] 1080 	push	acc
      0035BD 74 50            [12] 1081 	mov	a,#(___str_15 >> 8)
      0035BF C0 E0            [24] 1082 	push	acc
      0035C1 12 47 0F         [24] 1083 	lcall	_printf_tiny
      0035C4 15 81            [12] 1084 	dec	sp
      0035C6 15 81            [12] 1085 	dec	sp
                                   1086 ;	main.c:161: printf_tiny("\n\r********************************************* \n\r");
      0035C8 74 21            [12] 1087 	mov	a,#___str_14
      0035CA C0 E0            [24] 1088 	push	acc
      0035CC 74 50            [12] 1089 	mov	a,#(___str_14 >> 8)
      0035CE C0 E0            [24] 1090 	push	acc
      0035D0 12 47 0F         [24] 1091 	lcall	_printf_tiny
      0035D3 15 81            [12] 1092 	dec	sp
      0035D5 15 81            [12] 1093 	dec	sp
                                   1094 ;	main.c:162: printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address\n\r");
      0035D7 74 69            [12] 1095 	mov	a,#___str_16
      0035D9 C0 E0            [24] 1096 	push	acc
      0035DB 74 50            [12] 1097 	mov	a,#(___str_16 >> 8)
      0035DD C0 E0            [24] 1098 	push	acc
      0035DF 12 47 0F         [24] 1099 	lcall	_printf_tiny
      0035E2 15 81            [12] 1100 	dec	sp
      0035E4 15 81            [12] 1101 	dec	sp
                                   1102 ;	main.c:163: int address=getadd();                                  ///ACCEPTING THE WRITE ADDRESS
      0035E6 12 33 25         [24] 1103 	lcall	_getadd
      0035E9 E5 82            [12] 1104 	mov	a,dpl
      0035EB 85 83 F0         [24] 1105 	mov	b,dph
      0035EE 90 00 16         [24] 1106 	mov	dptr,#_main_address_327681_72
      0035F1 F0               [24] 1107 	movx	@dptr,a
      0035F2 E5 F0            [12] 1108 	mov	a,b
      0035F4 A3               [24] 1109 	inc	dptr
      0035F5 F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	main.c:164: while (address==-1)                                       ///PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      0035F6                       1112 00102$:
      0035F6 90 00 16         [24] 1113 	mov	dptr,#_main_address_327681_72
      0035F9 E0               [24] 1114 	movx	a,@dptr
      0035FA FE               [12] 1115 	mov	r6,a
      0035FB A3               [24] 1116 	inc	dptr
      0035FC E0               [24] 1117 	movx	a,@dptr
      0035FD FF               [12] 1118 	mov	r7,a
      0035FE BE FF 47         [24] 1119 	cjne	r6,#0xff,00104$
      003601 BF FF 44         [24] 1120 	cjne	r7,#0xff,00104$
                                   1121 ;	main.c:166: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address);
      003604 C0 07            [24] 1122 	push	ar7
      003606 C0 06            [24] 1123 	push	ar6
      003608 C0 06            [24] 1124 	push	ar6
      00360A C0 07            [24] 1125 	push	ar7
      00360C 74 91            [12] 1126 	mov	a,#___str_17
      00360E C0 E0            [24] 1127 	push	acc
      003610 74 50            [12] 1128 	mov	a,#(___str_17 >> 8)
      003612 C0 E0            [24] 1129 	push	acc
      003614 12 47 0F         [24] 1130 	lcall	_printf_tiny
      003617 E5 81            [12] 1131 	mov	a,sp
      003619 24 FC            [12] 1132 	add	a,#0xfc
      00361B F5 81            [12] 1133 	mov	sp,a
      00361D D0 06            [24] 1134 	pop	ar6
      00361F D0 07            [24] 1135 	pop	ar7
                                   1136 ;	main.c:167: printf_tiny ("\n\rEnter a New Address\n\r",address);
      003621 C0 06            [24] 1137 	push	ar6
      003623 C0 07            [24] 1138 	push	ar7
      003625 74 C6            [12] 1139 	mov	a,#___str_18
      003627 C0 E0            [24] 1140 	push	acc
      003629 74 50            [12] 1141 	mov	a,#(___str_18 >> 8)
      00362B C0 E0            [24] 1142 	push	acc
      00362D 12 47 0F         [24] 1143 	lcall	_printf_tiny
      003630 E5 81            [12] 1144 	mov	a,sp
      003632 24 FC            [12] 1145 	add	a,#0xfc
      003634 F5 81            [12] 1146 	mov	sp,a
                                   1147 ;	main.c:168: address=getadd();
      003636 12 33 25         [24] 1148 	lcall	_getadd
      003639 E5 82            [12] 1149 	mov	a,dpl
      00363B 85 83 F0         [24] 1150 	mov	b,dph
      00363E 90 00 16         [24] 1151 	mov	dptr,#_main_address_327681_72
      003641 F0               [24] 1152 	movx	@dptr,a
      003642 E5 F0            [12] 1153 	mov	a,b
      003644 A3               [24] 1154 	inc	dptr
      003645 F0               [24] 1155 	movx	@dptr,a
      003646 80 AE            [24] 1156 	sjmp	00102$
      003648                       1157 00104$:
                                   1158 ;	main.c:170: delay(5);
      003648 90 00 05         [24] 1159 	mov	dptr,#(0x05&0x00ff)
      00364B E4               [12] 1160 	clr	a
      00364C F5 F0            [12] 1161 	mov	b,a
      00364E C0 07            [24] 1162 	push	ar7
      003650 C0 06            [24] 1163 	push	ar6
      003652 12 30 9B         [24] 1164 	lcall	_delay
                                   1165 ;	main.c:171: lcdbusywait();
      003655 12 30 F3         [24] 1166 	lcall	_lcdbusywait
      003658 D0 06            [24] 1167 	pop	ar6
                                   1168 ;	main.c:172: lcdgotoaddr(address);
      00365A 8E 05            [24] 1169 	mov	ar5,r6
      00365C 8D 82            [24] 1170 	mov	dpl,r5
      00365E C0 06            [24] 1171 	push	ar6
      003660 12 31 5D         [24] 1172 	lcall	_lcdgotoaddr
                                   1173 ;	main.c:173: lcdbusywait();
      003663 12 30 F3         [24] 1174 	lcall	_lcdbusywait
      003666 D0 06            [24] 1175 	pop	ar6
      003668 D0 07            [24] 1176 	pop	ar7
                                   1177 ;	main.c:175: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address);
      00366A C0 06            [24] 1178 	push	ar6
      00366C C0 07            [24] 1179 	push	ar7
      00366E 74 DE            [12] 1180 	mov	a,#___str_19
      003670 C0 E0            [24] 1181 	push	acc
      003672 74 50            [12] 1182 	mov	a,#(___str_19 >> 8)
      003674 C0 E0            [24] 1183 	push	acc
      003676 12 47 0F         [24] 1184 	lcall	_printf_tiny
      003679 E5 81            [12] 1185 	mov	a,sp
      00367B 24 FC            [12] 1186 	add	a,#0xfc
      00367D F5 81            [12] 1187 	mov	sp,a
                                   1188 ;	main.c:177: break;
      00367F 02 35 1D         [24] 1189 	ljmp	00135$
                                   1190 ;	main.c:179: case('G'):                                                                  ///READ OPERATION
      003682                       1191 00105$:
                                   1192 ;	main.c:181: printf_tiny("\n\r********************************************* \n\r");
      003682 74 21            [12] 1193 	mov	a,#___str_14
      003684 C0 E0            [24] 1194 	push	acc
      003686 74 50            [12] 1195 	mov	a,#(___str_14 >> 8)
      003688 C0 E0            [24] 1196 	push	acc
      00368A 12 47 0F         [24] 1197 	lcall	_printf_tiny
      00368D 15 81            [12] 1198 	dec	sp
      00368F 15 81            [12] 1199 	dec	sp
                                   1200 ;	main.c:182: printf_tiny("\n\r\t\tGO TO ADDRESS\n\r ");
      003691 74 54            [12] 1201 	mov	a,#___str_15
      003693 C0 E0            [24] 1202 	push	acc
      003695 74 50            [12] 1203 	mov	a,#(___str_15 >> 8)
      003697 C0 E0            [24] 1204 	push	acc
      003699 12 47 0F         [24] 1205 	lcall	_printf_tiny
      00369C 15 81            [12] 1206 	dec	sp
      00369E 15 81            [12] 1207 	dec	sp
                                   1208 ;	main.c:183: printf_tiny("\n\r********************************************* \n\r");
      0036A0 74 21            [12] 1209 	mov	a,#___str_14
      0036A2 C0 E0            [24] 1210 	push	acc
      0036A4 74 50            [12] 1211 	mov	a,#(___str_14 >> 8)
      0036A6 C0 E0            [24] 1212 	push	acc
      0036A8 12 47 0F         [24] 1213 	lcall	_printf_tiny
      0036AB 15 81            [12] 1214 	dec	sp
      0036AD 15 81            [12] 1215 	dec	sp
                                   1216 ;	main.c:184: printf_tiny("\n\rEnter the row and column\n\r");
      0036AF 74 07            [12] 1217 	mov	a,#___str_20
      0036B1 C0 E0            [24] 1218 	push	acc
      0036B3 74 51            [12] 1219 	mov	a,#(___str_20 >> 8)
      0036B5 C0 E0            [24] 1220 	push	acc
      0036B7 12 47 0F         [24] 1221 	lcall	_printf_tiny
      0036BA 15 81            [12] 1222 	dec	sp
      0036BC 15 81            [12] 1223 	dec	sp
                                   1224 ;	main.c:185: printf_tiny("\n\rEnter the row\n\r");
      0036BE 74 24            [12] 1225 	mov	a,#___str_21
      0036C0 C0 E0            [24] 1226 	push	acc
      0036C2 74 51            [12] 1227 	mov	a,#(___str_21 >> 8)
      0036C4 C0 E0            [24] 1228 	push	acc
      0036C6 12 47 0F         [24] 1229 	lcall	_printf_tiny
      0036C9 15 81            [12] 1230 	dec	sp
      0036CB 15 81            [12] 1231 	dec	sp
                                   1232 ;	main.c:186: int row1=getrow();                                           ///ACCEPTING THE ROW
      0036CD 12 32 D2         [24] 1233 	lcall	_getrow
      0036D0 E5 82            [12] 1234 	mov	a,dpl
      0036D2 85 83 F0         [24] 1235 	mov	b,dph
      0036D5 90 00 18         [24] 1236 	mov	dptr,#_main_row1_327681_75
      0036D8 F0               [24] 1237 	movx	@dptr,a
      0036D9 E5 F0            [12] 1238 	mov	a,b
      0036DB A3               [24] 1239 	inc	dptr
      0036DC F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	main.c:187: while (row1==-1)                                             ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
      0036DD                       1242 00106$:
      0036DD 90 00 18         [24] 1243 	mov	dptr,#_main_row1_327681_75
      0036E0 E0               [24] 1244 	movx	a,@dptr
      0036E1 FE               [12] 1245 	mov	r6,a
      0036E2 A3               [24] 1246 	inc	dptr
      0036E3 E0               [24] 1247 	movx	a,@dptr
      0036E4 FF               [12] 1248 	mov	r7,a
      0036E5 BE FF 33         [24] 1249 	cjne	r6,#0xff,00108$
      0036E8 BF FF 30         [24] 1250 	cjne	r7,#0xff,00108$
                                   1251 ;	main.c:189: printf_tiny ("\n\rRow is INVALID\n\r");
      0036EB 74 36            [12] 1252 	mov	a,#___str_22
      0036ED C0 E0            [24] 1253 	push	acc
      0036EF 74 51            [12] 1254 	mov	a,#(___str_22 >> 8)
      0036F1 C0 E0            [24] 1255 	push	acc
      0036F3 12 47 0F         [24] 1256 	lcall	_printf_tiny
      0036F6 15 81            [12] 1257 	dec	sp
      0036F8 15 81            [12] 1258 	dec	sp
                                   1259 ;	main.c:190: printf_tiny ("\n\rEnter a New Row\n\r");
      0036FA 74 49            [12] 1260 	mov	a,#___str_23
      0036FC C0 E0            [24] 1261 	push	acc
      0036FE 74 51            [12] 1262 	mov	a,#(___str_23 >> 8)
      003700 C0 E0            [24] 1263 	push	acc
      003702 12 47 0F         [24] 1264 	lcall	_printf_tiny
      003705 15 81            [12] 1265 	dec	sp
      003707 15 81            [12] 1266 	dec	sp
                                   1267 ;	main.c:191: row1=getrow();
      003709 12 32 D2         [24] 1268 	lcall	_getrow
      00370C E5 82            [12] 1269 	mov	a,dpl
      00370E 85 83 F0         [24] 1270 	mov	b,dph
      003711 90 00 18         [24] 1271 	mov	dptr,#_main_row1_327681_75
      003714 F0               [24] 1272 	movx	@dptr,a
      003715 E5 F0            [12] 1273 	mov	a,b
      003717 A3               [24] 1274 	inc	dptr
      003718 F0               [24] 1275 	movx	@dptr,a
      003719 80 C2            [24] 1276 	sjmp	00106$
      00371B                       1277 00108$:
                                   1278 ;	main.c:193: printf_tiny("\n\r The row entered is %d\n\r",row1);
      00371B C0 06            [24] 1279 	push	ar6
      00371D C0 07            [24] 1280 	push	ar7
      00371F 74 5D            [12] 1281 	mov	a,#___str_24
      003721 C0 E0            [24] 1282 	push	acc
      003723 74 51            [12] 1283 	mov	a,#(___str_24 >> 8)
      003725 C0 E0            [24] 1284 	push	acc
      003727 12 47 0F         [24] 1285 	lcall	_printf_tiny
      00372A E5 81            [12] 1286 	mov	a,sp
      00372C 24 FC            [12] 1287 	add	a,#0xfc
      00372E F5 81            [12] 1288 	mov	sp,a
                                   1289 ;	main.c:194: printf_tiny("\n\rEnter the column\n\r");
      003730 74 78            [12] 1290 	mov	a,#___str_25
      003732 C0 E0            [24] 1291 	push	acc
      003734 74 51            [12] 1292 	mov	a,#(___str_25 >> 8)
      003736 C0 E0            [24] 1293 	push	acc
      003738 12 47 0F         [24] 1294 	lcall	_printf_tiny
      00373B 15 81            [12] 1295 	dec	sp
      00373D 15 81            [12] 1296 	dec	sp
                                   1297 ;	main.c:195: int column1=getcol();                                         ///ACCEPTING THE ADDRESS
      00373F 12 33 13         [24] 1298 	lcall	_getcol
      003742 E5 82            [12] 1299 	mov	a,dpl
      003744 85 83 F0         [24] 1300 	mov	b,dph
      003747 90 00 1A         [24] 1301 	mov	dptr,#_main_column1_327682_77
      00374A F0               [24] 1302 	movx	@dptr,a
      00374B E5 F0            [12] 1303 	mov	a,b
      00374D A3               [24] 1304 	inc	dptr
      00374E F0               [24] 1305 	movx	@dptr,a
                                   1306 ;	main.c:196: while (!((column1 <= 15) && (column1>=0)))                    ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
      00374F                       1307 00110$:
      00374F 90 00 1A         [24] 1308 	mov	dptr,#_main_column1_327682_77
      003752 E0               [24] 1309 	movx	a,@dptr
      003753 FE               [12] 1310 	mov	r6,a
      003754 A3               [24] 1311 	inc	dptr
      003755 E0               [24] 1312 	movx	a,@dptr
      003756 FF               [12] 1313 	mov	r7,a
      003757 C3               [12] 1314 	clr	c
      003758 74 0F            [12] 1315 	mov	a,#0x0f
      00375A 9E               [12] 1316 	subb	a,r6
      00375B 74 80            [12] 1317 	mov	a,#(0x00 ^ 0x80)
      00375D 8F F0            [24] 1318 	mov	b,r7
      00375F 63 F0 80         [24] 1319 	xrl	b,#0x80
      003762 95 F0            [12] 1320 	subb	a,b
      003764 40 04            [24] 1321 	jc	00111$
      003766 EF               [12] 1322 	mov	a,r7
      003767 30 E7 30         [24] 1323 	jnb	acc.7,00112$
      00376A                       1324 00111$:
                                   1325 ;	main.c:198: printf_tiny ("\n\rColumn is INVALID\n\r");
      00376A 74 8D            [12] 1326 	mov	a,#___str_26
      00376C C0 E0            [24] 1327 	push	acc
      00376E 74 51            [12] 1328 	mov	a,#(___str_26 >> 8)
      003770 C0 E0            [24] 1329 	push	acc
      003772 12 47 0F         [24] 1330 	lcall	_printf_tiny
      003775 15 81            [12] 1331 	dec	sp
      003777 15 81            [12] 1332 	dec	sp
                                   1333 ;	main.c:199: printf_tiny ("\n\rEnter a New Column\n\r");
      003779 74 A3            [12] 1334 	mov	a,#___str_27
      00377B C0 E0            [24] 1335 	push	acc
      00377D 74 51            [12] 1336 	mov	a,#(___str_27 >> 8)
      00377F C0 E0            [24] 1337 	push	acc
      003781 12 47 0F         [24] 1338 	lcall	_printf_tiny
      003784 15 81            [12] 1339 	dec	sp
      003786 15 81            [12] 1340 	dec	sp
                                   1341 ;	main.c:200: column1=getcol();
      003788 12 33 13         [24] 1342 	lcall	_getcol
      00378B E5 82            [12] 1343 	mov	a,dpl
      00378D 85 83 F0         [24] 1344 	mov	b,dph
      003790 90 00 1A         [24] 1345 	mov	dptr,#_main_column1_327682_77
      003793 F0               [24] 1346 	movx	@dptr,a
      003794 E5 F0            [12] 1347 	mov	a,b
      003796 A3               [24] 1348 	inc	dptr
      003797 F0               [24] 1349 	movx	@dptr,a
      003798 80 B5            [24] 1350 	sjmp	00110$
      00379A                       1351 00112$:
                                   1352 ;	main.c:202: printf_tiny("\n\r The column entered is %d\n\r",column1);
      00379A C0 07            [24] 1353 	push	ar7
      00379C C0 06            [24] 1354 	push	ar6
      00379E C0 06            [24] 1355 	push	ar6
      0037A0 C0 07            [24] 1356 	push	ar7
      0037A2 74 BA            [12] 1357 	mov	a,#___str_28
      0037A4 C0 E0            [24] 1358 	push	acc
      0037A6 74 51            [12] 1359 	mov	a,#(___str_28 >> 8)
      0037A8 C0 E0            [24] 1360 	push	acc
      0037AA 12 47 0F         [24] 1361 	lcall	_printf_tiny
      0037AD E5 81            [12] 1362 	mov	a,sp
      0037AF 24 FC            [12] 1363 	add	a,#0xfc
      0037B1 F5 81            [12] 1364 	mov	sp,a
                                   1365 ;	main.c:203: delay(5);
      0037B3 90 00 05         [24] 1366 	mov	dptr,#(0x05&0x00ff)
      0037B6 E4               [12] 1367 	clr	a
      0037B7 F5 F0            [12] 1368 	mov	b,a
      0037B9 12 30 9B         [24] 1369 	lcall	_delay
                                   1370 ;	main.c:204: lcdbusywait();
      0037BC 12 30 F3         [24] 1371 	lcall	_lcdbusywait
      0037BF D0 06            [24] 1372 	pop	ar6
      0037C1 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	main.c:205: lcdgotoxy(row1,column1);                                    ///GOTO THE DESIRED ROW COLUMN
      0037C3 90 00 18         [24] 1375 	mov	dptr,#_main_row1_327681_75
      0037C6 E0               [24] 1376 	movx	a,@dptr
      0037C7 FC               [12] 1377 	mov	r4,a
      0037C8 A3               [24] 1378 	inc	dptr
      0037C9 E0               [24] 1379 	movx	a,@dptr
      0037CA 90 00 06         [24] 1380 	mov	dptr,#_lcdgotoxy_PARM_2
      0037CD EE               [12] 1381 	mov	a,r6
      0037CE F0               [24] 1382 	movx	@dptr,a
      0037CF 8C 82            [24] 1383 	mov	dpl,r4
      0037D1 12 31 69         [24] 1384 	lcall	_lcdgotoxy
                                   1385 ;	main.c:206: lcdbusywait();
      0037D4 12 30 F3         [24] 1386 	lcall	_lcdbusywait
                                   1387 ;	main.c:207: break;
      0037D7 02 35 1D         [24] 1388 	ljmp	00135$
                                   1389 ;	main.c:209: case ('C'):
      0037DA                       1390 00113$:
                                   1391 ;	main.c:211: printf_tiny("\n\r********************************************* \n\r");
      0037DA 74 21            [12] 1392 	mov	a,#___str_14
      0037DC C0 E0            [24] 1393 	push	acc
      0037DE 74 50            [12] 1394 	mov	a,#(___str_14 >> 8)
      0037E0 C0 E0            [24] 1395 	push	acc
      0037E2 12 47 0F         [24] 1396 	lcall	_printf_tiny
      0037E5 15 81            [12] 1397 	dec	sp
      0037E7 15 81            [12] 1398 	dec	sp
                                   1399 ;	main.c:212: printf_tiny("\n\r\t\\t CLEAR THE SCREEN\n\r");
      0037E9 74 D8            [12] 1400 	mov	a,#___str_29
      0037EB C0 E0            [24] 1401 	push	acc
      0037ED 74 51            [12] 1402 	mov	a,#(___str_29 >> 8)
      0037EF C0 E0            [24] 1403 	push	acc
      0037F1 12 47 0F         [24] 1404 	lcall	_printf_tiny
      0037F4 15 81            [12] 1405 	dec	sp
      0037F6 15 81            [12] 1406 	dec	sp
                                   1407 ;	main.c:213: printf_tiny("\n\r********************************************* \n\r");
      0037F8 74 21            [12] 1408 	mov	a,#___str_14
      0037FA C0 E0            [24] 1409 	push	acc
      0037FC 74 50            [12] 1410 	mov	a,#(___str_14 >> 8)
      0037FE C0 E0            [24] 1411 	push	acc
      003800 12 47 0F         [24] 1412 	lcall	_printf_tiny
      003803 15 81            [12] 1413 	dec	sp
      003805 15 81            [12] 1414 	dec	sp
                                   1415 ;	main.c:214: lcdbusywait();                                            ///CLEAR THE SCREEN
      003807 12 30 F3         [24] 1416 	lcall	_lcdbusywait
                                   1417 ;	main.c:215: lcd_clear_screen();
      00380A 12 31 56         [24] 1418 	lcall	_lcd_clear_screen
                                   1419 ;	main.c:216: delay(5);
      00380D 90 00 05         [24] 1420 	mov	dptr,#(0x05&0x00ff)
      003810 E4               [12] 1421 	clr	a
      003811 F5 F0            [12] 1422 	mov	b,a
      003813 12 30 9B         [24] 1423 	lcall	_delay
                                   1424 ;	main.c:217: lcdbusywait();
      003816 12 30 F3         [24] 1425 	lcall	_lcdbusywait
                                   1426 ;	main.c:218: break;
      003819 02 35 1D         [24] 1427 	ljmp	00135$
                                   1428 ;	main.c:220: case ('W'):
      00381C                       1429 00114$:
                                   1430 ;	main.c:222: printf_tiny("\n\r********************************************* \n\r");
      00381C 74 21            [12] 1431 	mov	a,#___str_14
      00381E C0 E0            [24] 1432 	push	acc
      003820 74 50            [12] 1433 	mov	a,#(___str_14 >> 8)
      003822 C0 E0            [24] 1434 	push	acc
      003824 12 47 0F         [24] 1435 	lcall	_printf_tiny
      003827 15 81            [12] 1436 	dec	sp
      003829 15 81            [12] 1437 	dec	sp
                                   1438 ;	main.c:223: printf_tiny("\n\r\t\tWRITE THE CHARACTER ON LCD\n\r");
      00382B 74 F1            [12] 1439 	mov	a,#___str_30
      00382D C0 E0            [24] 1440 	push	acc
      00382F 74 51            [12] 1441 	mov	a,#(___str_30 >> 8)
      003831 C0 E0            [24] 1442 	push	acc
      003833 12 47 0F         [24] 1443 	lcall	_printf_tiny
      003836 15 81            [12] 1444 	dec	sp
      003838 15 81            [12] 1445 	dec	sp
                                   1446 ;	main.c:224: printf_tiny("\n\r********************************************* \n\r");
      00383A 74 21            [12] 1447 	mov	a,#___str_14
      00383C C0 E0            [24] 1448 	push	acc
      00383E 74 50            [12] 1449 	mov	a,#(___str_14 >> 8)
      003840 C0 E0            [24] 1450 	push	acc
      003842 12 47 0F         [24] 1451 	lcall	_printf_tiny
      003845 15 81            [12] 1452 	dec	sp
      003847 15 81            [12] 1453 	dec	sp
                                   1454 ;	main.c:225: printf_tiny("\n\rEnter the 2 Digit LCD DDRAM Address for writing the character\n\r");
      003849 74 12            [12] 1455 	mov	a,#___str_31
      00384B C0 E0            [24] 1456 	push	acc
      00384D 74 52            [12] 1457 	mov	a,#(___str_31 >> 8)
      00384F C0 E0            [24] 1458 	push	acc
      003851 12 47 0F         [24] 1459 	lcall	_printf_tiny
      003854 15 81            [12] 1460 	dec	sp
      003856 15 81            [12] 1461 	dec	sp
                                   1462 ;	main.c:226: address1=getadd();                                  ///ACCEPTING THE DDRAM ADDRESS
      003858 12 33 25         [24] 1463 	lcall	_getadd
      00385B AE 82            [24] 1464 	mov	r6,dpl
      00385D AF 83            [24] 1465 	mov	r7,dph
      00385F 90 00 9B         [24] 1466 	mov	dptr,#_address1
      003862 EE               [12] 1467 	mov	a,r6
      003863 F0               [24] 1468 	movx	@dptr,a
                                   1469 ;	main.c:227: while (address1==-1)                                ///PRINT DDRAM ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      003864                       1470 00115$:
      003864 90 00 9B         [24] 1471 	mov	dptr,#_address1
      003867 E0               [24] 1472 	movx	a,@dptr
      003868 FF               [12] 1473 	mov	r7,a
      003869 BF FF 4A         [24] 1474 	cjne	r7,#0xff,00117$
                                   1475 ;	main.c:229: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address Entered is INVALID\n\r",address1);
      00386C 90 00 9B         [24] 1476 	mov	dptr,#_address1
      00386F E0               [24] 1477 	movx	a,@dptr
      003870 FF               [12] 1478 	mov	r7,a
      003871 33               [12] 1479 	rlc	a
      003872 95 E0            [12] 1480 	subb	a,acc
      003874 FE               [12] 1481 	mov	r6,a
      003875 C0 07            [24] 1482 	push	ar7
      003877 C0 06            [24] 1483 	push	ar6
      003879 74 91            [12] 1484 	mov	a,#___str_17
      00387B C0 E0            [24] 1485 	push	acc
      00387D 74 50            [12] 1486 	mov	a,#(___str_17 >> 8)
      00387F C0 E0            [24] 1487 	push	acc
      003881 12 47 0F         [24] 1488 	lcall	_printf_tiny
      003884 E5 81            [12] 1489 	mov	a,sp
      003886 24 FC            [12] 1490 	add	a,#0xfc
      003888 F5 81            [12] 1491 	mov	sp,a
                                   1492 ;	main.c:230: printf_tiny ("\n\rEnter a New Address\n\r",address1);
      00388A 90 00 9B         [24] 1493 	mov	dptr,#_address1
      00388D E0               [24] 1494 	movx	a,@dptr
      00388E FF               [12] 1495 	mov	r7,a
      00388F 33               [12] 1496 	rlc	a
      003890 95 E0            [12] 1497 	subb	a,acc
      003892 FE               [12] 1498 	mov	r6,a
      003893 C0 07            [24] 1499 	push	ar7
      003895 C0 06            [24] 1500 	push	ar6
      003897 74 C6            [12] 1501 	mov	a,#___str_18
      003899 C0 E0            [24] 1502 	push	acc
      00389B 74 50            [12] 1503 	mov	a,#(___str_18 >> 8)
      00389D C0 E0            [24] 1504 	push	acc
      00389F 12 47 0F         [24] 1505 	lcall	_printf_tiny
      0038A2 E5 81            [12] 1506 	mov	a,sp
      0038A4 24 FC            [12] 1507 	add	a,#0xfc
      0038A6 F5 81            [12] 1508 	mov	sp,a
                                   1509 ;	main.c:231: address1=getadd();
      0038A8 12 33 25         [24] 1510 	lcall	_getadd
      0038AB AE 82            [24] 1511 	mov	r6,dpl
      0038AD AF 83            [24] 1512 	mov	r7,dph
      0038AF 90 00 9B         [24] 1513 	mov	dptr,#_address1
      0038B2 EE               [12] 1514 	mov	a,r6
      0038B3 F0               [24] 1515 	movx	@dptr,a
      0038B4 80 AE            [24] 1516 	sjmp	00115$
      0038B6                       1517 00117$:
                                   1518 ;	main.c:233: delay(5);
      0038B6 90 00 05         [24] 1519 	mov	dptr,#(0x05&0x00ff)
      0038B9 E4               [12] 1520 	clr	a
      0038BA F5 F0            [12] 1521 	mov	b,a
      0038BC 12 30 9B         [24] 1522 	lcall	_delay
                                   1523 ;	main.c:234: lcdgotoaddr(address1);
      0038BF 90 00 9B         [24] 1524 	mov	dptr,#_address1
      0038C2 E0               [24] 1525 	movx	a,@dptr
      0038C3 F5 82            [12] 1526 	mov	dpl,a
      0038C5 12 31 5D         [24] 1527 	lcall	_lcdgotoaddr
                                   1528 ;	main.c:235: printf_tiny ("\n\rThe 2 Digit LCD DDRAM Address is %x.\n\r",address1);
      0038C8 90 00 9B         [24] 1529 	mov	dptr,#_address1
      0038CB E0               [24] 1530 	movx	a,@dptr
      0038CC FF               [12] 1531 	mov	r7,a
      0038CD 33               [12] 1532 	rlc	a
      0038CE 95 E0            [12] 1533 	subb	a,acc
      0038D0 FE               [12] 1534 	mov	r6,a
      0038D1 C0 07            [24] 1535 	push	ar7
      0038D3 C0 06            [24] 1536 	push	ar6
      0038D5 74 DE            [12] 1537 	mov	a,#___str_19
      0038D7 C0 E0            [24] 1538 	push	acc
      0038D9 74 50            [12] 1539 	mov	a,#(___str_19 >> 8)
      0038DB C0 E0            [24] 1540 	push	acc
      0038DD 12 47 0F         [24] 1541 	lcall	_printf_tiny
      0038E0 E5 81            [12] 1542 	mov	a,sp
      0038E2 24 FC            [12] 1543 	add	a,#0xfc
      0038E4 F5 81            [12] 1544 	mov	sp,a
                                   1545 ;	main.c:236: printf_tiny("\n\r ENTER A CHARACTER\n\r");
      0038E6 74 54            [12] 1546 	mov	a,#___str_32
      0038E8 C0 E0            [24] 1547 	push	acc
      0038EA 74 52            [12] 1548 	mov	a,#(___str_32 >> 8)
      0038EC C0 E0            [24] 1549 	push	acc
      0038EE 12 47 0F         [24] 1550 	lcall	_printf_tiny
      0038F1 15 81            [12] 1551 	dec	sp
      0038F3 15 81            [12] 1552 	dec	sp
                                   1553 ;	main.c:237: ch=getchar();
      0038F5 12 3C 04         [24] 1554 	lcall	_getchar
      0038F8 AE 82            [24] 1555 	mov	r6,dpl
      0038FA 90 00 95         [24] 1556 	mov	dptr,#_ch
      0038FD EE               [12] 1557 	mov	a,r6
      0038FE F0               [24] 1558 	movx	@dptr,a
                                   1559 ;	main.c:238: putchar(ch);
      0038FF E0               [24] 1560 	movx	a,@dptr
      003900 FF               [12] 1561 	mov	r7,a
      003901 7E 00            [12] 1562 	mov	r6,#0x00
      003903 8F 82            [24] 1563 	mov	dpl,r7
      003905 8E 83            [24] 1564 	mov	dph,r6
      003907 12 3B E7         [24] 1565 	lcall	_putchar
                                   1566 ;	main.c:239: delay(5);
      00390A 90 00 05         [24] 1567 	mov	dptr,#(0x05&0x00ff)
      00390D E4               [12] 1568 	clr	a
      00390E F5 F0            [12] 1569 	mov	b,a
      003910 12 30 9B         [24] 1570 	lcall	_delay
                                   1571 ;	main.c:240: lcdbusywait();
      003913 12 30 F3         [24] 1572 	lcall	_lcdbusywait
                                   1573 ;	main.c:241: lcdputch(ch);                                         ///PRITNING THE CHARACTER
      003916 90 00 95         [24] 1574 	mov	dptr,#_ch
      003919 E0               [24] 1575 	movx	a,@dptr
      00391A F5 82            [12] 1576 	mov	dpl,a
      00391C 12 31 E5         [24] 1577 	lcall	_lcdputch
                                   1578 ;	main.c:242: lcdbusywait();
      00391F 12 30 F3         [24] 1579 	lcall	_lcdbusywait
                                   1580 ;	main.c:243: break;
      003922 02 35 1D         [24] 1581 	ljmp	00135$
                                   1582 ;	main.c:245: case('P'):
      003925                       1583 00118$:
                                   1584 ;	main.c:247: printf_tiny("\n\r********************************************* \n\r");
      003925 74 21            [12] 1585 	mov	a,#___str_14
      003927 C0 E0            [24] 1586 	push	acc
      003929 74 50            [12] 1587 	mov	a,#(___str_14 >> 8)
      00392B C0 E0            [24] 1588 	push	acc
      00392D 12 47 0F         [24] 1589 	lcall	_printf_tiny
      003930 15 81            [12] 1590 	dec	sp
      003932 15 81            [12] 1591 	dec	sp
                                   1592 ;	main.c:248: printf_tiny("\n\r********************************************* \n\r");
      003934 74 21            [12] 1593 	mov	a,#___str_14
      003936 C0 E0            [24] 1594 	push	acc
      003938 74 50            [12] 1595 	mov	a,#(___str_14 >> 8)
      00393A C0 E0            [24] 1596 	push	acc
      00393C 12 47 0F         [24] 1597 	lcall	_printf_tiny
      00393F 15 81            [12] 1598 	dec	sp
      003941 15 81            [12] 1599 	dec	sp
                                   1600 ;	main.c:249: printf_tiny("\n\r\t\tPRINT THE STRING\n\r");
      003943 74 6B            [12] 1601 	mov	a,#___str_33
      003945 C0 E0            [24] 1602 	push	acc
      003947 74 52            [12] 1603 	mov	a,#(___str_33 >> 8)
      003949 C0 E0            [24] 1604 	push	acc
      00394B 12 47 0F         [24] 1605 	lcall	_printf_tiny
      00394E 15 81            [12] 1606 	dec	sp
      003950 15 81            [12] 1607 	dec	sp
                                   1608 ;	main.c:250: printf_tiny("\n\rEnter the row and column for writing the string\n\r");
      003952 74 82            [12] 1609 	mov	a,#___str_34
      003954 C0 E0            [24] 1610 	push	acc
      003956 74 52            [12] 1611 	mov	a,#(___str_34 >> 8)
      003958 C0 E0            [24] 1612 	push	acc
      00395A 12 47 0F         [24] 1613 	lcall	_printf_tiny
      00395D 15 81            [12] 1614 	dec	sp
      00395F 15 81            [12] 1615 	dec	sp
                                   1616 ;	main.c:251: printf_tiny("\n\rEnter the row\n\r");
      003961 74 24            [12] 1617 	mov	a,#___str_21
      003963 C0 E0            [24] 1618 	push	acc
      003965 74 51            [12] 1619 	mov	a,#(___str_21 >> 8)
      003967 C0 E0            [24] 1620 	push	acc
      003969 12 47 0F         [24] 1621 	lcall	_printf_tiny
      00396C 15 81            [12] 1622 	dec	sp
      00396E 15 81            [12] 1623 	dec	sp
                                   1624 ;	main.c:252: row2=getrow();                                           ///ACCEPTING THE ROW
      003970 12 32 D2         [24] 1625 	lcall	_getrow
      003973 AE 82            [24] 1626 	mov	r6,dpl
      003975 AF 83            [24] 1627 	mov	r7,dph
      003977 90 00 96         [24] 1628 	mov	dptr,#_row2
      00397A EE               [12] 1629 	mov	a,r6
      00397B F0               [24] 1630 	movx	@dptr,a
                                   1631 ;	main.c:253: while (row2==-1)                                         ///PRINT ROW IS INVALID FOR INVALID CHARACTERS ENTERED
      00397C                       1632 00119$:
      00397C 90 00 96         [24] 1633 	mov	dptr,#_row2
      00397F E0               [24] 1634 	movx	a,@dptr
      003980 FF               [12] 1635 	mov	r7,a
      003981 BF FF 2C         [24] 1636 	cjne	r7,#0xff,00121$
                                   1637 ;	main.c:255: printf_tiny ("\n\rRow is INVALID\n\r");
      003984 74 36            [12] 1638 	mov	a,#___str_22
      003986 C0 E0            [24] 1639 	push	acc
      003988 74 51            [12] 1640 	mov	a,#(___str_22 >> 8)
      00398A C0 E0            [24] 1641 	push	acc
      00398C 12 47 0F         [24] 1642 	lcall	_printf_tiny
      00398F 15 81            [12] 1643 	dec	sp
      003991 15 81            [12] 1644 	dec	sp
                                   1645 ;	main.c:256: printf_tiny ("\n\rEnter a New Row\n\r");
      003993 74 49            [12] 1646 	mov	a,#___str_23
      003995 C0 E0            [24] 1647 	push	acc
      003997 74 51            [12] 1648 	mov	a,#(___str_23 >> 8)
      003999 C0 E0            [24] 1649 	push	acc
      00399B 12 47 0F         [24] 1650 	lcall	_printf_tiny
      00399E 15 81            [12] 1651 	dec	sp
      0039A0 15 81            [12] 1652 	dec	sp
                                   1653 ;	main.c:257: row2=getrow();
      0039A2 12 32 D2         [24] 1654 	lcall	_getrow
      0039A5 AE 82            [24] 1655 	mov	r6,dpl
      0039A7 AF 83            [24] 1656 	mov	r7,dph
      0039A9 90 00 96         [24] 1657 	mov	dptr,#_row2
      0039AC EE               [12] 1658 	mov	a,r6
      0039AD F0               [24] 1659 	movx	@dptr,a
      0039AE 80 CC            [24] 1660 	sjmp	00119$
      0039B0                       1661 00121$:
                                   1662 ;	main.c:259: printf_tiny("\n\r The row entered is %d\n\r",row2);
      0039B0 90 00 96         [24] 1663 	mov	dptr,#_row2
      0039B3 E0               [24] 1664 	movx	a,@dptr
      0039B4 FF               [12] 1665 	mov	r7,a
      0039B5 33               [12] 1666 	rlc	a
      0039B6 95 E0            [12] 1667 	subb	a,acc
      0039B8 FE               [12] 1668 	mov	r6,a
      0039B9 C0 07            [24] 1669 	push	ar7
      0039BB C0 06            [24] 1670 	push	ar6
      0039BD 74 5D            [12] 1671 	mov	a,#___str_24
      0039BF C0 E0            [24] 1672 	push	acc
      0039C1 74 51            [12] 1673 	mov	a,#(___str_24 >> 8)
      0039C3 C0 E0            [24] 1674 	push	acc
      0039C5 12 47 0F         [24] 1675 	lcall	_printf_tiny
      0039C8 E5 81            [12] 1676 	mov	a,sp
      0039CA 24 FC            [12] 1677 	add	a,#0xfc
      0039CC F5 81            [12] 1678 	mov	sp,a
                                   1679 ;	main.c:260: printf_tiny("\n\rEnter the column\n\r");
      0039CE 74 78            [12] 1680 	mov	a,#___str_25
      0039D0 C0 E0            [24] 1681 	push	acc
      0039D2 74 51            [12] 1682 	mov	a,#(___str_25 >> 8)
      0039D4 C0 E0            [24] 1683 	push	acc
      0039D6 12 47 0F         [24] 1684 	lcall	_printf_tiny
      0039D9 15 81            [12] 1685 	dec	sp
      0039DB 15 81            [12] 1686 	dec	sp
                                   1687 ;	main.c:261: column2=getcol();                                           ///ACCEPTING THE COLUMN
      0039DD 12 33 13         [24] 1688 	lcall	_getcol
      0039E0 AE 82            [24] 1689 	mov	r6,dpl
      0039E2 AF 83            [24] 1690 	mov	r7,dph
      0039E4 90 00 97         [24] 1691 	mov	dptr,#_column2
      0039E7 EE               [12] 1692 	mov	a,r6
      0039E8 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	main.c:262: while (!((column2 <= 15) && (column2>=0)))                  ///PRINT COLUMN IS INVALID FOR INVALID CHARACTERS ENTERED
      0039E9                       1695 00123$:
      0039E9 90 00 97         [24] 1696 	mov	dptr,#_column2
      0039EC E0               [24] 1697 	movx	a,@dptr
      0039ED FF               [12] 1698 	mov	r7,a
      0039EE C3               [12] 1699 	clr	c
      0039EF 74 8F            [12] 1700 	mov	a,#(0x0f ^ 0x80)
      0039F1 8F F0            [24] 1701 	mov	b,r7
      0039F3 63 F0 80         [24] 1702 	xrl	b,#0x80
      0039F6 95 F0            [12] 1703 	subb	a,b
      0039F8 40 08            [24] 1704 	jc	00124$
      0039FA 90 00 97         [24] 1705 	mov	dptr,#_column2
      0039FD E0               [24] 1706 	movx	a,@dptr
      0039FE FF               [12] 1707 	mov	r7,a
      0039FF 30 E7 2C         [24] 1708 	jnb	acc.7,00125$
      003A02                       1709 00124$:
                                   1710 ;	main.c:265: printf_tiny ("\n\rColumn is INVALID\n\r");
      003A02 74 8D            [12] 1711 	mov	a,#___str_26
      003A04 C0 E0            [24] 1712 	push	acc
      003A06 74 51            [12] 1713 	mov	a,#(___str_26 >> 8)
      003A08 C0 E0            [24] 1714 	push	acc
      003A0A 12 47 0F         [24] 1715 	lcall	_printf_tiny
      003A0D 15 81            [12] 1716 	dec	sp
      003A0F 15 81            [12] 1717 	dec	sp
                                   1718 ;	main.c:266: printf_tiny ("\n\rEnter a New Column\n\r");
      003A11 74 A3            [12] 1719 	mov	a,#___str_27
      003A13 C0 E0            [24] 1720 	push	acc
      003A15 74 51            [12] 1721 	mov	a,#(___str_27 >> 8)
      003A17 C0 E0            [24] 1722 	push	acc
      003A19 12 47 0F         [24] 1723 	lcall	_printf_tiny
      003A1C 15 81            [12] 1724 	dec	sp
      003A1E 15 81            [12] 1725 	dec	sp
                                   1726 ;	main.c:267: column2=getcol();
      003A20 12 33 13         [24] 1727 	lcall	_getcol
      003A23 AE 82            [24] 1728 	mov	r6,dpl
      003A25 AF 83            [24] 1729 	mov	r7,dph
      003A27 90 00 97         [24] 1730 	mov	dptr,#_column2
      003A2A EE               [12] 1731 	mov	a,r6
      003A2B F0               [24] 1732 	movx	@dptr,a
      003A2C 80 BB            [24] 1733 	sjmp	00123$
      003A2E                       1734 00125$:
                                   1735 ;	main.c:269: printf_tiny("\n\r The column entered is %d\n\r",column2);
      003A2E 90 00 97         [24] 1736 	mov	dptr,#_column2
      003A31 E0               [24] 1737 	movx	a,@dptr
      003A32 FF               [12] 1738 	mov	r7,a
      003A33 33               [12] 1739 	rlc	a
      003A34 95 E0            [12] 1740 	subb	a,acc
      003A36 FE               [12] 1741 	mov	r6,a
      003A37 C0 07            [24] 1742 	push	ar7
      003A39 C0 06            [24] 1743 	push	ar6
      003A3B 74 BA            [12] 1744 	mov	a,#___str_28
      003A3D C0 E0            [24] 1745 	push	acc
      003A3F 74 51            [12] 1746 	mov	a,#(___str_28 >> 8)
      003A41 C0 E0            [24] 1747 	push	acc
      003A43 12 47 0F         [24] 1748 	lcall	_printf_tiny
      003A46 E5 81            [12] 1749 	mov	a,sp
      003A48 24 FC            [12] 1750 	add	a,#0xfc
      003A4A F5 81            [12] 1751 	mov	sp,a
                                   1752 ;	main.c:270: lcdbusywait();
      003A4C 12 30 F3         [24] 1753 	lcall	_lcdbusywait
                                   1754 ;	main.c:271: lcdgotoxy(row2,column2);                                   ///GO TO THE ROW AND COLUMN MENTIONED
      003A4F 90 00 96         [24] 1755 	mov	dptr,#_row2
      003A52 E0               [24] 1756 	movx	a,@dptr
      003A53 FF               [12] 1757 	mov	r7,a
      003A54 90 00 97         [24] 1758 	mov	dptr,#_column2
      003A57 E0               [24] 1759 	movx	a,@dptr
      003A58 90 00 06         [24] 1760 	mov	dptr,#_lcdgotoxy_PARM_2
      003A5B F0               [24] 1761 	movx	@dptr,a
      003A5C 8F 82            [24] 1762 	mov	dpl,r7
      003A5E 12 31 69         [24] 1763 	lcall	_lcdgotoxy
                                   1764 ;	main.c:272: lcdbusywait();
      003A61 12 30 F3         [24] 1765 	lcall	_lcdbusywait
                                   1766 ;	main.c:273: printf_tiny("\n\r ENTER THE STRING WHICH NEEDS TO BE PRINTED\n\r");
      003A64 74 B6            [12] 1767 	mov	a,#___str_35
      003A66 C0 E0            [24] 1768 	push	acc
      003A68 74 52            [12] 1769 	mov	a,#(___str_35 >> 8)
      003A6A C0 E0            [24] 1770 	push	acc
      003A6C 12 47 0F         [24] 1771 	lcall	_printf_tiny
      003A6F 15 81            [12] 1772 	dec	sp
      003A71 15 81            [12] 1773 	dec	sp
                                   1774 ;	main.c:274: string=getdata();                                           ///TAKE STRING FROM THE USER
      003A73 12 32 C2         [24] 1775 	lcall	_getdata
      003A76 AD 82            [24] 1776 	mov	r5,dpl
      003A78 AE 83            [24] 1777 	mov	r6,dph
      003A7A AF F0            [24] 1778 	mov	r7,b
      003A7C 90 00 98         [24] 1779 	mov	dptr,#_string
      003A7F ED               [12] 1780 	mov	a,r5
      003A80 F0               [24] 1781 	movx	@dptr,a
      003A81 EE               [12] 1782 	mov	a,r6
      003A82 A3               [24] 1783 	inc	dptr
      003A83 F0               [24] 1784 	movx	@dptr,a
      003A84 EF               [12] 1785 	mov	a,r7
      003A85 A3               [24] 1786 	inc	dptr
      003A86 F0               [24] 1787 	movx	@dptr,a
                                   1788 ;	main.c:275: delay(5);
      003A87 90 00 05         [24] 1789 	mov	dptr,#(0x05&0x00ff)
      003A8A E4               [12] 1790 	clr	a
      003A8B F5 F0            [12] 1791 	mov	b,a
      003A8D 12 30 9B         [24] 1792 	lcall	_delay
                                   1793 ;	main.c:276: lcdbusywait();
      003A90 12 30 F3         [24] 1794 	lcall	_lcdbusywait
                                   1795 ;	main.c:277: lcdputstr(string);                                          ///PRINT THE STRING AT THE REQUIRED LOCATION
      003A93 90 00 98         [24] 1796 	mov	dptr,#_string
      003A96 E0               [24] 1797 	movx	a,@dptr
      003A97 FD               [12] 1798 	mov	r5,a
      003A98 A3               [24] 1799 	inc	dptr
      003A99 E0               [24] 1800 	movx	a,@dptr
      003A9A FE               [12] 1801 	mov	r6,a
      003A9B A3               [24] 1802 	inc	dptr
      003A9C E0               [24] 1803 	movx	a,@dptr
      003A9D FF               [12] 1804 	mov	r7,a
      003A9E 8D 82            [24] 1805 	mov	dpl,r5
      003AA0 8E 83            [24] 1806 	mov	dph,r6
      003AA2 8F F0            [24] 1807 	mov	b,r7
      003AA4 12 31 FC         [24] 1808 	lcall	_lcdputstr
                                   1809 ;	main.c:278: lcdbusywait();
      003AA7 12 30 F3         [24] 1810 	lcall	_lcdbusywait
                                   1811 ;	main.c:279: break;
      003AAA 02 35 1D         [24] 1812 	ljmp	00135$
                                   1813 ;	main.c:282: case('R'):
      003AAD                       1814 00126$:
                                   1815 ;	main.c:284: printf_tiny("\n\r********************************************* \n\r");
      003AAD 74 21            [12] 1816 	mov	a,#___str_14
      003AAF C0 E0            [24] 1817 	push	acc
      003AB1 74 50            [12] 1818 	mov	a,#(___str_14 >> 8)
      003AB3 C0 E0            [24] 1819 	push	acc
      003AB5 12 47 0F         [24] 1820 	lcall	_printf_tiny
      003AB8 15 81            [12] 1821 	dec	sp
      003ABA 15 81            [12] 1822 	dec	sp
                                   1823 ;	main.c:285: printf_tiny("\n\r\t\tRESTART THE TIMER\n\r");
      003ABC 74 E6            [12] 1824 	mov	a,#___str_36
      003ABE C0 E0            [24] 1825 	push	acc
      003AC0 74 52            [12] 1826 	mov	a,#(___str_36 >> 8)
      003AC2 C0 E0            [24] 1827 	push	acc
      003AC4 12 47 0F         [24] 1828 	lcall	_printf_tiny
      003AC7 15 81            [12] 1829 	dec	sp
      003AC9 15 81            [12] 1830 	dec	sp
                                   1831 ;	main.c:286: printf_tiny("\n\r********************************************* \n\r");
      003ACB 74 21            [12] 1832 	mov	a,#___str_14
      003ACD C0 E0            [24] 1833 	push	acc
      003ACF 74 50            [12] 1834 	mov	a,#(___str_14 >> 8)
      003AD1 C0 E0            [24] 1835 	push	acc
      003AD3 12 47 0F         [24] 1836 	lcall	_printf_tiny
      003AD6 15 81            [12] 1837 	dec	sp
      003AD8 15 81            [12] 1838 	dec	sp
                                   1839 ;	main.c:287: mili=0;
      003ADA 90 00 A0         [24] 1840 	mov	dptr,#_mili
      003ADD E4               [12] 1841 	clr	a
      003ADE F0               [24] 1842 	movx	@dptr,a
      003ADF A3               [24] 1843 	inc	dptr
      003AE0 F0               [24] 1844 	movx	@dptr,a
      003AE1 A3               [24] 1845 	inc	dptr
      003AE2 F0               [24] 1846 	movx	@dptr,a
      003AE3 A3               [24] 1847 	inc	dptr
      003AE4 F0               [24] 1848 	movx	@dptr,a
                                   1849 ;	main.c:288: mili_value=0;
      003AE5 90 00 A4         [24] 1850 	mov	dptr,#_mili_value
      003AE8 F0               [24] 1851 	movx	@dptr,a
      003AE9 A3               [24] 1852 	inc	dptr
      003AEA F0               [24] 1853 	movx	@dptr,a
      003AEB A3               [24] 1854 	inc	dptr
      003AEC F0               [24] 1855 	movx	@dptr,a
      003AED A3               [24] 1856 	inc	dptr
      003AEE F0               [24] 1857 	movx	@dptr,a
                                   1858 ;	main.c:289: second_value=0;
      003AEF 90 00 A8         [24] 1859 	mov	dptr,#_second_value
      003AF2 F0               [24] 1860 	movx	@dptr,a
      003AF3 A3               [24] 1861 	inc	dptr
      003AF4 F0               [24] 1862 	movx	@dptr,a
      003AF5 A3               [24] 1863 	inc	dptr
      003AF6 F0               [24] 1864 	movx	@dptr,a
      003AF7 A3               [24] 1865 	inc	dptr
      003AF8 F0               [24] 1866 	movx	@dptr,a
                                   1867 ;	main.c:290: seconds=0;                           ///printing the timer value form the start of program by restarting the clock
      003AF9 90 00 AC         [24] 1868 	mov	dptr,#_seconds
      003AFC F0               [24] 1869 	movx	@dptr,a
      003AFD A3               [24] 1870 	inc	dptr
      003AFE F0               [24] 1871 	movx	@dptr,a
      003AFF A3               [24] 1872 	inc	dptr
      003B00 F0               [24] 1873 	movx	@dptr,a
      003B01 A3               [24] 1874 	inc	dptr
      003B02 F0               [24] 1875 	movx	@dptr,a
                                   1876 ;	main.c:291: minutes=0;
      003B03 90 00 B0         [24] 1877 	mov	dptr,#_minutes
      003B06 F0               [24] 1878 	movx	@dptr,a
      003B07 A3               [24] 1879 	inc	dptr
      003B08 F0               [24] 1880 	movx	@dptr,a
      003B09 A3               [24] 1881 	inc	dptr
      003B0A F0               [24] 1882 	movx	@dptr,a
      003B0B A3               [24] 1883 	inc	dptr
      003B0C F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	main.c:292: minu=0;
      003B0D 90 00 B4         [24] 1886 	mov	dptr,#_minu
      003B10 F0               [24] 1887 	movx	@dptr,a
      003B11 A3               [24] 1888 	inc	dptr
      003B12 F0               [24] 1889 	movx	@dptr,a
      003B13 A3               [24] 1890 	inc	dptr
      003B14 F0               [24] 1891 	movx	@dptr,a
      003B15 A3               [24] 1892 	inc	dptr
      003B16 F0               [24] 1893 	movx	@dptr,a
                                   1894 ;	main.c:293: hours=0;
      003B17 90 00 B8         [24] 1895 	mov	dptr,#_hours
      003B1A F0               [24] 1896 	movx	@dptr,a
                                   1897 ;	main.c:294: break;
      003B1B 02 35 1D         [24] 1898 	ljmp	00135$
                                   1899 ;	main.c:296: case('S'):
      003B1E                       1900 00127$:
                                   1901 ;	main.c:298: printf_tiny("\n\rRESTART THE TIMER\n\r");
      003B1E 74 FE            [12] 1902 	mov	a,#___str_37
      003B20 C0 E0            [24] 1903 	push	acc
      003B22 74 52            [12] 1904 	mov	a,#(___str_37 >> 8)
      003B24 C0 E0            [24] 1905 	push	acc
      003B26 12 47 0F         [24] 1906 	lcall	_printf_tiny
      003B29 15 81            [12] 1907 	dec	sp
      003B2B 15 81            [12] 1908 	dec	sp
                                   1909 ;	main.c:299: printf_tiny("\n\r\t\tSTOP THE TIMER\n\r");
      003B2D 74 14            [12] 1910 	mov	a,#___str_38
      003B2F C0 E0            [24] 1911 	push	acc
      003B31 74 53            [12] 1912 	mov	a,#(___str_38 >> 8)
      003B33 C0 E0            [24] 1913 	push	acc
      003B35 12 47 0F         [24] 1914 	lcall	_printf_tiny
      003B38 15 81            [12] 1915 	dec	sp
      003B3A 15 81            [12] 1916 	dec	sp
                                   1917 ;	main.c:300: printf_tiny("\n\rRESTART THE TIMER\n\r");
      003B3C 74 FE            [12] 1918 	mov	a,#___str_37
      003B3E C0 E0            [24] 1919 	push	acc
      003B40 74 52            [12] 1920 	mov	a,#(___str_37 >> 8)
      003B42 C0 E0            [24] 1921 	push	acc
      003B44 12 47 0F         [24] 1922 	lcall	_printf_tiny
      003B47 15 81            [12] 1923 	dec	sp
      003B49 15 81            [12] 1924 	dec	sp
                                   1925 ;	main.c:301: break;
      003B4B 02 35 1D         [24] 1926 	ljmp	00135$
                                   1927 ;	main.c:303: case('M'):
      003B4E                       1928 00128$:
                                   1929 ;	main.c:305: printf_tiny("\n\rThe following commands will be performed \n\r");      ///UI PRINT STATEMENTS
      003B4E 74 E9            [12] 1930 	mov	a,#___str_2
      003B50 C0 E0            [24] 1931 	push	acc
      003B52 74 4E            [12] 1932 	mov	a,#(___str_2 >> 8)
      003B54 C0 E0            [24] 1933 	push	acc
      003B56 12 47 0F         [24] 1934 	lcall	_printf_tiny
      003B59 15 81            [12] 1935 	dec	sp
      003B5B 15 81            [12] 1936 	dec	sp
                                   1937 ;	main.c:306: printf_tiny("\n\rA-GO TO ADDRESS \n\r");
      003B5D 74 17            [12] 1938 	mov	a,#___str_3
      003B5F C0 E0            [24] 1939 	push	acc
      003B61 74 4F            [12] 1940 	mov	a,#(___str_3 >> 8)
      003B63 C0 E0            [24] 1941 	push	acc
      003B65 12 47 0F         [24] 1942 	lcall	_printf_tiny
      003B68 15 81            [12] 1943 	dec	sp
      003B6A 15 81            [12] 1944 	dec	sp
                                   1945 ;	main.c:307: printf_tiny("\n\rC-CLEAR SCREEN \n\r");
      003B6C 74 2C            [12] 1946 	mov	a,#___str_4
      003B6E C0 E0            [24] 1947 	push	acc
      003B70 74 4F            [12] 1948 	mov	a,#(___str_4 >> 8)
      003B72 C0 E0            [24] 1949 	push	acc
      003B74 12 47 0F         [24] 1950 	lcall	_printf_tiny
      003B77 15 81            [12] 1951 	dec	sp
      003B79 15 81            [12] 1952 	dec	sp
                                   1953 ;	main.c:308: printf_tiny("\n\rG-GO TO XY \n\r");
      003B7B 74 40            [12] 1954 	mov	a,#___str_5
      003B7D C0 E0            [24] 1955 	push	acc
      003B7F 74 4F            [12] 1956 	mov	a,#(___str_5 >> 8)
      003B81 C0 E0            [24] 1957 	push	acc
      003B83 12 47 0F         [24] 1958 	lcall	_printf_tiny
      003B86 15 81            [12] 1959 	dec	sp
      003B88 15 81            [12] 1960 	dec	sp
                                   1961 ;	main.c:309: printf_tiny("\n\rW-WRITE A CHARACTER\n\r");
      003B8A 74 50            [12] 1962 	mov	a,#___str_6
      003B8C C0 E0            [24] 1963 	push	acc
      003B8E 74 4F            [12] 1964 	mov	a,#(___str_6 >> 8)
      003B90 C0 E0            [24] 1965 	push	acc
      003B92 12 47 0F         [24] 1966 	lcall	_printf_tiny
      003B95 15 81            [12] 1967 	dec	sp
      003B97 15 81            [12] 1968 	dec	sp
                                   1969 ;	main.c:310: printf_tiny("\n\rP-PRINT A SENTENCE \n\r");
      003B99 74 68            [12] 1970 	mov	a,#___str_7
      003B9B C0 E0            [24] 1971 	push	acc
      003B9D 74 4F            [12] 1972 	mov	a,#(___str_7 >> 8)
      003B9F C0 E0            [24] 1973 	push	acc
      003BA1 12 47 0F         [24] 1974 	lcall	_printf_tiny
      003BA4 15 81            [12] 1975 	dec	sp
      003BA6 15 81            [12] 1976 	dec	sp
                                   1977 ;	main.c:311: printf_tiny("\n\rS-STOP THE TIMER \n\r");
      003BA8 74 80            [12] 1978 	mov	a,#___str_8
      003BAA C0 E0            [24] 1979 	push	acc
      003BAC 74 4F            [12] 1980 	mov	a,#(___str_8 >> 8)
      003BAE C0 E0            [24] 1981 	push	acc
      003BB0 12 47 0F         [24] 1982 	lcall	_printf_tiny
      003BB3 15 81            [12] 1983 	dec	sp
      003BB5 15 81            [12] 1984 	dec	sp
                                   1985 ;	main.c:312: printf_tiny("\n\rR-RESTART THE TIMER \n\r");
      003BB7 74 96            [12] 1986 	mov	a,#___str_9
      003BB9 C0 E0            [24] 1987 	push	acc
      003BBB 74 4F            [12] 1988 	mov	a,#(___str_9 >> 8)
      003BBD C0 E0            [24] 1989 	push	acc
      003BBF 12 47 0F         [24] 1990 	lcall	_printf_tiny
      003BC2 15 81            [12] 1991 	dec	sp
      003BC4 15 81            [12] 1992 	dec	sp
                                   1993 ;	main.c:313: printf_tiny("\n\rX-RESET THE TIMER \n\r");
      003BC6 74 AF            [12] 1994 	mov	a,#___str_10
      003BC8 C0 E0            [24] 1995 	push	acc
      003BCA 74 4F            [12] 1996 	mov	a,#(___str_10 >> 8)
      003BCC C0 E0            [24] 1997 	push	acc
      003BCE 12 47 0F         [24] 1998 	lcall	_printf_tiny
      003BD1 15 81            [12] 1999 	dec	sp
      003BD3 15 81            [12] 2000 	dec	sp
                                   2001 ;	main.c:315: default:
      003BD5                       2002 00129$:
                                   2003 ;	main.c:317: printf_tiny("\n\r\INVALOD KEYn\r");
      003BD5 74 29            [12] 2004 	mov	a,#___str_39
      003BD7 C0 E0            [24] 2005 	push	acc
      003BD9 74 53            [12] 2006 	mov	a,#(___str_39 >> 8)
      003BDB C0 E0            [24] 2007 	push	acc
      003BDD 12 47 0F         [24] 2008 	lcall	_printf_tiny
      003BE0 15 81            [12] 2009 	dec	sp
      003BE2 15 81            [12] 2010 	dec	sp
                                   2011 ;	main.c:320: }
                                   2012 ;	main.c:323: }
      003BE4 02 35 1D         [24] 2013 	ljmp	00135$
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'putchar'
                                   2016 ;------------------------------------------------------------
                                   2017 ;c                         Allocated with name '_putchar_c_65536_89'
                                   2018 ;------------------------------------------------------------
                                   2019 ;	main.c:327: int putchar (int c)
                                   2020 ;	-----------------------------------------
                                   2021 ;	 function putchar
                                   2022 ;	-----------------------------------------
      003BE7                       2023 _putchar:
      003BE7 AF 83            [24] 2024 	mov	r7,dph
      003BE9 E5 82            [12] 2025 	mov	a,dpl
      003BEB 90 00 1C         [24] 2026 	mov	dptr,#_putchar_c_65536_89
      003BEE F0               [24] 2027 	movx	@dptr,a
      003BEF EF               [12] 2028 	mov	a,r7
      003BF0 A3               [24] 2029 	inc	dptr
      003BF1 F0               [24] 2030 	movx	@dptr,a
                                   2031 ;	main.c:329: while (!TI);                              /// wait for TX ready, spin on TI
      003BF2                       2032 00101$:
      003BF2 30 99 FD         [24] 2033 	jnb	_TI,00101$
                                   2034 ;	main.c:330: SBUF = c;  	                            /// load serial port with transmit value
      003BF5 90 00 1C         [24] 2035 	mov	dptr,#_putchar_c_65536_89
      003BF8 E0               [24] 2036 	movx	a,@dptr
      003BF9 FE               [12] 2037 	mov	r6,a
      003BFA A3               [24] 2038 	inc	dptr
      003BFB E0               [24] 2039 	movx	a,@dptr
      003BFC 8E 99            [24] 2040 	mov	_SBUF,r6
                                   2041 ;	main.c:331: TI = 0;  	                           /// clear TI flag
                                   2042 ;	assignBit
      003BFE C2 99            [12] 2043 	clr	_TI
                                   2044 ;	main.c:332: return 0;
      003C00 90 00 00         [24] 2045 	mov	dptr,#0x0000
                                   2046 ;	main.c:333: }
      003C03 22               [24] 2047 	ret
                                   2048 ;------------------------------------------------------------
                                   2049 ;Allocation info for local variables in function 'getchar'
                                   2050 ;------------------------------------------------------------
                                   2051 ;	main.c:335: int getchar ()
                                   2052 ;	-----------------------------------------
                                   2053 ;	 function getchar
                                   2054 ;	-----------------------------------------
      003C04                       2055 _getchar:
                                   2056 ;	main.c:337: while (!RI)                             /// wait for RI ready, spin on RI
      003C04                       2057 00103$:
      003C04 20 98 10         [24] 2058 	jb	_RI,00105$
                                   2059 ;	main.c:339: if(input=='T')                     ///TO PRINT TIME CONTINUOUSLY EVEN WHEN INPUT IS BEING ASKED FOR FROM THE USER
      003C07 90 00 9C         [24] 2060 	mov	dptr,#_input
      003C0A E0               [24] 2061 	movx	a,@dptr
      003C0B FF               [12] 2062 	mov	r7,a
      003C0C BF 54 03         [24] 2063 	cjne	r7,#0x54,00102$
                                   2064 ;	main.c:340: InitTimer0();
      003C0F 12 3C 22         [24] 2065 	lcall	_InitTimer0
      003C12                       2066 00102$:
                                   2067 ;	main.c:341: timer();
      003C12 12 3C 9A         [24] 2068 	lcall	_timer
      003C15 80 ED            [24] 2069 	sjmp	00103$
      003C17                       2070 00105$:
                                   2071 ;	main.c:343: RI = 0;			                        /// clear RI flag
                                   2072 ;	assignBit
      003C17 C2 98            [12] 2073 	clr	_RI
                                   2074 ;	main.c:344: return SBUF;  	                        /// return character from SBUF
      003C19 AE 99            [24] 2075 	mov	r6,_SBUF
      003C1B 7F 00            [12] 2076 	mov	r7,#0x00
      003C1D 8E 82            [24] 2077 	mov	dpl,r6
      003C1F 8F 83            [24] 2078 	mov	dph,r7
                                   2079 ;	main.c:345: }
      003C21 22               [24] 2080 	ret
                                   2081 	.area CSEG    (CODE)
                                   2082 	.area CONST   (CODE)
                                   2083 	.area CONST   (CODE)
      004E6F                       2084 ___str_0:
      004E6F 57 65 6C 63 6F 6D 65  2085 	.ascii "Welcome to  Cu  Boulder.My name is Harsh Rathore"
             20 74 6F 20 20 43 75
             20 20 42 6F 75 6C 64
             65 72 2E 4D 79 20 6E
             61 6D 65 20 69 73 20
             48 61 72 73 68 20 52
             61 74 68 6F 72 65
      004E9F 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      004EA0                       2089 ___str_1:
      004EA0 41 42 43 44 45 46 47  2090 	.ascii "ABCDEFGHIKLMNOPQRESTUVWXYZ1234567890123456789abcdefghijklmno"
             48 49 4B 4C 4D 4E 4F
             50 51 52 45 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             30 31 32 33 34 35 36
             37 38 39 61 62 63 64
             65 66 67 68 69 6A 6B
             6C 6D 6E 6F
      004EDC 70 71 72 73 74 75 76  2091 	.ascii "pqrstuvwxyz."
             77 78 79 7A 2E
      004EE8 00                    2092 	.db 0x00
                                   2093 	.area CSEG    (CODE)
                                   2094 	.area CONST   (CODE)
      004EE9                       2095 ___str_2:
      004EE9 0A                    2096 	.db 0x0a
      004EEA 0D                    2097 	.db 0x0d
      004EEB 54 68 65 20 66 6F 6C  2098 	.ascii "The following commands will be performed "
             6C 6F 77 69 6E 67 20
             63 6F 6D 6D 61 6E 64
             73 20 77 69 6C 6C 20
             62 65 20 70 65 72 66
             6F 72 6D 65 64 20
      004F14 0A                    2099 	.db 0x0a
      004F15 0D                    2100 	.db 0x0d
      004F16 00                    2101 	.db 0x00
                                   2102 	.area CSEG    (CODE)
                                   2103 	.area CONST   (CODE)
      004F17                       2104 ___str_3:
      004F17 0A                    2105 	.db 0x0a
      004F18 0D                    2106 	.db 0x0d
      004F19 41 2D 47 4F 20 54 4F  2107 	.ascii "A-GO TO ADDRESS "
             20 41 44 44 52 45 53
             53 20
      004F29 0A                    2108 	.db 0x0a
      004F2A 0D                    2109 	.db 0x0d
      004F2B 00                    2110 	.db 0x00
                                   2111 	.area CSEG    (CODE)
                                   2112 	.area CONST   (CODE)
      004F2C                       2113 ___str_4:
      004F2C 0A                    2114 	.db 0x0a
      004F2D 0D                    2115 	.db 0x0d
      004F2E 43 2D 43 4C 45 41 52  2116 	.ascii "C-CLEAR SCREEN "
             20 53 43 52 45 45 4E
             20
      004F3D 0A                    2117 	.db 0x0a
      004F3E 0D                    2118 	.db 0x0d
      004F3F 00                    2119 	.db 0x00
                                   2120 	.area CSEG    (CODE)
                                   2121 	.area CONST   (CODE)
      004F40                       2122 ___str_5:
      004F40 0A                    2123 	.db 0x0a
      004F41 0D                    2124 	.db 0x0d
      004F42 47 2D 47 4F 20 54 4F  2125 	.ascii "G-GO TO XY "
             20 58 59 20
      004F4D 0A                    2126 	.db 0x0a
      004F4E 0D                    2127 	.db 0x0d
      004F4F 00                    2128 	.db 0x00
                                   2129 	.area CSEG    (CODE)
                                   2130 	.area CONST   (CODE)
      004F50                       2131 ___str_6:
      004F50 0A                    2132 	.db 0x0a
      004F51 0D                    2133 	.db 0x0d
      004F52 57 2D 57 52 49 54 45  2134 	.ascii "W-WRITE A CHARACTER"
             20 41 20 43 48 41 52
             41 43 54 45 52
      004F65 0A                    2135 	.db 0x0a
      004F66 0D                    2136 	.db 0x0d
      004F67 00                    2137 	.db 0x00
                                   2138 	.area CSEG    (CODE)
                                   2139 	.area CONST   (CODE)
      004F68                       2140 ___str_7:
      004F68 0A                    2141 	.db 0x0a
      004F69 0D                    2142 	.db 0x0d
      004F6A 50 2D 50 52 49 4E 54  2143 	.ascii "P-PRINT A SENTENCE "
             20 41 20 53 45 4E 54
             45 4E 43 45 20
      004F7D 0A                    2144 	.db 0x0a
      004F7E 0D                    2145 	.db 0x0d
      004F7F 00                    2146 	.db 0x00
                                   2147 	.area CSEG    (CODE)
                                   2148 	.area CONST   (CODE)
      004F80                       2149 ___str_8:
      004F80 0A                    2150 	.db 0x0a
      004F81 0D                    2151 	.db 0x0d
      004F82 53 2D 53 54 4F 50 20  2152 	.ascii "S-STOP THE TIMER "
             54 48 45 20 54 49 4D
             45 52 20
      004F93 0A                    2153 	.db 0x0a
      004F94 0D                    2154 	.db 0x0d
      004F95 00                    2155 	.db 0x00
                                   2156 	.area CSEG    (CODE)
                                   2157 	.area CONST   (CODE)
      004F96                       2158 ___str_9:
      004F96 0A                    2159 	.db 0x0a
      004F97 0D                    2160 	.db 0x0d
      004F98 52 2D 52 45 53 54 41  2161 	.ascii "R-RESTART THE TIMER "
             52 54 20 54 48 45 20
             54 49 4D 45 52 20
      004FAC 0A                    2162 	.db 0x0a
      004FAD 0D                    2163 	.db 0x0d
      004FAE 00                    2164 	.db 0x00
                                   2165 	.area CSEG    (CODE)
                                   2166 	.area CONST   (CODE)
      004FAF                       2167 ___str_10:
      004FAF 0A                    2168 	.db 0x0a
      004FB0 0D                    2169 	.db 0x0d
      004FB1 58 2D 52 45 53 45 54  2170 	.ascii "X-RESET THE TIMER "
             20 54 48 45 20 54 49
             4D 45 52 20
      004FC3 0A                    2171 	.db 0x0a
      004FC4 0D                    2172 	.db 0x0d
      004FC5 00                    2173 	.db 0x00
                                   2174 	.area CSEG    (CODE)
                                   2175 	.area CONST   (CODE)
      004FC6                       2176 ___str_11:
      004FC6 0A                    2177 	.db 0x0a
      004FC7 0D                    2178 	.db 0x0d
      004FC8 20 45 6E 74 65 72 20  2179 	.ascii " Enter the Key"
             74 68 65 20 4B 65 79
      004FD6 0A                    2180 	.db 0x0a
      004FD7 0D                    2181 	.db 0x0d
      004FD8 00                    2182 	.db 0x00
                                   2183 	.area CSEG    (CODE)
                                   2184 	.area CONST   (CODE)
      004FD9                       2185 ___str_12:
      004FD9 0A                    2186 	.db 0x0a
      004FDA 0D                    2187 	.db 0x0d
      004FDB 7E 7E 7E 7E 7E 7E 7E  2188 	.ascii "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 20
      00500B 0A                    2189 	.db 0x0a
      00500C 0D                    2190 	.db 0x0d
      00500D 00                    2191 	.db 0x00
                                   2192 	.area CSEG    (CODE)
                                   2193 	.area CONST   (CODE)
      00500E                       2194 ___str_13:
      00500E 0A                    2195 	.db 0x0a
      00500F 0D                    2196 	.db 0x0d
      005010 45 6E 74 65 72 20 54  2197 	.ascii "Enter The Key"
             68 65 20 4B 65 79
      00501D 0A                    2198 	.db 0x0a
      00501E 0D                    2199 	.db 0x0d
      00501F 20                    2200 	.ascii " "
      005020 00                    2201 	.db 0x00
                                   2202 	.area CSEG    (CODE)
                                   2203 	.area CONST   (CODE)
      005021                       2204 ___str_14:
      005021 0A                    2205 	.db 0x0a
      005022 0D                    2206 	.db 0x0d
      005023 2A 2A 2A 2A 2A 2A 2A  2207 	.ascii "********************************************* "
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 20
      005051 0A                    2208 	.db 0x0a
      005052 0D                    2209 	.db 0x0d
      005053 00                    2210 	.db 0x00
                                   2211 	.area CSEG    (CODE)
                                   2212 	.area CONST   (CODE)
      005054                       2213 ___str_15:
      005054 0A                    2214 	.db 0x0a
      005055 0D                    2215 	.db 0x0d
      005056 09                    2216 	.db 0x09
      005057 09                    2217 	.db 0x09
      005058 47 4F 20 54 4F 20 41  2218 	.ascii "GO TO ADDRESS"
             44 44 52 45 53 53
      005065 0A                    2219 	.db 0x0a
      005066 0D                    2220 	.db 0x0d
      005067 20                    2221 	.ascii " "
      005068 00                    2222 	.db 0x00
                                   2223 	.area CSEG    (CODE)
                                   2224 	.area CONST   (CODE)
      005069                       2225 ___str_16:
      005069 0A                    2226 	.db 0x0a
      00506A 0D                    2227 	.db 0x0d
      00506B 45 6E 74 65 72 20 74  2228 	.ascii "Enter the 2 Digit LCD DDRAM Address"
             68 65 20 32 20 44 69
             67 69 74 20 4C 43 44
             20 44 44 52 41 4D 20
             41 64 64 72 65 73 73
      00508E 0A                    2229 	.db 0x0a
      00508F 0D                    2230 	.db 0x0d
      005090 00                    2231 	.db 0x00
                                   2232 	.area CSEG    (CODE)
                                   2233 	.area CONST   (CODE)
      005091                       2234 ___str_17:
      005091 0A                    2235 	.db 0x0a
      005092 0D                    2236 	.db 0x0d
      005093 54 68 65 20 32 20 44  2237 	.ascii "The 2 Digit LCD DDRAM Address Entered is INVALID"
             69 67 69 74 20 4C 43
             44 20 44 44 52 41 4D
             20 41 64 64 72 65 73
             73 20 45 6E 74 65 72
             65 64 20 69 73 20 49
             4E 56 41 4C 49 44
      0050C3 0A                    2238 	.db 0x0a
      0050C4 0D                    2239 	.db 0x0d
      0050C5 00                    2240 	.db 0x00
                                   2241 	.area CSEG    (CODE)
                                   2242 	.area CONST   (CODE)
      0050C6                       2243 ___str_18:
      0050C6 0A                    2244 	.db 0x0a
      0050C7 0D                    2245 	.db 0x0d
      0050C8 45 6E 74 65 72 20 61  2246 	.ascii "Enter a New Address"
             20 4E 65 77 20 41 64
             64 72 65 73 73
      0050DB 0A                    2247 	.db 0x0a
      0050DC 0D                    2248 	.db 0x0d
      0050DD 00                    2249 	.db 0x00
                                   2250 	.area CSEG    (CODE)
                                   2251 	.area CONST   (CODE)
      0050DE                       2252 ___str_19:
      0050DE 0A                    2253 	.db 0x0a
      0050DF 0D                    2254 	.db 0x0d
      0050E0 54 68 65 20 32 20 44  2255 	.ascii "The 2 Digit LCD DDRAM Address is %x."
             69 67 69 74 20 4C 43
             44 20 44 44 52 41 4D
             20 41 64 64 72 65 73
             73 20 69 73 20 25 78
             2E
      005104 0A                    2256 	.db 0x0a
      005105 0D                    2257 	.db 0x0d
      005106 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                                   2260 	.area CONST   (CODE)
      005107                       2261 ___str_20:
      005107 0A                    2262 	.db 0x0a
      005108 0D                    2263 	.db 0x0d
      005109 45 6E 74 65 72 20 74  2264 	.ascii "Enter the row and column"
             68 65 20 72 6F 77 20
             61 6E 64 20 63 6F 6C
             75 6D 6E
      005121 0A                    2265 	.db 0x0a
      005122 0D                    2266 	.db 0x0d
      005123 00                    2267 	.db 0x00
                                   2268 	.area CSEG    (CODE)
                                   2269 	.area CONST   (CODE)
      005124                       2270 ___str_21:
      005124 0A                    2271 	.db 0x0a
      005125 0D                    2272 	.db 0x0d
      005126 45 6E 74 65 72 20 74  2273 	.ascii "Enter the row"
             68 65 20 72 6F 77
      005133 0A                    2274 	.db 0x0a
      005134 0D                    2275 	.db 0x0d
      005135 00                    2276 	.db 0x00
                                   2277 	.area CSEG    (CODE)
                                   2278 	.area CONST   (CODE)
      005136                       2279 ___str_22:
      005136 0A                    2280 	.db 0x0a
      005137 0D                    2281 	.db 0x0d
      005138 52 6F 77 20 69 73 20  2282 	.ascii "Row is INVALID"
             49 4E 56 41 4C 49 44
      005146 0A                    2283 	.db 0x0a
      005147 0D                    2284 	.db 0x0d
      005148 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      005149                       2288 ___str_23:
      005149 0A                    2289 	.db 0x0a
      00514A 0D                    2290 	.db 0x0d
      00514B 45 6E 74 65 72 20 61  2291 	.ascii "Enter a New Row"
             20 4E 65 77 20 52 6F
             77
      00515A 0A                    2292 	.db 0x0a
      00515B 0D                    2293 	.db 0x0d
      00515C 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      00515D                       2297 ___str_24:
      00515D 0A                    2298 	.db 0x0a
      00515E 0D                    2299 	.db 0x0d
      00515F 20 54 68 65 20 72 6F  2300 	.ascii " The row entered is %d"
             77 20 65 6E 74 65 72
             65 64 20 69 73 20 25
             64
      005175 0A                    2301 	.db 0x0a
      005176 0D                    2302 	.db 0x0d
      005177 00                    2303 	.db 0x00
                                   2304 	.area CSEG    (CODE)
                                   2305 	.area CONST   (CODE)
      005178                       2306 ___str_25:
      005178 0A                    2307 	.db 0x0a
      005179 0D                    2308 	.db 0x0d
      00517A 45 6E 74 65 72 20 74  2309 	.ascii "Enter the column"
             68 65 20 63 6F 6C 75
             6D 6E
      00518A 0A                    2310 	.db 0x0a
      00518B 0D                    2311 	.db 0x0d
      00518C 00                    2312 	.db 0x00
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
      00518D                       2315 ___str_26:
      00518D 0A                    2316 	.db 0x0a
      00518E 0D                    2317 	.db 0x0d
      00518F 43 6F 6C 75 6D 6E 20  2318 	.ascii "Column is INVALID"
             69 73 20 49 4E 56 41
             4C 49 44
      0051A0 0A                    2319 	.db 0x0a
      0051A1 0D                    2320 	.db 0x0d
      0051A2 00                    2321 	.db 0x00
                                   2322 	.area CSEG    (CODE)
                                   2323 	.area CONST   (CODE)
      0051A3                       2324 ___str_27:
      0051A3 0A                    2325 	.db 0x0a
      0051A4 0D                    2326 	.db 0x0d
      0051A5 45 6E 74 65 72 20 61  2327 	.ascii "Enter a New Column"
             20 4E 65 77 20 43 6F
             6C 75 6D 6E
      0051B7 0A                    2328 	.db 0x0a
      0051B8 0D                    2329 	.db 0x0d
      0051B9 00                    2330 	.db 0x00
                                   2331 	.area CSEG    (CODE)
                                   2332 	.area CONST   (CODE)
      0051BA                       2333 ___str_28:
      0051BA 0A                    2334 	.db 0x0a
      0051BB 0D                    2335 	.db 0x0d
      0051BC 20 54 68 65 20 63 6F  2336 	.ascii " The column entered is %d"
             6C 75 6D 6E 20 65 6E
             74 65 72 65 64 20 69
             73 20 25 64
      0051D5 0A                    2337 	.db 0x0a
      0051D6 0D                    2338 	.db 0x0d
      0051D7 00                    2339 	.db 0x00
                                   2340 	.area CSEG    (CODE)
                                   2341 	.area CONST   (CODE)
      0051D8                       2342 ___str_29:
      0051D8 0A                    2343 	.db 0x0a
      0051D9 0D                    2344 	.db 0x0d
      0051DA 09                    2345 	.db 0x09
      0051DB 5C                    2346 	.db 0x5c
      0051DC 74 20 43 4C 45 41 52  2347 	.ascii "t CLEAR THE SCREEN"
             20 54 48 45 20 53 43
             52 45 45 4E
      0051EE 0A                    2348 	.db 0x0a
      0051EF 0D                    2349 	.db 0x0d
      0051F0 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      0051F1                       2353 ___str_30:
      0051F1 0A                    2354 	.db 0x0a
      0051F2 0D                    2355 	.db 0x0d
      0051F3 09                    2356 	.db 0x09
      0051F4 09                    2357 	.db 0x09
      0051F5 57 52 49 54 45 20 54  2358 	.ascii "WRITE THE CHARACTER ON LCD"
             48 45 20 43 48 41 52
             41 43 54 45 52 20 4F
             4E 20 4C 43 44
      00520F 0A                    2359 	.db 0x0a
      005210 0D                    2360 	.db 0x0d
      005211 00                    2361 	.db 0x00
                                   2362 	.area CSEG    (CODE)
                                   2363 	.area CONST   (CODE)
      005212                       2364 ___str_31:
      005212 0A                    2365 	.db 0x0a
      005213 0D                    2366 	.db 0x0d
      005214 45 6E 74 65 72 20 74  2367 	.ascii "Enter the 2 Digit LCD DDRAM Address for writing the characte"
             68 65 20 32 20 44 69
             67 69 74 20 4C 43 44
             20 44 44 52 41 4D 20
             41 64 64 72 65 73 73
             20 66 6F 72 20 77 72
             69 74 69 6E 67 20 74
             68 65 20 63 68 61 72
             61 63 74 65
      005250 72                    2368 	.ascii "r"
      005251 0A                    2369 	.db 0x0a
      005252 0D                    2370 	.db 0x0d
      005253 00                    2371 	.db 0x00
                                   2372 	.area CSEG    (CODE)
                                   2373 	.area CONST   (CODE)
      005254                       2374 ___str_32:
      005254 0A                    2375 	.db 0x0a
      005255 0D                    2376 	.db 0x0d
      005256 20 45 4E 54 45 52 20  2377 	.ascii " ENTER A CHARACTER"
             41 20 43 48 41 52 41
             43 54 45 52
      005268 0A                    2378 	.db 0x0a
      005269 0D                    2379 	.db 0x0d
      00526A 00                    2380 	.db 0x00
                                   2381 	.area CSEG    (CODE)
                                   2382 	.area CONST   (CODE)
      00526B                       2383 ___str_33:
      00526B 0A                    2384 	.db 0x0a
      00526C 0D                    2385 	.db 0x0d
      00526D 09                    2386 	.db 0x09
      00526E 09                    2387 	.db 0x09
      00526F 50 52 49 4E 54 20 54  2388 	.ascii "PRINT THE STRING"
             48 45 20 53 54 52 49
             4E 47
      00527F 0A                    2389 	.db 0x0a
      005280 0D                    2390 	.db 0x0d
      005281 00                    2391 	.db 0x00
                                   2392 	.area CSEG    (CODE)
                                   2393 	.area CONST   (CODE)
      005282                       2394 ___str_34:
      005282 0A                    2395 	.db 0x0a
      005283 0D                    2396 	.db 0x0d
      005284 45 6E 74 65 72 20 74  2397 	.ascii "Enter the row and column for writing the string"
             68 65 20 72 6F 77 20
             61 6E 64 20 63 6F 6C
             75 6D 6E 20 66 6F 72
             20 77 72 69 74 69 6E
             67 20 74 68 65 20 73
             74 72 69 6E 67
      0052B3 0A                    2398 	.db 0x0a
      0052B4 0D                    2399 	.db 0x0d
      0052B5 00                    2400 	.db 0x00
                                   2401 	.area CSEG    (CODE)
                                   2402 	.area CONST   (CODE)
      0052B6                       2403 ___str_35:
      0052B6 0A                    2404 	.db 0x0a
      0052B7 0D                    2405 	.db 0x0d
      0052B8 20 45 4E 54 45 52 20  2406 	.ascii " ENTER THE STRING WHICH NEEDS TO BE PRINTED"
             54 48 45 20 53 54 52
             49 4E 47 20 57 48 49
             43 48 20 4E 45 45 44
             53 20 54 4F 20 42 45
             20 50 52 49 4E 54 45
             44
      0052E3 0A                    2407 	.db 0x0a
      0052E4 0D                    2408 	.db 0x0d
      0052E5 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area CONST   (CODE)
      0052E6                       2412 ___str_36:
      0052E6 0A                    2413 	.db 0x0a
      0052E7 0D                    2414 	.db 0x0d
      0052E8 09                    2415 	.db 0x09
      0052E9 09                    2416 	.db 0x09
      0052EA 52 45 53 54 41 52 54  2417 	.ascii "RESTART THE TIMER"
             20 54 48 45 20 54 49
             4D 45 52
      0052FB 0A                    2418 	.db 0x0a
      0052FC 0D                    2419 	.db 0x0d
      0052FD 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area CONST   (CODE)
      0052FE                       2423 ___str_37:
      0052FE 0A                    2424 	.db 0x0a
      0052FF 0D                    2425 	.db 0x0d
      005300 52 45 53 54 41 52 54  2426 	.ascii "RESTART THE TIMER"
             20 54 48 45 20 54 49
             4D 45 52
      005311 0A                    2427 	.db 0x0a
      005312 0D                    2428 	.db 0x0d
      005313 00                    2429 	.db 0x00
                                   2430 	.area CSEG    (CODE)
                                   2431 	.area CONST   (CODE)
      005314                       2432 ___str_38:
      005314 0A                    2433 	.db 0x0a
      005315 0D                    2434 	.db 0x0d
      005316 09                    2435 	.db 0x09
      005317 09                    2436 	.db 0x09
      005318 53 54 4F 50 20 54 48  2437 	.ascii "STOP THE TIMER"
             45 20 54 49 4D 45 52
      005326 0A                    2438 	.db 0x0a
      005327 0D                    2439 	.db 0x0d
      005328 00                    2440 	.db 0x00
                                   2441 	.area CSEG    (CODE)
                                   2442 	.area CONST   (CODE)
      005329                       2443 ___str_39:
      005329 0A                    2444 	.db 0x0a
      00532A 0D                    2445 	.db 0x0d
      00532B 49 4E 56 41 4C 4F 44  2446 	.ascii "INVALOD KEYn"
             20 4B 45 59 6E
      005337 0D                    2447 	.db 0x0d
      005338 00                    2448 	.db 0x00
                                   2449 	.area CSEG    (CODE)
                                   2450 	.area XINIT   (CODE)
                                   2451 	.area CABS    (ABS,CODE)
