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
                                     12 	.globl _PCA_ISR
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
                                    209 ;--------------------------------------------------------
                                    210 ; special function registers
                                    211 ;--------------------------------------------------------
                                    212 	.area RSEG    (ABS,DATA)
      000000                        213 	.org 0x0000
                           0000C8   214 _T2CON	=	0x00c8
                           0000CA   215 _RCAP2L	=	0x00ca
                           0000CB   216 _RCAP2H	=	0x00cb
                           0000CC   217 _TL2	=	0x00cc
                           0000CD   218 _TH2	=	0x00cd
                           00008E   219 _AUXR	=	0x008e
                           0000A2   220 _AUXR1	=	0x00a2
                           000097   221 _CKRL	=	0x0097
                           00008F   222 _CKCON0	=	0x008f
                           0000AF   223 _CKCON1	=	0x00af
                           0000FA   224 _CCAP0H	=	0x00fa
                           0000FB   225 _CCAP1H	=	0x00fb
                           0000FC   226 _CCAP2H	=	0x00fc
                           0000FD   227 _CCAP3H	=	0x00fd
                           0000FE   228 _CCAP4H	=	0x00fe
                           0000EA   229 _CCAP0L	=	0x00ea
                           0000EB   230 _CCAP1L	=	0x00eb
                           0000EC   231 _CCAP2L	=	0x00ec
                           0000ED   232 _CCAP3L	=	0x00ed
                           0000EE   233 _CCAP4L	=	0x00ee
                           0000DA   234 _CCAPM0	=	0x00da
                           0000DB   235 _CCAPM1	=	0x00db
                           0000DC   236 _CCAPM2	=	0x00dc
                           0000DD   237 _CCAPM3	=	0x00dd
                           0000DE   238 _CCAPM4	=	0x00de
                           0000D8   239 _CCON	=	0x00d8
                           0000F9   240 _CH	=	0x00f9
                           0000E9   241 _CL	=	0x00e9
                           0000D9   242 _CMOD	=	0x00d9
                           0000A8   243 _IEN0	=	0x00a8
                           0000B1   244 _IEN1	=	0x00b1
                           0000B8   245 _IPL0	=	0x00b8
                           0000B7   246 _IPH0	=	0x00b7
                           0000B2   247 _IPL1	=	0x00b2
                           0000B3   248 _IPH1	=	0x00b3
                           0000C0   249 _P4	=	0x00c0
                           0000E8   250 _P5	=	0x00e8
                           0000A6   251 _WDTRST	=	0x00a6
                           0000A7   252 _WDTPRG	=	0x00a7
                           0000A9   253 _SADDR	=	0x00a9
                           0000B9   254 _SADEN	=	0x00b9
                           0000C3   255 _SPCON	=	0x00c3
                           0000C4   256 _SPSTA	=	0x00c4
                           0000C5   257 _SPDAT	=	0x00c5
                           0000C9   258 _T2MOD	=	0x00c9
                           00009B   259 _BDRCON	=	0x009b
                           00009A   260 _BRL	=	0x009a
                           00009C   261 _KBLS	=	0x009c
                           00009D   262 _KBE	=	0x009d
                           00009E   263 _KBF	=	0x009e
                           0000D2   264 _EECON	=	0x00d2
                           000080   265 _P0	=	0x0080
                           000081   266 _SP	=	0x0081
                           000082   267 _DPL	=	0x0082
                           000083   268 _DPH	=	0x0083
                           000087   269 _PCON	=	0x0087
                           000088   270 _TCON	=	0x0088
                           000089   271 _TMOD	=	0x0089
                           00008A   272 _TL0	=	0x008a
                           00008B   273 _TL1	=	0x008b
                           00008C   274 _TH0	=	0x008c
                           00008D   275 _TH1	=	0x008d
                           000090   276 _P1	=	0x0090
                           000098   277 _SCON	=	0x0098
                           000099   278 _SBUF	=	0x0099
                           0000A0   279 _P2	=	0x00a0
                           0000A8   280 _IE	=	0x00a8
                           0000B0   281 _P3	=	0x00b0
                           0000B8   282 _IP	=	0x00b8
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                                    286 ;--------------------------------------------------------
                                    287 ; special function bits
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           0000AD   291 _ET2	=	0x00ad
                           0000BD   292 _PT2	=	0x00bd
                           0000C8   293 _T2CON_0	=	0x00c8
                           0000C9   294 _T2CON_1	=	0x00c9
                           0000CA   295 _T2CON_2	=	0x00ca
                           0000CB   296 _T2CON_3	=	0x00cb
                           0000CC   297 _T2CON_4	=	0x00cc
                           0000CD   298 _T2CON_5	=	0x00cd
                           0000CE   299 _T2CON_6	=	0x00ce
                           0000CF   300 _T2CON_7	=	0x00cf
                           0000C8   301 _CP_RL2	=	0x00c8
                           0000C9   302 _C_T2	=	0x00c9
                           0000CA   303 _TR2	=	0x00ca
                           0000CB   304 _EXEN2	=	0x00cb
                           0000CC   305 _TCLK	=	0x00cc
                           0000CD   306 _RCLK	=	0x00cd
                           0000CE   307 _EXF2	=	0x00ce
                           0000CF   308 _TF2	=	0x00cf
                           0000DF   309 _CF	=	0x00df
                           0000DE   310 _CR	=	0x00de
                           0000DC   311 _CCF4	=	0x00dc
                           0000DB   312 _CCF3	=	0x00db
                           0000DA   313 _CCF2	=	0x00da
                           0000D9   314 _CCF1	=	0x00d9
                           0000D8   315 _CCF0	=	0x00d8
                           0000AE   316 _EC	=	0x00ae
                           0000BE   317 _PPCL	=	0x00be
                           0000BD   318 _PT2L	=	0x00bd
                           0000BC   319 _PSL	=	0x00bc
                           0000BB   320 _PT1L	=	0x00bb
                           0000BA   321 _PX1L	=	0x00ba
                           0000B9   322 _PT0L	=	0x00b9
                           0000B8   323 _PX0L	=	0x00b8
                           0000C0   324 _P4_0	=	0x00c0
                           0000C1   325 _P4_1	=	0x00c1
                           0000C2   326 _P4_2	=	0x00c2
                           0000C3   327 _P4_3	=	0x00c3
                           0000C4   328 _P4_4	=	0x00c4
                           0000C5   329 _P4_5	=	0x00c5
                           0000C6   330 _P4_6	=	0x00c6
                           0000C7   331 _P4_7	=	0x00c7
                           0000E8   332 _P5_0	=	0x00e8
                           0000E9   333 _P5_1	=	0x00e9
                           0000EA   334 _P5_2	=	0x00ea
                           0000EB   335 _P5_3	=	0x00eb
                           0000EC   336 _P5_4	=	0x00ec
                           0000ED   337 _P5_5	=	0x00ed
                           0000EE   338 _P5_6	=	0x00ee
                           0000EF   339 _P5_7	=	0x00ef
                           000080   340 _P0_0	=	0x0080
                           000081   341 _P0_1	=	0x0081
                           000082   342 _P0_2	=	0x0082
                           000083   343 _P0_3	=	0x0083
                           000084   344 _P0_4	=	0x0084
                           000085   345 _P0_5	=	0x0085
                           000086   346 _P0_6	=	0x0086
                           000087   347 _P0_7	=	0x0087
                           000088   348 _IT0	=	0x0088
                           000089   349 _IE0	=	0x0089
                           00008A   350 _IT1	=	0x008a
                           00008B   351 _IE1	=	0x008b
                           00008C   352 _TR0	=	0x008c
                           00008D   353 _TF0	=	0x008d
                           00008E   354 _TR1	=	0x008e
                           00008F   355 _TF1	=	0x008f
                           000090   356 _P1_0	=	0x0090
                           000091   357 _P1_1	=	0x0091
                           000092   358 _P1_2	=	0x0092
                           000093   359 _P1_3	=	0x0093
                           000094   360 _P1_4	=	0x0094
                           000095   361 _P1_5	=	0x0095
                           000096   362 _P1_6	=	0x0096
                           000097   363 _P1_7	=	0x0097
                           000098   364 _RI	=	0x0098
                           000099   365 _TI	=	0x0099
                           00009A   366 _RB8	=	0x009a
                           00009B   367 _TB8	=	0x009b
                           00009C   368 _REN	=	0x009c
                           00009D   369 _SM2	=	0x009d
                           00009E   370 _SM1	=	0x009e
                           00009F   371 _SM0	=	0x009f
                           0000A0   372 _P2_0	=	0x00a0
                           0000A1   373 _P2_1	=	0x00a1
                           0000A2   374 _P2_2	=	0x00a2
                           0000A3   375 _P2_3	=	0x00a3
                           0000A4   376 _P2_4	=	0x00a4
                           0000A5   377 _P2_5	=	0x00a5
                           0000A6   378 _P2_6	=	0x00a6
                           0000A7   379 _P2_7	=	0x00a7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B0   386 _P3_0	=	0x00b0
                           0000B1   387 _P3_1	=	0x00b1
                           0000B2   388 _P3_2	=	0x00b2
                           0000B3   389 _P3_3	=	0x00b3
                           0000B4   390 _P3_4	=	0x00b4
                           0000B5   391 _P3_5	=	0x00b5
                           0000B6   392 _P3_6	=	0x00b6
                           0000B7   393 _P3_7	=	0x00b7
                           0000B0   394 _RXD	=	0x00b0
                           0000B1   395 _TXD	=	0x00b1
                           0000B2   396 _INT0	=	0x00b2
                           0000B3   397 _INT1	=	0x00b3
                           0000B4   398 _T0	=	0x00b4
                           0000B5   399 _T1	=	0x00b5
                           0000B6   400 _WR	=	0x00b6
                           0000B7   401 _RD	=	0x00b7
                           0000B8   402 _PX0	=	0x00b8
                           0000B9   403 _PT0	=	0x00b9
                           0000BA   404 _PX1	=	0x00ba
                           0000BB   405 _PT1	=	0x00bb
                           0000BC   406 _PS	=	0x00bc
                           0000D0   407 _P	=	0x00d0
                           0000D1   408 _F1	=	0x00d1
                           0000D2   409 _OV	=	0x00d2
                           0000D3   410 _RS0	=	0x00d3
                           0000D4   411 _RS1	=	0x00d4
                           0000D5   412 _F0	=	0x00d5
                           0000D6   413 _AC	=	0x00d6
                           0000D7   414 _CY	=	0x00d7
                                    415 ;--------------------------------------------------------
                                    416 ; overlayable register banks
                                    417 ;--------------------------------------------------------
                                    418 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        419 	.ds 8
                                    420 ;--------------------------------------------------------
                                    421 ; internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area DSEG    (DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable items in internal ram 
                                    426 ;--------------------------------------------------------
                                    427 ;--------------------------------------------------------
                                    428 ; Stack segment in internal ram 
                                    429 ;--------------------------------------------------------
                                    430 	.area	SSEG
      000008                        431 __start__stack:
      000008                        432 	.ds	1
                                    433 
                                    434 ;--------------------------------------------------------
                                    435 ; indirectly addressable internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area ISEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XABS    (ABS,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external initialized ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XISEG   (XDATA)
                                    463 	.area HOME    (CODE)
                                    464 	.area GSINIT0 (CODE)
                                    465 	.area GSINIT1 (CODE)
                                    466 	.area GSINIT2 (CODE)
                                    467 	.area GSINIT3 (CODE)
                                    468 	.area GSINIT4 (CODE)
                                    469 	.area GSINIT5 (CODE)
                                    470 	.area GSINIT  (CODE)
                                    471 	.area GSFINAL (CODE)
                                    472 	.area CSEG    (CODE)
                                    473 ;--------------------------------------------------------
                                    474 ; interrupt vector 
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
      003000                        477 __interrupt_vect:
      003000 02 30 06         [24]  478 	ljmp	__sdcc_gsinit_startup
                                    479 ;--------------------------------------------------------
                                    480 ; global & static initialisations
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area GSINIT  (CODE)
                                    484 	.area GSFINAL (CODE)
                                    485 	.area GSINIT  (CODE)
                                    486 	.globl __sdcc_gsinit_startup
                                    487 	.globl __sdcc_program_startup
                                    488 	.globl __start__stack
                                    489 	.globl __mcs51_genXINIT
                                    490 	.globl __mcs51_genXRAMCLEAR
                                    491 	.globl __mcs51_genRAMCLEAR
                                    492 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  493 	ljmp	__sdcc_program_startup
                                    494 ;--------------------------------------------------------
                                    495 ; Home
                                    496 ;--------------------------------------------------------
                                    497 	.area HOME    (CODE)
                                    498 	.area HOME    (CODE)
      003003                        499 __sdcc_program_startup:
      003003 02 30 85         [24]  500 	ljmp	_main
                                    501 ;	return from main will return to caller
                                    502 ;--------------------------------------------------------
                                    503 ; code
                                    504 ;--------------------------------------------------------
                                    505 	.area CSEG    (CODE)
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'PCA_ISR'
                                    508 ;------------------------------------------------------------
                                    509 ;temp                      Allocated with name '_PCA_ISR_temp_65536_15'
                                    510 ;------------------------------------------------------------
                                    511 ;	main.c:9: void PCA_ISR()
                                    512 ;	-----------------------------------------
                                    513 ;	 function PCA_ISR
                                    514 ;	-----------------------------------------
      003062                        515 _PCA_ISR:
                           000007   516 	ar7 = 0x07
                           000006   517 	ar6 = 0x06
                           000005   518 	ar5 = 0x05
                           000004   519 	ar4 = 0x04
                           000003   520 	ar3 = 0x03
                           000002   521 	ar2 = 0x02
                           000001   522 	ar1 = 0x01
                           000000   523 	ar0 = 0x00
                                    524 ;	main.c:12: IE = IE & 0xBF; // Stop Interrupts
      003062 53 A8 BF         [24]  525 	anl	_IE,#0xbf
                                    526 ;	main.c:13: CCF0 = 0; // Clear Int flag
                                    527 ;	assignBit
      003065 C2 D8            [12]  528 	clr	_CCF0
                                    529 ;	main.c:14: temp = CCAP0L | (CCAP0H << 8); // The following four lines
      003067 AF FA            [24]  530 	mov	r7,_CCAP0H
      003069 7E 00            [12]  531 	mov	r6,#0x00
      00306B AC EA            [24]  532 	mov	r4,_CCAP0L
      00306D 7D 00            [12]  533 	mov	r5,#0x00
      00306F EC               [12]  534 	mov	a,r4
      003070 42 06            [12]  535 	orl	ar6,a
      003072 ED               [12]  536 	mov	a,r5
      003073 42 07            [12]  537 	orl	ar7,a
                                    538 ;	main.c:15: temp += 0x4E20; // of code increase the
      003075 74 20            [12]  539 	mov	a,#0x20
      003077 2E               [12]  540 	add	a,r6
      003078 FE               [12]  541 	mov	r6,a
      003079 74 4E            [12]  542 	mov	a,#0x4e
      00307B 3F               [12]  543 	addc	a,r7
      00307C FF               [12]  544 	mov	r7,a
                                    545 ;	main.c:16: CCAP0L = temp; // compare value in CCAP0
      00307D 8E EA            [24]  546 	mov	_CCAP0L,r6
                                    547 ;	main.c:17: CCAP0H = temp >> 8; // by 20000, effectively
      00307F 8F FA            [24]  548 	mov	_CCAP0H,r7
                                    549 ;	main.c:19: IE = IE | 0x40; // Start interrupts
      003081 43 A8 40         [24]  550 	orl	_IE,#0x40
                                    551 ;	main.c:20: }
      003084 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'main'
                                    555 ;------------------------------------------------------------
                                    556 ;	main.c:21: void main()
                                    557 ;	-----------------------------------------
                                    558 ;	 function main
                                    559 ;	-----------------------------------------
      003085                        560 _main:
                                    561 ;	main.c:23: CMOD = 0x01; // Setup PCA timer mode.
      003085 75 D9 01         [24]  562 	mov	_CMOD,#0x01
                                    563 ;	main.c:24: CH = 0x00; // Init values
      003088 75 F9 00         [24]  564 	mov	_CH,#0x00
                                    565 ;	main.c:25: CL = 0x00;
      00308B 75 E9 00         [24]  566 	mov	_CL,#0x00
                                    567 ;	main.c:26: CCAP0L = 0x20; // Set compare limit
      00308E 75 EA 20         [24]  568 	mov	_CCAP0L,#0x20
                                    569 ;	main.c:27: CCAP0H = 0x4E;
      003091 75 FA 4E         [24]  570 	mov	_CCAP0H,#0x4e
                                    571 ;	main.c:28: CCAPM0 = 0x49; // Set Modules zero for 16bit Timer mode.
      003094 75 DA 49         [24]  572 	mov	_CCAPM0,#0x49
                                    573 ;	main.c:29: IE = 0xC0; // Enable Interrupts
      003097 75 A8 C0         [24]  574 	mov	_IE,#0xc0
                                    575 ;	main.c:30: CR = 1; // Start PCA timer
                                    576 ;	assignBit
      00309A D2 DE            [12]  577 	setb	_CR
                                    578 ;	main.c:31: while(1)
      00309C                        579 00102$:
                                    580 ;	main.c:33: }
      00309C 80 FE            [24]  581 	sjmp	00102$
                                    582 	.area CSEG    (CODE)
                                    583 	.area CONST   (CODE)
                                    584 	.area XINIT   (CODE)
                                    585 	.area CABS    (ABS,CODE)
