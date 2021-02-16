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
                                    209 	.globl _capture2
                                    210 	.globl _capture1
                                    211 	.globl _pulse_width
                                    212 	.globl _flag
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
      000008                        435 __start__stack:
      000008                        436 	.ds	1
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
                                    459 ;--------------------------------------------------------
                                    460 ; absolute external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XABS    (ABS,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; external initialized ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XISEG   (XDATA)
      006000                        467 _flag::
      006000                        468 	.ds 2
      006002                        469 _pulse_width::
      006002                        470 	.ds 2
      006004                        471 _capture1::
      006004                        472 	.ds 2
      006006                        473 _capture2::
      006006                        474 	.ds 2
                                    475 	.area HOME    (CODE)
                                    476 	.area GSINIT0 (CODE)
                                    477 	.area GSINIT1 (CODE)
                                    478 	.area GSINIT2 (CODE)
                                    479 	.area GSINIT3 (CODE)
                                    480 	.area GSINIT4 (CODE)
                                    481 	.area GSINIT5 (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.area GSFINAL (CODE)
                                    484 	.area CSEG    (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; interrupt vector 
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
      003000                        489 __interrupt_vect:
      003000 02 30 06         [24]  490 	ljmp	__sdcc_gsinit_startup
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.globl __sdcc_gsinit_startup
                                    499 	.globl __sdcc_program_startup
                                    500 	.globl __start__stack
                                    501 	.globl __mcs51_genXINIT
                                    502 	.globl __mcs51_genXRAMCLEAR
                                    503 	.globl __mcs51_genRAMCLEAR
                                    504 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  505 	ljmp	__sdcc_program_startup
                                    506 ;--------------------------------------------------------
                                    507 ; Home
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
                                    510 	.area HOME    (CODE)
      003003                        511 __sdcc_program_startup:
      003003 02 30 C1         [24]  512 	ljmp	_main
                                    513 ;	return from main will return to caller
                                    514 ;--------------------------------------------------------
                                    515 ; code
                                    516 ;--------------------------------------------------------
                                    517 	.area CSEG    (CODE)
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'PCA_ISR'
                                    520 ;------------------------------------------------------------
                                    521 ;	main.c:12: void PCA_ISR() // PCA Interrupt Service routine
                                    522 ;	-----------------------------------------
                                    523 ;	 function PCA_ISR
                                    524 ;	-----------------------------------------
      003062                        525 _PCA_ISR:
                           000007   526 	ar7 = 0x07
                           000006   527 	ar6 = 0x06
                           000005   528 	ar5 = 0x05
                           000004   529 	ar4 = 0x04
                           000003   530 	ar3 = 0x03
                           000002   531 	ar2 = 0x02
                           000001   532 	ar1 = 0x01
                           000000   533 	ar0 = 0x00
                                    534 ;	main.c:14: CCF0 = 0; // Clear the PCA flag
                                    535 ;	assignBit
      003062 C2 D8            [12]  536 	clr	_CCF0
                                    537 ;	main.c:15: if (flag == 0)
      003064 90 60 00         [24]  538 	mov	dptr,#_flag
      003067 E0               [24]  539 	movx	a,@dptr
      003068 F5 F0            [12]  540 	mov	b,a
      00306A A3               [24]  541 	inc	dptr
      00306B E0               [24]  542 	movx	a,@dptr
      00306C 45 F0            [12]  543 	orl	a,b
                                    544 ;	main.c:17: capture1 = CCAP0L | (CCAP0H << 8); // If positive edge, store in
      00306E 70 1D            [24]  545 	jnz	00102$
      003070 AF FA            [24]  546 	mov	r7,_CCAP0H
      003072 FE               [12]  547 	mov	r6,a
      003073 AC EA            [24]  548 	mov	r4,_CCAP0L
      003075 FD               [12]  549 	mov	r5,a
      003076 90 60 04         [24]  550 	mov	dptr,#_capture1
      003079 EE               [12]  551 	mov	a,r6
      00307A 4C               [12]  552 	orl	a,r4
      00307B F0               [24]  553 	movx	@dptr,a
      00307C EF               [12]  554 	mov	a,r7
      00307D 4D               [12]  555 	orl	a,r5
      00307E A3               [24]  556 	inc	dptr
      00307F F0               [24]  557 	movx	@dptr,a
                                    558 ;	main.c:18: CCAPM0 = 0x11; // capture1. Setup module
      003080 75 DA 11         [24]  559 	mov	_CCAPM0,#0x11
                                    560 ;	main.c:19: flag = 1; // 0 for capturing falling edge
      003083 90 60 00         [24]  561 	mov	dptr,#_flag
      003086 74 01            [12]  562 	mov	a,#0x01
      003088 F0               [24]  563 	movx	@dptr,a
      003089 E4               [12]  564 	clr	a
      00308A A3               [24]  565 	inc	dptr
      00308B F0               [24]  566 	movx	@dptr,a
      00308C 22               [24]  567 	ret
      00308D                        568 00102$:
                                    569 ;	main.c:23: capture2 = CCAP0L | (CCAP0H << 8); // Capture falling edge
      00308D AF FA            [24]  570 	mov	r7,_CCAP0H
      00308F 7E 00            [12]  571 	mov	r6,#0x00
      003091 AC EA            [24]  572 	mov	r4,_CCAP0L
      003093 7D 00            [12]  573 	mov	r5,#0x00
      003095 EC               [12]  574 	mov	a,r4
      003096 42 06            [12]  575 	orl	ar6,a
      003098 ED               [12]  576 	mov	a,r5
      003099 42 07            [12]  577 	orl	ar7,a
      00309B 90 60 06         [24]  578 	mov	dptr,#_capture2
      00309E EE               [12]  579 	mov	a,r6
      00309F F0               [24]  580 	movx	@dptr,a
      0030A0 EF               [12]  581 	mov	a,r7
      0030A1 A3               [24]  582 	inc	dptr
      0030A2 F0               [24]  583 	movx	@dptr,a
                                    584 ;	main.c:24: pulse_width = capture2 - capture1; // Final calculation.
      0030A3 90 60 04         [24]  585 	mov	dptr,#_capture1
      0030A6 E0               [24]  586 	movx	a,@dptr
      0030A7 FC               [12]  587 	mov	r4,a
      0030A8 A3               [24]  588 	inc	dptr
      0030A9 E0               [24]  589 	movx	a,@dptr
      0030AA FD               [12]  590 	mov	r5,a
      0030AB 90 60 02         [24]  591 	mov	dptr,#_pulse_width
      0030AE EE               [12]  592 	mov	a,r6
      0030AF C3               [12]  593 	clr	c
      0030B0 9C               [12]  594 	subb	a,r4
      0030B1 F0               [24]  595 	movx	@dptr,a
      0030B2 EF               [12]  596 	mov	a,r7
      0030B3 9D               [12]  597 	subb	a,r5
      0030B4 A3               [24]  598 	inc	dptr
      0030B5 F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:25: CCAPM0 = 0x21; // Setup module 0 for
      0030B6 75 DA 21         [24]  601 	mov	_CCAPM0,#0x21
                                    602 ;	main.c:27: flag = 0; // Reset flag
      0030B9 90 60 00         [24]  603 	mov	dptr,#_flag
      0030BC E4               [12]  604 	clr	a
      0030BD F0               [24]  605 	movx	@dptr,a
      0030BE A3               [24]  606 	inc	dptr
      0030BF F0               [24]  607 	movx	@dptr,a
                                    608 ;	main.c:29: }
      0030C0 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'main'
                                    612 ;------------------------------------------------------------
                                    613 ;	main.c:30: void main()
                                    614 ;	-----------------------------------------
                                    615 ;	 function main
                                    616 ;	-----------------------------------------
      0030C1                        617 _main:
                                    618 ;	main.c:32: CMOD = 0x03; //Setting up the PCA counter
      0030C1 75 D9 03         [24]  619 	mov	_CMOD,#0x03
                                    620 ;	main.c:33: CH = 0x00;
      0030C4 75 F9 00         [24]  621 	mov	_CH,#0x00
                                    622 ;	main.c:34: CL = 0x00;
      0030C7 75 E9 00         [24]  623 	mov	_CL,#0x00
                                    624 ;	main.c:35: CCAPM0 = 0x21; // Setup module zero in capture mode
      0030CA 75 DA 21         [24]  625 	mov	_CCAPM0,#0x21
                                    626 ;	main.c:36: flag = 0;
      0030CD 90 60 00         [24]  627 	mov	dptr,#_flag
      0030D0 E4               [12]  628 	clr	a
      0030D1 F0               [24]  629 	movx	@dptr,a
      0030D2 A3               [24]  630 	inc	dptr
      0030D3 F0               [24]  631 	movx	@dptr,a
                                    632 ;	main.c:37: IE = 0xC0; // Enable PCA interrupt
      0030D4 75 A8 C0         [24]  633 	mov	_IE,#0xc0
                                    634 ;	main.c:38: CR = 1; // Start PCA counter
                                    635 ;	assignBit
      0030D7 D2 DE            [12]  636 	setb	_CR
                                    637 ;	main.c:39: while (1) // Software trap
      0030D9                        638 00102$:
                                    639 ;	main.c:41: }
      0030D9 80 FE            [24]  640 	sjmp	00102$
                                    641 	.area CSEG    (CODE)
                                    642 	.area CONST   (CODE)
                                    643 	.area XINIT   (CODE)
      0030DF                        644 __xinit__flag:
      0030DF 00 00                  645 	.byte #0x00, #0x00	; 0
      0030E1                        646 __xinit__pulse_width:
      0030E1 00 00                  647 	.byte #0x00, #0x00	; 0
      0030E3                        648 __xinit__capture1:
      0030E3 00 00                  649 	.byte #0x00, #0x00	; 0
      0030E5                        650 __xinit__capture2:
      0030E5 00 00                  651 	.byte #0x00, #0x00	; 0
                                    652 	.area CABS    (ABS,CODE)
