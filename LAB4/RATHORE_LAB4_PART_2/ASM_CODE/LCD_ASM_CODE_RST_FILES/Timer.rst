                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lcdbusywait
                                     12 	.globl _lcdgotoaddr
                                     13 	.globl _lcdgotoxy
                                     14 	.globl _lcdputch
                                     15 	.globl _lcdputstr
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _P5_7
                                     92 	.globl _P5_6
                                     93 	.globl _P5_5
                                     94 	.globl _P5_4
                                     95 	.globl _P5_3
                                     96 	.globl _P5_2
                                     97 	.globl _P5_1
                                     98 	.globl _P5_0
                                     99 	.globl _P4_7
                                    100 	.globl _P4_6
                                    101 	.globl _P4_5
                                    102 	.globl _P4_4
                                    103 	.globl _P4_3
                                    104 	.globl _P4_2
                                    105 	.globl _P4_1
                                    106 	.globl _P4_0
                                    107 	.globl _PX0L
                                    108 	.globl _PT0L
                                    109 	.globl _PX1L
                                    110 	.globl _PT1L
                                    111 	.globl _PSL
                                    112 	.globl _PT2L
                                    113 	.globl _PPCL
                                    114 	.globl _EC
                                    115 	.globl _CCF0
                                    116 	.globl _CCF1
                                    117 	.globl _CCF2
                                    118 	.globl _CCF3
                                    119 	.globl _CCF4
                                    120 	.globl _CR
                                    121 	.globl _CF
                                    122 	.globl _TF2
                                    123 	.globl _EXF2
                                    124 	.globl _RCLK
                                    125 	.globl _TCLK
                                    126 	.globl _EXEN2
                                    127 	.globl _TR2
                                    128 	.globl _C_T2
                                    129 	.globl _CP_RL2
                                    130 	.globl _T2CON_7
                                    131 	.globl _T2CON_6
                                    132 	.globl _T2CON_5
                                    133 	.globl _T2CON_4
                                    134 	.globl _T2CON_3
                                    135 	.globl _T2CON_2
                                    136 	.globl _T2CON_1
                                    137 	.globl _T2CON_0
                                    138 	.globl _PT2
                                    139 	.globl _ET2
                                    140 	.globl _B
                                    141 	.globl _ACC
                                    142 	.globl _PSW
                                    143 	.globl _IP
                                    144 	.globl _P3
                                    145 	.globl _IE
                                    146 	.globl _P2
                                    147 	.globl _SBUF
                                    148 	.globl _SCON
                                    149 	.globl _P1
                                    150 	.globl _TH1
                                    151 	.globl _TH0
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TMOD
                                    155 	.globl _TCON
                                    156 	.globl _PCON
                                    157 	.globl _DPH
                                    158 	.globl _DPL
                                    159 	.globl _SP
                                    160 	.globl _P0
                                    161 	.globl _EECON
                                    162 	.globl _KBF
                                    163 	.globl _KBE
                                    164 	.globl _KBLS
                                    165 	.globl _BRL
                                    166 	.globl _BDRCON
                                    167 	.globl _T2MOD
                                    168 	.globl _SPDAT
                                    169 	.globl _SPSTA
                                    170 	.globl _SPCON
                                    171 	.globl _SADEN
                                    172 	.globl _SADDR
                                    173 	.globl _WDTPRG
                                    174 	.globl _WDTRST
                                    175 	.globl _P5
                                    176 	.globl _P4
                                    177 	.globl _IPH1
                                    178 	.globl _IPL1
                                    179 	.globl _IPH0
                                    180 	.globl _IPL0
                                    181 	.globl _IEN1
                                    182 	.globl _IEN0
                                    183 	.globl _CMOD
                                    184 	.globl _CL
                                    185 	.globl _CH
                                    186 	.globl _CCON
                                    187 	.globl _CCAPM4
                                    188 	.globl _CCAPM3
                                    189 	.globl _CCAPM2
                                    190 	.globl _CCAPM1
                                    191 	.globl _CCAPM0
                                    192 	.globl _CCAP4L
                                    193 	.globl _CCAP3L
                                    194 	.globl _CCAP2L
                                    195 	.globl _CCAP1L
                                    196 	.globl _CCAP0L
                                    197 	.globl _CCAP4H
                                    198 	.globl _CCAP3H
                                    199 	.globl _CCAP2H
                                    200 	.globl _CCAP1H
                                    201 	.globl _CCAP0H
                                    202 	.globl _CKCON1
                                    203 	.globl _CKCON0
                                    204 	.globl _CKRL
                                    205 	.globl _AUXR1
                                    206 	.globl _AUXR
                                    207 	.globl _TH2
                                    208 	.globl _TL2
                                    209 	.globl _RCAP2H
                                    210 	.globl _RCAP2L
                                    211 	.globl _T2CON
                                    212 	.globl _hours
                                    213 	.globl _minu
                                    214 	.globl _minutes
                                    215 	.globl _seconds
                                    216 	.globl _second_value
                                    217 	.globl _mili_value
                                    218 	.globl _mili
                                    219 	.globl _DisplayTimeToLCD_PARM_4
                                    220 	.globl _DisplayTimeToLCD_PARM_3
                                    221 	.globl _DisplayTimeToLCD_PARM_2
                                    222 	.globl _data_register_read
                                    223 	.globl _busy_flag_read
                                    224 	.globl _data_register_write
                                    225 	.globl _instruction_reg_write
                                    226 	.globl _InitTimer0
                                    227 	.globl _Timer0_ISR
                                    228 	.globl _timer
                                    229 	.globl _DisplayTimeToLCD
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                           000080   286 _P0	=	0x0080
                           000081   287 _SP	=	0x0081
                           000082   288 _DPL	=	0x0082
                           000083   289 _DPH	=	0x0083
                           000087   290 _PCON	=	0x0087
                           000088   291 _TCON	=	0x0088
                           000089   292 _TMOD	=	0x0089
                           00008A   293 _TL0	=	0x008a
                           00008B   294 _TL1	=	0x008b
                           00008C   295 _TH0	=	0x008c
                           00008D   296 _TH1	=	0x008d
                           000090   297 _P1	=	0x0090
                           000098   298 _SCON	=	0x0098
                           000099   299 _SBUF	=	0x0099
                           0000A0   300 _P2	=	0x00a0
                           0000A8   301 _IE	=	0x00a8
                           0000B0   302 _P3	=	0x00b0
                           0000B8   303 _IP	=	0x00b8
                           0000D0   304 _PSW	=	0x00d0
                           0000E0   305 _ACC	=	0x00e0
                           0000F0   306 _B	=	0x00f0
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           0000AD   312 _ET2	=	0x00ad
                           0000BD   313 _PT2	=	0x00bd
                           0000C8   314 _T2CON_0	=	0x00c8
                           0000C9   315 _T2CON_1	=	0x00c9
                           0000CA   316 _T2CON_2	=	0x00ca
                           0000CB   317 _T2CON_3	=	0x00cb
                           0000CC   318 _T2CON_4	=	0x00cc
                           0000CD   319 _T2CON_5	=	0x00cd
                           0000CE   320 _T2CON_6	=	0x00ce
                           0000CF   321 _T2CON_7	=	0x00cf
                           0000C8   322 _CP_RL2	=	0x00c8
                           0000C9   323 _C_T2	=	0x00c9
                           0000CA   324 _TR2	=	0x00ca
                           0000CB   325 _EXEN2	=	0x00cb
                           0000CC   326 _TCLK	=	0x00cc
                           0000CD   327 _RCLK	=	0x00cd
                           0000CE   328 _EXF2	=	0x00ce
                           0000CF   329 _TF2	=	0x00cf
                           0000DF   330 _CF	=	0x00df
                           0000DE   331 _CR	=	0x00de
                           0000DC   332 _CCF4	=	0x00dc
                           0000DB   333 _CCF3	=	0x00db
                           0000DA   334 _CCF2	=	0x00da
                           0000D9   335 _CCF1	=	0x00d9
                           0000D8   336 _CCF0	=	0x00d8
                           0000AE   337 _EC	=	0x00ae
                           0000BE   338 _PPCL	=	0x00be
                           0000BD   339 _PT2L	=	0x00bd
                           0000BC   340 _PSL	=	0x00bc
                           0000BB   341 _PT1L	=	0x00bb
                           0000BA   342 _PX1L	=	0x00ba
                           0000B9   343 _PT0L	=	0x00b9
                           0000B8   344 _PX0L	=	0x00b8
                           0000C0   345 _P4_0	=	0x00c0
                           0000C1   346 _P4_1	=	0x00c1
                           0000C2   347 _P4_2	=	0x00c2
                           0000C3   348 _P4_3	=	0x00c3
                           0000C4   349 _P4_4	=	0x00c4
                           0000C5   350 _P4_5	=	0x00c5
                           0000C6   351 _P4_6	=	0x00c6
                           0000C7   352 _P4_7	=	0x00c7
                           0000E8   353 _P5_0	=	0x00e8
                           0000E9   354 _P5_1	=	0x00e9
                           0000EA   355 _P5_2	=	0x00ea
                           0000EB   356 _P5_3	=	0x00eb
                           0000EC   357 _P5_4	=	0x00ec
                           0000ED   358 _P5_5	=	0x00ed
                           0000EE   359 _P5_6	=	0x00ee
                           0000EF   360 _P5_7	=	0x00ef
                           000080   361 _P0_0	=	0x0080
                           000081   362 _P0_1	=	0x0081
                           000082   363 _P0_2	=	0x0082
                           000083   364 _P0_3	=	0x0083
                           000084   365 _P0_4	=	0x0084
                           000085   366 _P0_5	=	0x0085
                           000086   367 _P0_6	=	0x0086
                           000087   368 _P0_7	=	0x0087
                           000088   369 _IT0	=	0x0088
                           000089   370 _IE0	=	0x0089
                           00008A   371 _IT1	=	0x008a
                           00008B   372 _IE1	=	0x008b
                           00008C   373 _TR0	=	0x008c
                           00008D   374 _TF0	=	0x008d
                           00008E   375 _TR1	=	0x008e
                           00008F   376 _TF1	=	0x008f
                           000090   377 _P1_0	=	0x0090
                           000091   378 _P1_1	=	0x0091
                           000092   379 _P1_2	=	0x0092
                           000093   380 _P1_3	=	0x0093
                           000094   381 _P1_4	=	0x0094
                           000095   382 _P1_5	=	0x0095
                           000096   383 _P1_6	=	0x0096
                           000097   384 _P1_7	=	0x0097
                           000098   385 _RI	=	0x0098
                           000099   386 _TI	=	0x0099
                           00009A   387 _RB8	=	0x009a
                           00009B   388 _TB8	=	0x009b
                           00009C   389 _REN	=	0x009c
                           00009D   390 _SM2	=	0x009d
                           00009E   391 _SM1	=	0x009e
                           00009F   392 _SM0	=	0x009f
                           0000A0   393 _P2_0	=	0x00a0
                           0000A1   394 _P2_1	=	0x00a1
                           0000A2   395 _P2_2	=	0x00a2
                           0000A3   396 _P2_3	=	0x00a3
                           0000A4   397 _P2_4	=	0x00a4
                           0000A5   398 _P2_5	=	0x00a5
                           0000A6   399 _P2_6	=	0x00a6
                           0000A7   400 _P2_7	=	0x00a7
                           0000A8   401 _EX0	=	0x00a8
                           0000A9   402 _ET0	=	0x00a9
                           0000AA   403 _EX1	=	0x00aa
                           0000AB   404 _ET1	=	0x00ab
                           0000AC   405 _ES	=	0x00ac
                           0000AF   406 _EA	=	0x00af
                           0000B0   407 _P3_0	=	0x00b0
                           0000B1   408 _P3_1	=	0x00b1
                           0000B2   409 _P3_2	=	0x00b2
                           0000B3   410 _P3_3	=	0x00b3
                           0000B4   411 _P3_4	=	0x00b4
                           0000B5   412 _P3_5	=	0x00b5
                           0000B6   413 _P3_6	=	0x00b6
                           0000B7   414 _P3_7	=	0x00b7
                           0000B0   415 _RXD	=	0x00b0
                           0000B1   416 _TXD	=	0x00b1
                           0000B2   417 _INT0	=	0x00b2
                           0000B3   418 _INT1	=	0x00b3
                           0000B4   419 _T0	=	0x00b4
                           0000B5   420 _T1	=	0x00b5
                           0000B6   421 _WR	=	0x00b6
                           0000B7   422 _RD	=	0x00b7
                           0000B8   423 _PX0	=	0x00b8
                           0000B9   424 _PT0	=	0x00b9
                           0000BA   425 _PX1	=	0x00ba
                           0000BB   426 _PT1	=	0x00bb
                           0000BC   427 _PS	=	0x00bc
                           0000D0   428 _P	=	0x00d0
                           0000D1   429 _F1	=	0x00d1
                           0000D2   430 _OV	=	0x00d2
                           0000D3   431 _RS0	=	0x00d3
                           0000D4   432 _RS1	=	0x00d4
                           0000D5   433 _F0	=	0x00d5
                           0000D6   434 _AC	=	0x00d6
                           0000D7   435 _CY	=	0x00d7
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable register banks
                                    438 ;--------------------------------------------------------
                                    439 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        440 	.ds 8
                                    441 ;--------------------------------------------------------
                                    442 ; internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area DSEG    (DATA)
      000008                        445 _timer_sloc0_1_0:
      000008                        446 	.ds 2
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; indirectly addressable internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area ISEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; absolute internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area IABS    (ABS,DATA)
                                    458 	.area IABS    (ABS,DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; bit data
                                    461 ;--------------------------------------------------------
                                    462 	.area BSEG    (BIT)
                                    463 ;--------------------------------------------------------
                                    464 ; paged external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area PSEG    (PAG,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XSEG    (XDATA)
                           00F000   471 _instruction_reg_write	=	0xf000
                           00F100   472 _data_register_write	=	0xf100
                           00F200   473 _busy_flag_read	=	0xf200
                           00F300   474 _data_register_read	=	0xf300
      00001E                        475 _DisplayTimeToLCD_PARM_2:
      00001E                        476 	.ds 2
      000020                        477 _DisplayTimeToLCD_PARM_3:
      000020                        478 	.ds 2
      000022                        479 _DisplayTimeToLCD_PARM_4:
      000022                        480 	.ds 2
      000024                        481 _DisplayTimeToLCD_h_65536_56:
      000024                        482 	.ds 2
      000026                        483 _DisplayTimeToLCD_time_value_131072_58:
      000026                        484 	.ds 10
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
      0000A0                        493 _mili::
      0000A0                        494 	.ds 4
      0000A4                        495 _mili_value::
      0000A4                        496 	.ds 4
      0000A8                        497 _second_value::
      0000A8                        498 	.ds 4
      0000AC                        499 _seconds::
      0000AC                        500 	.ds 4
      0000B0                        501 _minutes::
      0000B0                        502 	.ds 4
      0000B4                        503 _minu::
      0000B4                        504 	.ds 4
      0000B8                        505 _hours::
      0000B8                        506 	.ds 1
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT0 (CODE)
                                    509 	.area GSINIT1 (CODE)
                                    510 	.area GSINIT2 (CODE)
                                    511 	.area GSINIT3 (CODE)
                                    512 	.area GSINIT4 (CODE)
                                    513 	.area GSINIT5 (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area CSEG    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; global & static initialisations
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; Home
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
                                    528 	.area HOME    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; code
                                    531 ;--------------------------------------------------------
                                    532 	.area CSEG    (CODE)
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'InitTimer0'
                                    535 ;------------------------------------------------------------
                                    536 ;	Timer.c:26: void InitTimer0(void)
                                    537 ;	-----------------------------------------
                                    538 ;	 function InitTimer0
                                    539 ;	-----------------------------------------
      003C22                        540 _InitTimer0:
                           000007   541 	ar7 = 0x07
                           000006   542 	ar6 = 0x06
                           000005   543 	ar5 = 0x05
                           000004   544 	ar4 = 0x04
                           000003   545 	ar3 = 0x03
                           000002   546 	ar2 = 0x02
                           000001   547 	ar1 = 0x01
                           000000   548 	ar0 = 0x00
                                    549 ;	Timer.c:28: TMOD |= 0x01;                                                  /// Timer 0 Mode 1
      003C22 43 89 01         [24]  550 	orl	_TMOD,#0x01
                                    551 ;	Timer.c:29: TH0=0x4B;
      003C25 75 8C 4B         [24]  552 	mov	_TH0,#0x4b
                                    553 ;	Timer.c:30: TL0=0xFD;                                                      ///LOADING VALUE FOR 50 MS INTERRUPT TRIGGER
      003C28 75 8A FD         [24]  554 	mov	_TL0,#0xfd
                                    555 ;	Timer.c:31: ET0=1;
                                    556 ;	assignBit
      003C2B D2 A9            [12]  557 	setb	_ET0
                                    558 ;	Timer.c:32: EA=1;                                                        ///ENABLING INTERRUPT
                                    559 ;	assignBit
      003C2D D2 AF            [12]  560 	setb	_EA
                                    561 ;	Timer.c:33: TR0=1;
                                    562 ;	assignBit
      003C2F D2 8C            [12]  563 	setb	_TR0
                                    564 ;	Timer.c:34: if (input=='S')                                             ///STOP THE TIMER
      003C31 90 00 9C         [24]  565 	mov	dptr,#_input
      003C34 E0               [24]  566 	movx	a,@dptr
      003C35 FF               [12]  567 	mov	r7,a
      003C36 BF 53 03         [24]  568 	cjne	r7,#0x53,00104$
                                    569 ;	Timer.c:35: TR0=0;
                                    570 ;	assignBit
      003C39 C2 8C            [12]  571 	clr	_TR0
      003C3B 22               [24]  572 	ret
      003C3C                        573 00104$:
                                    574 ;	Timer.c:36: else if(input=='R')                                         ///START THE TIMER AGAIN
      003C3C 90 00 9C         [24]  575 	mov	dptr,#_input
      003C3F E0               [24]  576 	movx	a,@dptr
      003C40 FF               [12]  577 	mov	r7,a
      003C41 BF 52 02         [24]  578 	cjne	r7,#0x52,00106$
                                    579 ;	Timer.c:37: TR0 = 1;
                                    580 ;	assignBit
      003C44 D2 8C            [12]  581 	setb	_TR0
      003C46                        582 00106$:
                                    583 ;	Timer.c:39: }
      003C46 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'Timer0_ISR'
                                    587 ;------------------------------------------------------------
                                    588 ;	Timer.c:41: void Timer0_ISR (void) __interrupt 1                            /// It is called after every 50 msec
                                    589 ;	-----------------------------------------
                                    590 ;	 function Timer0_ISR
                                    591 ;	-----------------------------------------
      003C47                        592 _Timer0_ISR:
      003C47 C0 E0            [24]  593 	push	acc
      003C49 C0 82            [24]  594 	push	dpl
      003C4B C0 83            [24]  595 	push	dph
      003C4D C0 07            [24]  596 	push	ar7
      003C4F C0 06            [24]  597 	push	ar6
      003C51 C0 05            [24]  598 	push	ar5
      003C53 C0 04            [24]  599 	push	ar4
      003C55 C0 D0            [24]  600 	push	psw
      003C57 75 D0 00         [24]  601 	mov	psw,#0x00
                                    602 ;	Timer.c:43: EA=0;
                                    603 ;	assignBit
      003C5A C2 AF            [12]  604 	clr	_EA
                                    605 ;	Timer.c:44: (P1_2)=(P1_2)^1;
      003C5C B2 92            [12]  606 	cpl	_P1_2
                                    607 ;	Timer.c:45: mili=mili+5;                                                ///increment the mili value for each interrupt trigger to calculate the clock
      003C5E 90 00 A0         [24]  608 	mov	dptr,#_mili
      003C61 E0               [24]  609 	movx	a,@dptr
      003C62 FC               [12]  610 	mov	r4,a
      003C63 A3               [24]  611 	inc	dptr
      003C64 E0               [24]  612 	movx	a,@dptr
      003C65 FD               [12]  613 	mov	r5,a
      003C66 A3               [24]  614 	inc	dptr
      003C67 E0               [24]  615 	movx	a,@dptr
      003C68 FE               [12]  616 	mov	r6,a
      003C69 A3               [24]  617 	inc	dptr
      003C6A E0               [24]  618 	movx	a,@dptr
      003C6B FF               [12]  619 	mov	r7,a
      003C6C 90 00 A0         [24]  620 	mov	dptr,#_mili
      003C6F 74 05            [12]  621 	mov	a,#0x05
      003C71 2C               [12]  622 	add	a,r4
      003C72 F0               [24]  623 	movx	@dptr,a
      003C73 E4               [12]  624 	clr	a
      003C74 3D               [12]  625 	addc	a,r5
      003C75 A3               [24]  626 	inc	dptr
      003C76 F0               [24]  627 	movx	@dptr,a
      003C77 E4               [12]  628 	clr	a
      003C78 3E               [12]  629 	addc	a,r6
      003C79 A3               [24]  630 	inc	dptr
      003C7A F0               [24]  631 	movx	@dptr,a
      003C7B E4               [12]  632 	clr	a
      003C7C 3F               [12]  633 	addc	a,r7
      003C7D A3               [24]  634 	inc	dptr
      003C7E F0               [24]  635 	movx	@dptr,a
                                    636 ;	Timer.c:46: TH0=0x4B;
      003C7F 75 8C 4B         [24]  637 	mov	_TH0,#0x4b
                                    638 ;	Timer.c:47: TL0=0xFD;
      003C82 75 8A FD         [24]  639 	mov	_TL0,#0xfd
                                    640 ;	Timer.c:48: TF0 = 0;                                                        /// Clear the interrupt flag
                                    641 ;	assignBit
      003C85 C2 8D            [12]  642 	clr	_TF0
                                    643 ;	Timer.c:49: EA=1;
                                    644 ;	assignBit
      003C87 D2 AF            [12]  645 	setb	_EA
                                    646 ;	Timer.c:50: }
      003C89 D0 D0            [24]  647 	pop	psw
      003C8B D0 04            [24]  648 	pop	ar4
      003C8D D0 05            [24]  649 	pop	ar5
      003C8F D0 06            [24]  650 	pop	ar6
      003C91 D0 07            [24]  651 	pop	ar7
      003C93 D0 83            [24]  652 	pop	dph
      003C95 D0 82            [24]  653 	pop	dpl
      003C97 D0 E0            [24]  654 	pop	acc
      003C99 32               [24]  655 	reti
                                    656 ;	eliminated unneeded push/pop b
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'timer'
                                    659 ;------------------------------------------------------------
                                    660 ;sloc0                     Allocated with name '_timer_sloc0_1_0'
                                    661 ;------------------------------------------------------------
                                    662 ;	Timer.c:52: void timer()
                                    663 ;	-----------------------------------------
                                    664 ;	 function timer
                                    665 ;	-----------------------------------------
      003C9A                        666 _timer:
                                    667 ;	Timer.c:54: mili_value=mili%100;
      003C9A 90 00 A0         [24]  668 	mov	dptr,#_mili
      003C9D E0               [24]  669 	movx	a,@dptr
      003C9E FC               [12]  670 	mov	r4,a
      003C9F A3               [24]  671 	inc	dptr
      003CA0 E0               [24]  672 	movx	a,@dptr
      003CA1 FD               [12]  673 	mov	r5,a
      003CA2 A3               [24]  674 	inc	dptr
      003CA3 E0               [24]  675 	movx	a,@dptr
      003CA4 FE               [12]  676 	mov	r6,a
      003CA5 A3               [24]  677 	inc	dptr
      003CA6 E0               [24]  678 	movx	a,@dptr
      003CA7 FF               [12]  679 	mov	r7,a
      003CA8 90 00 37         [24]  680 	mov	dptr,#__modulong_PARM_2
      003CAB 74 64            [12]  681 	mov	a,#0x64
      003CAD F0               [24]  682 	movx	@dptr,a
      003CAE E4               [12]  683 	clr	a
      003CAF A3               [24]  684 	inc	dptr
      003CB0 F0               [24]  685 	movx	@dptr,a
      003CB1 A3               [24]  686 	inc	dptr
      003CB2 F0               [24]  687 	movx	@dptr,a
      003CB3 A3               [24]  688 	inc	dptr
      003CB4 F0               [24]  689 	movx	@dptr,a
      003CB5 8C 82            [24]  690 	mov	dpl,r4
      003CB7 8D 83            [24]  691 	mov	dph,r5
      003CB9 8E F0            [24]  692 	mov	b,r6
      003CBB EF               [12]  693 	mov	a,r7
      003CBC 12 40 89         [24]  694 	lcall	__modulong
      003CBF AC 82            [24]  695 	mov	r4,dpl
      003CC1 AD 83            [24]  696 	mov	r5,dph
      003CC3 AE F0            [24]  697 	mov	r6,b
      003CC5 FF               [12]  698 	mov	r7,a
      003CC6 90 00 A4         [24]  699 	mov	dptr,#_mili_value
      003CC9 EC               [12]  700 	mov	a,r4
      003CCA F0               [24]  701 	movx	@dptr,a
      003CCB ED               [12]  702 	mov	a,r5
      003CCC A3               [24]  703 	inc	dptr
      003CCD F0               [24]  704 	movx	@dptr,a
      003CCE EE               [12]  705 	mov	a,r6
      003CCF A3               [24]  706 	inc	dptr
      003CD0 F0               [24]  707 	movx	@dptr,a
      003CD1 EF               [12]  708 	mov	a,r7
      003CD2 A3               [24]  709 	inc	dptr
      003CD3 F0               [24]  710 	movx	@dptr,a
                                    711 ;	Timer.c:55: second_value=mili/100;
      003CD4 90 00 A0         [24]  712 	mov	dptr,#_mili
      003CD7 E0               [24]  713 	movx	a,@dptr
      003CD8 FC               [12]  714 	mov	r4,a
      003CD9 A3               [24]  715 	inc	dptr
      003CDA E0               [24]  716 	movx	a,@dptr
      003CDB FD               [12]  717 	mov	r5,a
      003CDC A3               [24]  718 	inc	dptr
      003CDD E0               [24]  719 	movx	a,@dptr
      003CDE FE               [12]  720 	mov	r6,a
      003CDF A3               [24]  721 	inc	dptr
      003CE0 E0               [24]  722 	movx	a,@dptr
      003CE1 FF               [12]  723 	mov	r7,a
      003CE2 90 00 40         [24]  724 	mov	dptr,#__divulong_PARM_2
      003CE5 74 64            [12]  725 	mov	a,#0x64
      003CE7 F0               [24]  726 	movx	@dptr,a
      003CE8 E4               [12]  727 	clr	a
      003CE9 A3               [24]  728 	inc	dptr
      003CEA F0               [24]  729 	movx	@dptr,a
      003CEB A3               [24]  730 	inc	dptr
      003CEC F0               [24]  731 	movx	@dptr,a
      003CED A3               [24]  732 	inc	dptr
      003CEE F0               [24]  733 	movx	@dptr,a
      003CEF 8C 82            [24]  734 	mov	dpl,r4
      003CF1 8D 83            [24]  735 	mov	dph,r5
      003CF3 8E F0            [24]  736 	mov	b,r6
      003CF5 EF               [12]  737 	mov	a,r7
      003CF6 12 41 C9         [24]  738 	lcall	__divulong
      003CF9 AC 82            [24]  739 	mov	r4,dpl
      003CFB AD 83            [24]  740 	mov	r5,dph
      003CFD AE F0            [24]  741 	mov	r6,b
      003CFF FF               [12]  742 	mov	r7,a
      003D00 90 00 A8         [24]  743 	mov	dptr,#_second_value
      003D03 EC               [12]  744 	mov	a,r4
      003D04 F0               [24]  745 	movx	@dptr,a
      003D05 ED               [12]  746 	mov	a,r5
      003D06 A3               [24]  747 	inc	dptr
      003D07 F0               [24]  748 	movx	@dptr,a
      003D08 EE               [12]  749 	mov	a,r6
      003D09 A3               [24]  750 	inc	dptr
      003D0A F0               [24]  751 	movx	@dptr,a
      003D0B EF               [12]  752 	mov	a,r7
      003D0C A3               [24]  753 	inc	dptr
      003D0D F0               [24]  754 	movx	@dptr,a
                                    755 ;	Timer.c:56: seconds=second_value%60;                           ///printing the timer value form the start of program
      003D0E 90 00 A8         [24]  756 	mov	dptr,#_second_value
      003D11 E0               [24]  757 	movx	a,@dptr
      003D12 FC               [12]  758 	mov	r4,a
      003D13 A3               [24]  759 	inc	dptr
      003D14 E0               [24]  760 	movx	a,@dptr
      003D15 FD               [12]  761 	mov	r5,a
      003D16 A3               [24]  762 	inc	dptr
      003D17 E0               [24]  763 	movx	a,@dptr
      003D18 FE               [12]  764 	mov	r6,a
      003D19 A3               [24]  765 	inc	dptr
      003D1A E0               [24]  766 	movx	a,@dptr
      003D1B FF               [12]  767 	mov	r7,a
      003D1C 90 00 37         [24]  768 	mov	dptr,#__modulong_PARM_2
      003D1F 74 3C            [12]  769 	mov	a,#0x3c
      003D21 F0               [24]  770 	movx	@dptr,a
      003D22 E4               [12]  771 	clr	a
      003D23 A3               [24]  772 	inc	dptr
      003D24 F0               [24]  773 	movx	@dptr,a
      003D25 A3               [24]  774 	inc	dptr
      003D26 F0               [24]  775 	movx	@dptr,a
      003D27 A3               [24]  776 	inc	dptr
      003D28 F0               [24]  777 	movx	@dptr,a
      003D29 8C 82            [24]  778 	mov	dpl,r4
      003D2B 8D 83            [24]  779 	mov	dph,r5
      003D2D 8E F0            [24]  780 	mov	b,r6
      003D2F EF               [12]  781 	mov	a,r7
      003D30 12 40 89         [24]  782 	lcall	__modulong
      003D33 AC 82            [24]  783 	mov	r4,dpl
      003D35 AD 83            [24]  784 	mov	r5,dph
      003D37 AE F0            [24]  785 	mov	r6,b
      003D39 FF               [12]  786 	mov	r7,a
      003D3A 90 00 AC         [24]  787 	mov	dptr,#_seconds
      003D3D EC               [12]  788 	mov	a,r4
      003D3E F0               [24]  789 	movx	@dptr,a
      003D3F ED               [12]  790 	mov	a,r5
      003D40 A3               [24]  791 	inc	dptr
      003D41 F0               [24]  792 	movx	@dptr,a
      003D42 EE               [12]  793 	mov	a,r6
      003D43 A3               [24]  794 	inc	dptr
      003D44 F0               [24]  795 	movx	@dptr,a
      003D45 EF               [12]  796 	mov	a,r7
      003D46 A3               [24]  797 	inc	dptr
      003D47 F0               [24]  798 	movx	@dptr,a
                                    799 ;	Timer.c:57: minutes=second_value/60;
      003D48 90 00 A8         [24]  800 	mov	dptr,#_second_value
      003D4B E0               [24]  801 	movx	a,@dptr
      003D4C FC               [12]  802 	mov	r4,a
      003D4D A3               [24]  803 	inc	dptr
      003D4E E0               [24]  804 	movx	a,@dptr
      003D4F FD               [12]  805 	mov	r5,a
      003D50 A3               [24]  806 	inc	dptr
      003D51 E0               [24]  807 	movx	a,@dptr
      003D52 FE               [12]  808 	mov	r6,a
      003D53 A3               [24]  809 	inc	dptr
      003D54 E0               [24]  810 	movx	a,@dptr
      003D55 FF               [12]  811 	mov	r7,a
      003D56 90 00 40         [24]  812 	mov	dptr,#__divulong_PARM_2
      003D59 74 3C            [12]  813 	mov	a,#0x3c
      003D5B F0               [24]  814 	movx	@dptr,a
      003D5C E4               [12]  815 	clr	a
      003D5D A3               [24]  816 	inc	dptr
      003D5E F0               [24]  817 	movx	@dptr,a
      003D5F A3               [24]  818 	inc	dptr
      003D60 F0               [24]  819 	movx	@dptr,a
      003D61 A3               [24]  820 	inc	dptr
      003D62 F0               [24]  821 	movx	@dptr,a
      003D63 8C 82            [24]  822 	mov	dpl,r4
      003D65 8D 83            [24]  823 	mov	dph,r5
      003D67 8E F0            [24]  824 	mov	b,r6
      003D69 EF               [12]  825 	mov	a,r7
      003D6A 12 41 C9         [24]  826 	lcall	__divulong
      003D6D AC 82            [24]  827 	mov	r4,dpl
      003D6F AD 83            [24]  828 	mov	r5,dph
      003D71 AE F0            [24]  829 	mov	r6,b
      003D73 FF               [12]  830 	mov	r7,a
      003D74 90 00 B0         [24]  831 	mov	dptr,#_minutes
      003D77 EC               [12]  832 	mov	a,r4
      003D78 F0               [24]  833 	movx	@dptr,a
      003D79 ED               [12]  834 	mov	a,r5
      003D7A A3               [24]  835 	inc	dptr
      003D7B F0               [24]  836 	movx	@dptr,a
      003D7C EE               [12]  837 	mov	a,r6
      003D7D A3               [24]  838 	inc	dptr
      003D7E F0               [24]  839 	movx	@dptr,a
      003D7F EF               [12]  840 	mov	a,r7
      003D80 A3               [24]  841 	inc	dptr
      003D81 F0               [24]  842 	movx	@dptr,a
                                    843 ;	Timer.c:58: if (seconds>59)
      003D82 90 00 AC         [24]  844 	mov	dptr,#_seconds
      003D85 E0               [24]  845 	movx	a,@dptr
      003D86 FC               [12]  846 	mov	r4,a
      003D87 A3               [24]  847 	inc	dptr
      003D88 E0               [24]  848 	movx	a,@dptr
      003D89 FD               [12]  849 	mov	r5,a
      003D8A A3               [24]  850 	inc	dptr
      003D8B E0               [24]  851 	movx	a,@dptr
      003D8C FE               [12]  852 	mov	r6,a
      003D8D A3               [24]  853 	inc	dptr
      003D8E E0               [24]  854 	movx	a,@dptr
      003D8F FF               [12]  855 	mov	r7,a
      003D90 C3               [12]  856 	clr	c
      003D91 74 3B            [12]  857 	mov	a,#0x3b
      003D93 9C               [12]  858 	subb	a,r4
      003D94 E4               [12]  859 	clr	a
      003D95 9D               [12]  860 	subb	a,r5
      003D96 E4               [12]  861 	clr	a
      003D97 9E               [12]  862 	subb	a,r6
      003D98 E4               [12]  863 	clr	a
      003D99 9F               [12]  864 	subb	a,r7
      003D9A 50 21            [24]  865 	jnc	00102$
                                    866 ;	Timer.c:59: minutes++;                                    ///timer clock calculation performed by taking mod and divide operation
      003D9C 90 00 B0         [24]  867 	mov	dptr,#_minutes
      003D9F E0               [24]  868 	movx	a,@dptr
      003DA0 FC               [12]  869 	mov	r4,a
      003DA1 A3               [24]  870 	inc	dptr
      003DA2 E0               [24]  871 	movx	a,@dptr
      003DA3 FD               [12]  872 	mov	r5,a
      003DA4 A3               [24]  873 	inc	dptr
      003DA5 E0               [24]  874 	movx	a,@dptr
      003DA6 FE               [12]  875 	mov	r6,a
      003DA7 A3               [24]  876 	inc	dptr
      003DA8 E0               [24]  877 	movx	a,@dptr
      003DA9 FF               [12]  878 	mov	r7,a
      003DAA 90 00 B0         [24]  879 	mov	dptr,#_minutes
      003DAD 74 01            [12]  880 	mov	a,#0x01
      003DAF 2C               [12]  881 	add	a,r4
      003DB0 F0               [24]  882 	movx	@dptr,a
      003DB1 E4               [12]  883 	clr	a
      003DB2 3D               [12]  884 	addc	a,r5
      003DB3 A3               [24]  885 	inc	dptr
      003DB4 F0               [24]  886 	movx	@dptr,a
      003DB5 E4               [12]  887 	clr	a
      003DB6 3E               [12]  888 	addc	a,r6
      003DB7 A3               [24]  889 	inc	dptr
      003DB8 F0               [24]  890 	movx	@dptr,a
      003DB9 E4               [12]  891 	clr	a
      003DBA 3F               [12]  892 	addc	a,r7
      003DBB A3               [24]  893 	inc	dptr
      003DBC F0               [24]  894 	movx	@dptr,a
      003DBD                        895 00102$:
                                    896 ;	Timer.c:60: minu=minutes%60;                                    ///1 min=60 sec    1hour=60 min    1 sec=1000 mili seconds
      003DBD 90 00 B0         [24]  897 	mov	dptr,#_minutes
      003DC0 E0               [24]  898 	movx	a,@dptr
      003DC1 FC               [12]  899 	mov	r4,a
      003DC2 A3               [24]  900 	inc	dptr
      003DC3 E0               [24]  901 	movx	a,@dptr
      003DC4 FD               [12]  902 	mov	r5,a
      003DC5 A3               [24]  903 	inc	dptr
      003DC6 E0               [24]  904 	movx	a,@dptr
      003DC7 FE               [12]  905 	mov	r6,a
      003DC8 A3               [24]  906 	inc	dptr
      003DC9 E0               [24]  907 	movx	a,@dptr
      003DCA FF               [12]  908 	mov	r7,a
      003DCB 90 00 37         [24]  909 	mov	dptr,#__modulong_PARM_2
      003DCE 74 3C            [12]  910 	mov	a,#0x3c
      003DD0 F0               [24]  911 	movx	@dptr,a
      003DD1 E4               [12]  912 	clr	a
      003DD2 A3               [24]  913 	inc	dptr
      003DD3 F0               [24]  914 	movx	@dptr,a
      003DD4 A3               [24]  915 	inc	dptr
      003DD5 F0               [24]  916 	movx	@dptr,a
      003DD6 A3               [24]  917 	inc	dptr
      003DD7 F0               [24]  918 	movx	@dptr,a
      003DD8 8C 82            [24]  919 	mov	dpl,r4
      003DDA 8D 83            [24]  920 	mov	dph,r5
      003DDC 8E F0            [24]  921 	mov	b,r6
      003DDE EF               [12]  922 	mov	a,r7
      003DDF 12 40 89         [24]  923 	lcall	__modulong
      003DE2 AC 82            [24]  924 	mov	r4,dpl
      003DE4 AD 83            [24]  925 	mov	r5,dph
      003DE6 AE F0            [24]  926 	mov	r6,b
      003DE8 FF               [12]  927 	mov	r7,a
      003DE9 90 00 B4         [24]  928 	mov	dptr,#_minu
      003DEC EC               [12]  929 	mov	a,r4
      003DED F0               [24]  930 	movx	@dptr,a
      003DEE ED               [12]  931 	mov	a,r5
      003DEF A3               [24]  932 	inc	dptr
      003DF0 F0               [24]  933 	movx	@dptr,a
      003DF1 EE               [12]  934 	mov	a,r6
      003DF2 A3               [24]  935 	inc	dptr
      003DF3 F0               [24]  936 	movx	@dptr,a
      003DF4 EF               [12]  937 	mov	a,r7
      003DF5 A3               [24]  938 	inc	dptr
      003DF6 F0               [24]  939 	movx	@dptr,a
                                    940 ;	Timer.c:61: hours=minutes/60;
      003DF7 90 00 B0         [24]  941 	mov	dptr,#_minutes
      003DFA E0               [24]  942 	movx	a,@dptr
      003DFB FC               [12]  943 	mov	r4,a
      003DFC A3               [24]  944 	inc	dptr
      003DFD E0               [24]  945 	movx	a,@dptr
      003DFE FD               [12]  946 	mov	r5,a
      003DFF A3               [24]  947 	inc	dptr
      003E00 E0               [24]  948 	movx	a,@dptr
      003E01 FE               [12]  949 	mov	r6,a
      003E02 A3               [24]  950 	inc	dptr
      003E03 E0               [24]  951 	movx	a,@dptr
      003E04 FF               [12]  952 	mov	r7,a
      003E05 90 00 40         [24]  953 	mov	dptr,#__divulong_PARM_2
      003E08 74 3C            [12]  954 	mov	a,#0x3c
      003E0A F0               [24]  955 	movx	@dptr,a
      003E0B E4               [12]  956 	clr	a
      003E0C A3               [24]  957 	inc	dptr
      003E0D F0               [24]  958 	movx	@dptr,a
      003E0E A3               [24]  959 	inc	dptr
      003E0F F0               [24]  960 	movx	@dptr,a
      003E10 A3               [24]  961 	inc	dptr
      003E11 F0               [24]  962 	movx	@dptr,a
      003E12 8C 82            [24]  963 	mov	dpl,r4
      003E14 8D 83            [24]  964 	mov	dph,r5
      003E16 8E F0            [24]  965 	mov	b,r6
      003E18 EF               [12]  966 	mov	a,r7
      003E19 12 41 C9         [24]  967 	lcall	__divulong
      003E1C AC 82            [24]  968 	mov	r4,dpl
      003E1E 90 00 B8         [24]  969 	mov	dptr,#_hours
      003E21 EC               [12]  970 	mov	a,r4
      003E22 F0               [24]  971 	movx	@dptr,a
                                    972 ;	Timer.c:62: DisplayTimeToLCD(hours,minutes,seconds,mili_value);
      003E23 E0               [24]  973 	movx	a,@dptr
      003E24 FF               [12]  974 	mov	r7,a
      003E25 7E 00            [12]  975 	mov	r6,#0x00
      003E27 90 00 B0         [24]  976 	mov	dptr,#_minutes
      003E2A E0               [24]  977 	movx	a,@dptr
      003E2B FA               [12]  978 	mov	r2,a
      003E2C A3               [24]  979 	inc	dptr
      003E2D E0               [24]  980 	movx	a,@dptr
      003E2E FB               [12]  981 	mov	r3,a
      003E2F A3               [24]  982 	inc	dptr
      003E30 E0               [24]  983 	movx	a,@dptr
      003E31 A3               [24]  984 	inc	dptr
      003E32 E0               [24]  985 	movx	a,@dptr
      003E33 90 00 AC         [24]  986 	mov	dptr,#_seconds
      003E36 E0               [24]  987 	movx	a,@dptr
      003E37 F8               [12]  988 	mov	r0,a
      003E38 A3               [24]  989 	inc	dptr
      003E39 E0               [24]  990 	movx	a,@dptr
      003E3A F9               [12]  991 	mov	r1,a
      003E3B A3               [24]  992 	inc	dptr
      003E3C E0               [24]  993 	movx	a,@dptr
      003E3D A3               [24]  994 	inc	dptr
      003E3E E0               [24]  995 	movx	a,@dptr
      003E3F 88 08            [24]  996 	mov	_timer_sloc0_1_0,r0
      003E41 89 09            [24]  997 	mov	(_timer_sloc0_1_0 + 1),r1
      003E43 90 00 A4         [24]  998 	mov	dptr,#_mili_value
      003E46 E0               [24]  999 	movx	a,@dptr
      003E47 F8               [12] 1000 	mov	r0,a
      003E48 A3               [24] 1001 	inc	dptr
      003E49 E0               [24] 1002 	movx	a,@dptr
      003E4A F9               [12] 1003 	mov	r1,a
      003E4B A3               [24] 1004 	inc	dptr
      003E4C E0               [24] 1005 	movx	a,@dptr
      003E4D A3               [24] 1006 	inc	dptr
      003E4E E0               [24] 1007 	movx	a,@dptr
      003E4F 90 00 1E         [24] 1008 	mov	dptr,#_DisplayTimeToLCD_PARM_2
      003E52 EA               [12] 1009 	mov	a,r2
      003E53 F0               [24] 1010 	movx	@dptr,a
      003E54 EB               [12] 1011 	mov	a,r3
      003E55 A3               [24] 1012 	inc	dptr
      003E56 F0               [24] 1013 	movx	@dptr,a
      003E57 90 00 20         [24] 1014 	mov	dptr,#_DisplayTimeToLCD_PARM_3
      003E5A E5 08            [12] 1015 	mov	a,_timer_sloc0_1_0
      003E5C F0               [24] 1016 	movx	@dptr,a
      003E5D E5 09            [12] 1017 	mov	a,(_timer_sloc0_1_0 + 1)
      003E5F A3               [24] 1018 	inc	dptr
      003E60 F0               [24] 1019 	movx	@dptr,a
      003E61 90 00 22         [24] 1020 	mov	dptr,#_DisplayTimeToLCD_PARM_4
      003E64 E8               [12] 1021 	mov	a,r0
      003E65 F0               [24] 1022 	movx	@dptr,a
      003E66 E9               [12] 1023 	mov	a,r1
      003E67 A3               [24] 1024 	inc	dptr
      003E68 F0               [24] 1025 	movx	@dptr,a
      003E69 8F 82            [24] 1026 	mov	dpl,r7
      003E6B 8E 83            [24] 1027 	mov	dph,r6
                                   1028 ;	Timer.c:63: }
      003E6D 02 3E 70         [24] 1029 	ljmp	_DisplayTimeToLCD
                                   1030 ;------------------------------------------------------------
                                   1031 ;Allocation info for local variables in function 'DisplayTimeToLCD'
                                   1032 ;------------------------------------------------------------
                                   1033 ;m                         Allocated with name '_DisplayTimeToLCD_PARM_2'
                                   1034 ;s                         Allocated with name '_DisplayTimeToLCD_PARM_3'
                                   1035 ;mil                       Allocated with name '_DisplayTimeToLCD_PARM_4'
                                   1036 ;h                         Allocated with name '_DisplayTimeToLCD_h_65536_56'
                                   1037 ;i                         Allocated with name '_DisplayTimeToLCD_i_131072_58'
                                   1038 ;time_value                Allocated with name '_DisplayTimeToLCD_time_value_131072_58'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	Timer.c:66: void DisplayTimeToLCD( unsigned int h, unsigned int m, unsigned int s,unsigned int mil )   /// Displays time in HH:MM:SS.mili format
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function DisplayTimeToLCD
                                   1043 ;	-----------------------------------------
      003E70                       1044 _DisplayTimeToLCD:
      003E70 AF 83            [24] 1045 	mov	r7,dph
      003E72 E5 82            [12] 1046 	mov	a,dpl
      003E74 90 00 24         [24] 1047 	mov	dptr,#_DisplayTimeToLCD_h_65536_56
      003E77 F0               [24] 1048 	movx	@dptr,a
      003E78 EF               [12] 1049 	mov	a,r7
      003E79 A3               [24] 1050 	inc	dptr
      003E7A F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	Timer.c:68: if (input!='S')
      003E7B 90 00 9C         [24] 1053 	mov	dptr,#_input
      003E7E E0               [24] 1054 	movx	a,@dptr
      003E7F FF               [12] 1055 	mov	r7,a
      003E80 BF 53 01         [24] 1056 	cjne	r7,#0x53,00121$
      003E83 22               [24] 1057 	ret
      003E84                       1058 00121$:
                                   1059 ;	Timer.c:71: char time_value[10]= {'0',':','0','0',':','0','0','.','0'};
      003E84 90 00 26         [24] 1060 	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
      003E87 74 30            [12] 1061 	mov	a,#0x30
      003E89 F0               [24] 1062 	movx	@dptr,a
      003E8A 90 00 27         [24] 1063 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0001)
      003E8D 74 3A            [12] 1064 	mov	a,#0x3a
      003E8F F0               [24] 1065 	movx	@dptr,a
      003E90 90 00 28         [24] 1066 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0002)
      003E93 74 30            [12] 1067 	mov	a,#0x30
      003E95 F0               [24] 1068 	movx	@dptr,a
      003E96 90 00 29         [24] 1069 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0003)
      003E99 F0               [24] 1070 	movx	@dptr,a
      003E9A 90 00 2A         [24] 1071 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0004)
      003E9D 74 3A            [12] 1072 	mov	a,#0x3a
      003E9F F0               [24] 1073 	movx	@dptr,a
      003EA0 90 00 2B         [24] 1074 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0005)
      003EA3 74 30            [12] 1075 	mov	a,#0x30
      003EA5 F0               [24] 1076 	movx	@dptr,a
      003EA6 90 00 2C         [24] 1077 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0006)
      003EA9 F0               [24] 1078 	movx	@dptr,a
      003EAA 90 00 2D         [24] 1079 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0007)
      003EAD 74 2E            [12] 1080 	mov	a,#0x2e
      003EAF F0               [24] 1081 	movx	@dptr,a
      003EB0 90 00 2E         [24] 1082 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0008)
      003EB3 74 30            [12] 1083 	mov	a,#0x30
      003EB5 F0               [24] 1084 	movx	@dptr,a
      003EB6 90 00 2F         [24] 1085 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0009)
      003EB9 E4               [12] 1086 	clr	a
      003EBA F0               [24] 1087 	movx	@dptr,a
                                   1088 ;	Timer.c:72: time_value[0]=(h%10)+48;
      003EBB 90 00 24         [24] 1089 	mov	dptr,#_DisplayTimeToLCD_h_65536_56
      003EBE E0               [24] 1090 	movx	a,@dptr
      003EBF FE               [12] 1091 	mov	r6,a
      003EC0 A3               [24] 1092 	inc	dptr
      003EC1 E0               [24] 1093 	movx	a,@dptr
      003EC2 FF               [12] 1094 	mov	r7,a
      003EC3 90 00 82         [24] 1095 	mov	dptr,#__moduint_PARM_2
      003EC6 74 0A            [12] 1096 	mov	a,#0x0a
      003EC8 F0               [24] 1097 	movx	@dptr,a
      003EC9 E4               [12] 1098 	clr	a
      003ECA A3               [24] 1099 	inc	dptr
      003ECB F0               [24] 1100 	movx	@dptr,a
      003ECC 8E 82            [24] 1101 	mov	dpl,r6
      003ECE 8F 83            [24] 1102 	mov	dph,r7
      003ED0 12 4C 81         [24] 1103 	lcall	__moduint
      003ED3 AE 82            [24] 1104 	mov	r6,dpl
      003ED5 74 30            [12] 1105 	mov	a,#0x30
      003ED7 2E               [12] 1106 	add	a,r6
      003ED8 90 00 26         [24] 1107 	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
      003EDB F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	Timer.c:73: time_value[1]=':';
      003EDC 90 00 27         [24] 1110 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0001)
      003EDF 74 3A            [12] 1111 	mov	a,#0x3a
      003EE1 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	Timer.c:74: time_value[2]=(m/10)+48;                           ///taking the ascii value of the clock and printing in the values of clock on lcd
      003EE2 90 00 1E         [24] 1114 	mov	dptr,#_DisplayTimeToLCD_PARM_2
      003EE5 E0               [24] 1115 	movx	a,@dptr
      003EE6 FE               [12] 1116 	mov	r6,a
      003EE7 A3               [24] 1117 	inc	dptr
      003EE8 E0               [24] 1118 	movx	a,@dptr
      003EE9 FF               [12] 1119 	mov	r7,a
      003EEA 90 00 30         [24] 1120 	mov	dptr,#__divuint_PARM_2
      003EED 74 0A            [12] 1121 	mov	a,#0x0a
      003EEF F0               [24] 1122 	movx	@dptr,a
      003EF0 E4               [12] 1123 	clr	a
      003EF1 A3               [24] 1124 	inc	dptr
      003EF2 F0               [24] 1125 	movx	@dptr,a
      003EF3 8E 82            [24] 1126 	mov	dpl,r6
      003EF5 8F 83            [24] 1127 	mov	dph,r7
      003EF7 C0 07            [24] 1128 	push	ar7
      003EF9 C0 06            [24] 1129 	push	ar6
      003EFB 12 3F FC         [24] 1130 	lcall	__divuint
      003EFE AC 82            [24] 1131 	mov	r4,dpl
      003F00 D0 06            [24] 1132 	pop	ar6
      003F02 D0 07            [24] 1133 	pop	ar7
      003F04 74 30            [12] 1134 	mov	a,#0x30
      003F06 2C               [12] 1135 	add	a,r4
      003F07 90 00 28         [24] 1136 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0002)
      003F0A F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	Timer.c:75: time_value[3]=(m%10)+48;
      003F0B 90 00 82         [24] 1139 	mov	dptr,#__moduint_PARM_2
      003F0E 74 0A            [12] 1140 	mov	a,#0x0a
      003F10 F0               [24] 1141 	movx	@dptr,a
      003F11 E4               [12] 1142 	clr	a
      003F12 A3               [24] 1143 	inc	dptr
      003F13 F0               [24] 1144 	movx	@dptr,a
      003F14 8E 82            [24] 1145 	mov	dpl,r6
      003F16 8F 83            [24] 1146 	mov	dph,r7
      003F18 12 4C 81         [24] 1147 	lcall	__moduint
      003F1B AE 82            [24] 1148 	mov	r6,dpl
      003F1D 74 30            [12] 1149 	mov	a,#0x30
      003F1F 2E               [12] 1150 	add	a,r6
      003F20 90 00 29         [24] 1151 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0003)
      003F23 F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	Timer.c:76: time_value[4]=':';
      003F24 90 00 2A         [24] 1154 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0004)
      003F27 74 3A            [12] 1155 	mov	a,#0x3a
      003F29 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	Timer.c:77: time_value[5]=(s/10)+48;
      003F2A 90 00 20         [24] 1158 	mov	dptr,#_DisplayTimeToLCD_PARM_3
      003F2D E0               [24] 1159 	movx	a,@dptr
      003F2E FE               [12] 1160 	mov	r6,a
      003F2F A3               [24] 1161 	inc	dptr
      003F30 E0               [24] 1162 	movx	a,@dptr
      003F31 FF               [12] 1163 	mov	r7,a
      003F32 90 00 30         [24] 1164 	mov	dptr,#__divuint_PARM_2
      003F35 74 0A            [12] 1165 	mov	a,#0x0a
      003F37 F0               [24] 1166 	movx	@dptr,a
      003F38 E4               [12] 1167 	clr	a
      003F39 A3               [24] 1168 	inc	dptr
      003F3A F0               [24] 1169 	movx	@dptr,a
      003F3B 8E 82            [24] 1170 	mov	dpl,r6
      003F3D 8F 83            [24] 1171 	mov	dph,r7
      003F3F C0 07            [24] 1172 	push	ar7
      003F41 C0 06            [24] 1173 	push	ar6
      003F43 12 3F FC         [24] 1174 	lcall	__divuint
      003F46 AC 82            [24] 1175 	mov	r4,dpl
      003F48 D0 06            [24] 1176 	pop	ar6
      003F4A D0 07            [24] 1177 	pop	ar7
      003F4C 74 30            [12] 1178 	mov	a,#0x30
      003F4E 2C               [12] 1179 	add	a,r4
      003F4F 90 00 2B         [24] 1180 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0005)
      003F52 F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	Timer.c:78: time_value[6]=(s%10)+48;
      003F53 90 00 82         [24] 1183 	mov	dptr,#__moduint_PARM_2
      003F56 74 0A            [12] 1184 	mov	a,#0x0a
      003F58 F0               [24] 1185 	movx	@dptr,a
      003F59 E4               [12] 1186 	clr	a
      003F5A A3               [24] 1187 	inc	dptr
      003F5B F0               [24] 1188 	movx	@dptr,a
      003F5C 8E 82            [24] 1189 	mov	dpl,r6
      003F5E 8F 83            [24] 1190 	mov	dph,r7
      003F60 12 4C 81         [24] 1191 	lcall	__moduint
      003F63 AE 82            [24] 1192 	mov	r6,dpl
      003F65 74 30            [12] 1193 	mov	a,#0x30
      003F67 2E               [12] 1194 	add	a,r6
      003F68 90 00 2C         [24] 1195 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0006)
      003F6B F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	Timer.c:79: time_value[7]='.';
      003F6C 90 00 2D         [24] 1198 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0007)
      003F6F 74 2E            [12] 1199 	mov	a,#0x2e
      003F71 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	Timer.c:80: time_value[8]=(mil/10)+48;
      003F72 90 00 22         [24] 1202 	mov	dptr,#_DisplayTimeToLCD_PARM_4
      003F75 E0               [24] 1203 	movx	a,@dptr
      003F76 FE               [12] 1204 	mov	r6,a
      003F77 A3               [24] 1205 	inc	dptr
      003F78 E0               [24] 1206 	movx	a,@dptr
      003F79 FF               [12] 1207 	mov	r7,a
      003F7A 90 00 30         [24] 1208 	mov	dptr,#__divuint_PARM_2
      003F7D 74 0A            [12] 1209 	mov	a,#0x0a
      003F7F F0               [24] 1210 	movx	@dptr,a
      003F80 E4               [12] 1211 	clr	a
      003F81 A3               [24] 1212 	inc	dptr
      003F82 F0               [24] 1213 	movx	@dptr,a
      003F83 8E 82            [24] 1214 	mov	dpl,r6
      003F85 8F 83            [24] 1215 	mov	dph,r7
      003F87 12 3F FC         [24] 1216 	lcall	__divuint
      003F8A AE 82            [24] 1217 	mov	r6,dpl
      003F8C 74 30            [12] 1218 	mov	a,#0x30
      003F8E 2E               [12] 1219 	add	a,r6
      003F8F 90 00 2E         [24] 1220 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0008)
      003F92 F0               [24] 1221 	movx	@dptr,a
                                   1222 ;	Timer.c:81: time_value[9]='\0';
      003F93 90 00 2F         [24] 1223 	mov	dptr,#(_DisplayTimeToLCD_time_value_131072_58 + 0x0009)
      003F96 E4               [12] 1224 	clr	a
      003F97 F0               [24] 1225 	movx	@dptr,a
                                   1226 ;	Timer.c:83: lcdgotoxy(0,6);                                   ///go to a particular location to print time
      003F98 90 00 06         [24] 1227 	mov	dptr,#_lcdgotoxy_PARM_2
      003F9B 74 06            [12] 1228 	mov	a,#0x06
      003F9D F0               [24] 1229 	movx	@dptr,a
      003F9E 75 82 00         [24] 1230 	mov	dpl,#0x00
      003FA1 12 31 69         [24] 1231 	lcall	_lcdgotoxy
                                   1232 ;	Timer.c:84: lcdbusywait();
      003FA4 12 30 F3         [24] 1233 	lcall	_lcdbusywait
                                   1234 ;	Timer.c:85: lcdputstr(time_value);                           ///print time at that location
      003FA7 90 00 26         [24] 1235 	mov	dptr,#_DisplayTimeToLCD_time_value_131072_58
      003FAA 75 F0 00         [24] 1236 	mov	b,#0x00
      003FAD 12 31 FC         [24] 1237 	lcall	_lcdputstr
                                   1238 ;	Timer.c:86: lcdbusywait();
      003FB0 12 30 F3         [24] 1239 	lcall	_lcdbusywait
                                   1240 ;	Timer.c:87: if(input=='W')                                   ///if input is to write character , print character value at that location
      003FB3 90 00 9C         [24] 1241 	mov	dptr,#_input
      003FB6 E0               [24] 1242 	movx	a,@dptr
      003FB7 FF               [12] 1243 	mov	r7,a
      003FB8 BF 57 12         [24] 1244 	cjne	r7,#0x57,00102$
                                   1245 ;	Timer.c:89: lcdgotoaddr(address1);
      003FBB 90 00 9B         [24] 1246 	mov	dptr,#_address1
      003FBE E0               [24] 1247 	movx	a,@dptr
      003FBF F5 82            [12] 1248 	mov	dpl,a
      003FC1 12 31 5D         [24] 1249 	lcall	_lcdgotoaddr
                                   1250 ;	Timer.c:90: lcdputch(ch);
      003FC4 90 00 95         [24] 1251 	mov	dptr,#_ch
      003FC7 E0               [24] 1252 	movx	a,@dptr
      003FC8 F5 82            [12] 1253 	mov	dpl,a
      003FCA 12 31 E5         [24] 1254 	lcall	_lcdputch
      003FCD                       1255 00102$:
                                   1256 ;	Timer.c:92: if(input=='P')                              ///if input is to write string , print string value at that location
      003FCD 90 00 9C         [24] 1257 	mov	dptr,#_input
      003FD0 E0               [24] 1258 	movx	a,@dptr
      003FD1 FF               [12] 1259 	mov	r7,a
      003FD2 BF 50 26         [24] 1260 	cjne	r7,#0x50,00107$
                                   1261 ;	Timer.c:94: lcdgotoxy(row2,column2);
      003FD5 90 00 96         [24] 1262 	mov	dptr,#_row2
      003FD8 E0               [24] 1263 	movx	a,@dptr
      003FD9 FF               [12] 1264 	mov	r7,a
      003FDA 90 00 97         [24] 1265 	mov	dptr,#_column2
      003FDD E0               [24] 1266 	movx	a,@dptr
      003FDE 90 00 06         [24] 1267 	mov	dptr,#_lcdgotoxy_PARM_2
      003FE1 F0               [24] 1268 	movx	@dptr,a
      003FE2 8F 82            [24] 1269 	mov	dpl,r7
      003FE4 12 31 69         [24] 1270 	lcall	_lcdgotoxy
                                   1271 ;	Timer.c:95: lcdputstr(string);
      003FE7 90 00 98         [24] 1272 	mov	dptr,#_string
      003FEA E0               [24] 1273 	movx	a,@dptr
      003FEB FD               [12] 1274 	mov	r5,a
      003FEC A3               [24] 1275 	inc	dptr
      003FED E0               [24] 1276 	movx	a,@dptr
      003FEE FE               [12] 1277 	mov	r6,a
      003FEF A3               [24] 1278 	inc	dptr
      003FF0 E0               [24] 1279 	movx	a,@dptr
      003FF1 FF               [12] 1280 	mov	r7,a
      003FF2 8D 82            [24] 1281 	mov	dpl,r5
      003FF4 8E 83            [24] 1282 	mov	dph,r6
      003FF6 8F F0            [24] 1283 	mov	b,r7
                                   1284 ;	Timer.c:98: }
      003FF8 02 31 FC         [24] 1285 	ljmp	_lcdputstr
      003FFB                       1286 00107$:
      003FFB 22               [24] 1287 	ret
                                   1288 	.area CSEG    (CODE)
                                   1289 	.area CONST   (CODE)
                                   1290 	.area XINIT   (CODE)
      00534A                       1291 __xinit__mili:
      00534A 00 00 00 00           1292 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      00534E                       1293 __xinit__mili_value:
      00534E 00 00 00 00           1294 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      005352                       1295 __xinit__second_value:
      005352 00 00 00 00           1296 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      005356                       1297 __xinit__seconds:
      005356 00 00 00 00           1298 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      00535A                       1299 __xinit__minutes:
      00535A 00 00 00 00           1300 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      00535E                       1301 __xinit__minu:
      00535E 00 00 00 00           1302 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      005362                       1303 __xinit__hours:
      005362 00                    1304 	.db #0x00	; 0
                                   1305 	.area CABS    (ABS,CODE)
