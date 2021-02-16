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
                                     11 	.globl ___sdcc_heap_size
                                     12 	.globl _main
                                     13 	.globl _free
                                     14 	.globl _malloc
                                     15 	.globl _atoi
                                     16 	.globl _printf_tiny
                                     17 	.globl _gets
                                     18 	.globl _printf
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _P5_7
                                     95 	.globl _P5_6
                                     96 	.globl _P5_5
                                     97 	.globl _P5_4
                                     98 	.globl _P5_3
                                     99 	.globl _P5_2
                                    100 	.globl _P5_1
                                    101 	.globl _P5_0
                                    102 	.globl _P4_7
                                    103 	.globl _P4_6
                                    104 	.globl _P4_5
                                    105 	.globl _P4_4
                                    106 	.globl _P4_3
                                    107 	.globl _P4_2
                                    108 	.globl _P4_1
                                    109 	.globl _P4_0
                                    110 	.globl _PX0L
                                    111 	.globl _PT0L
                                    112 	.globl _PX1L
                                    113 	.globl _PT1L
                                    114 	.globl _PSL
                                    115 	.globl _PT2L
                                    116 	.globl _PPCL
                                    117 	.globl _EC
                                    118 	.globl _CCF0
                                    119 	.globl _CCF1
                                    120 	.globl _CCF2
                                    121 	.globl _CCF3
                                    122 	.globl _CCF4
                                    123 	.globl _CR
                                    124 	.globl _CF
                                    125 	.globl _TF2
                                    126 	.globl _EXF2
                                    127 	.globl _RCLK
                                    128 	.globl _TCLK
                                    129 	.globl _EXEN2
                                    130 	.globl _TR2
                                    131 	.globl _C_T2
                                    132 	.globl _CP_RL2
                                    133 	.globl _T2CON_7
                                    134 	.globl _T2CON_6
                                    135 	.globl _T2CON_5
                                    136 	.globl _T2CON_4
                                    137 	.globl _T2CON_3
                                    138 	.globl _T2CON_2
                                    139 	.globl _T2CON_1
                                    140 	.globl _T2CON_0
                                    141 	.globl _PT2
                                    142 	.globl _ET2
                                    143 	.globl _B
                                    144 	.globl _ACC
                                    145 	.globl _PSW
                                    146 	.globl _IP
                                    147 	.globl _P3
                                    148 	.globl _IE
                                    149 	.globl _P2
                                    150 	.globl _SBUF
                                    151 	.globl _SCON
                                    152 	.globl _P1
                                    153 	.globl _TH1
                                    154 	.globl _TH0
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TMOD
                                    158 	.globl _TCON
                                    159 	.globl _PCON
                                    160 	.globl _DPH
                                    161 	.globl _DPL
                                    162 	.globl _SP
                                    163 	.globl _P0
                                    164 	.globl _EECON
                                    165 	.globl _KBF
                                    166 	.globl _KBE
                                    167 	.globl _KBLS
                                    168 	.globl _BRL
                                    169 	.globl _BDRCON
                                    170 	.globl _T2MOD
                                    171 	.globl _SPDAT
                                    172 	.globl _SPSTA
                                    173 	.globl _SPCON
                                    174 	.globl _SADEN
                                    175 	.globl _SADDR
                                    176 	.globl _WDTPRG
                                    177 	.globl _WDTRST
                                    178 	.globl _P5
                                    179 	.globl _P4
                                    180 	.globl _IPH1
                                    181 	.globl _IPL1
                                    182 	.globl _IPH0
                                    183 	.globl _IPL0
                                    184 	.globl _IEN1
                                    185 	.globl _IEN0
                                    186 	.globl _CMOD
                                    187 	.globl _CL
                                    188 	.globl _CH
                                    189 	.globl _CCON
                                    190 	.globl _CCAPM4
                                    191 	.globl _CCAPM3
                                    192 	.globl _CCAPM2
                                    193 	.globl _CCAPM1
                                    194 	.globl _CCAPM0
                                    195 	.globl _CCAP4L
                                    196 	.globl _CCAP3L
                                    197 	.globl _CCAP2L
                                    198 	.globl _CCAP1L
                                    199 	.globl _CCAP0L
                                    200 	.globl _CCAP4H
                                    201 	.globl _CCAP3H
                                    202 	.globl _CCAP2H
                                    203 	.globl _CCAP1H
                                    204 	.globl _CCAP0H
                                    205 	.globl _CKCON1
                                    206 	.globl _CKCON0
                                    207 	.globl _CKRL
                                    208 	.globl _AUXR1
                                    209 	.globl _AUXR
                                    210 	.globl _TH2
                                    211 	.globl _TL2
                                    212 	.globl _RCAP2H
                                    213 	.globl _RCAP2L
                                    214 	.globl _T2CON
                                    215 	.globl _buffer1
                                    216 	.globl _buffer0
                                    217 	.globl _no_of_characters
                                    218 	.globl _buffer_free_Space
                                    219 	.globl _buffer_space_filled
                                    220 	.globl _buffer_allocated_size
                                    221 	.globl _buffer
                                    222 	.globl _c
                                    223 	.globl _buffer_start_size
                                    224 	.globl _buffer_num
                                    225 	.globl _ascii
                                    226 	.globl _buffer_size
                                    227 	.globl _i
                                    228 	.globl ___sdcc_heap
                                    229 	.globl _function
                                    230 	.globl _getnumber
                                    231 	.globl _putchar
                                    232 	.globl _getchar
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                           000080   289 _P0	=	0x0080
                           000081   290 _SP	=	0x0081
                           000082   291 _DPL	=	0x0082
                           000083   292 _DPH	=	0x0083
                           000087   293 _PCON	=	0x0087
                           000088   294 _TCON	=	0x0088
                           000089   295 _TMOD	=	0x0089
                           00008A   296 _TL0	=	0x008a
                           00008B   297 _TL1	=	0x008b
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           000090   300 _P1	=	0x0090
                           000098   301 _SCON	=	0x0098
                           000099   302 _SBUF	=	0x0099
                           0000A0   303 _P2	=	0x00a0
                           0000A8   304 _IE	=	0x00a8
                           0000B0   305 _P3	=	0x00b0
                           0000B8   306 _IP	=	0x00b8
                           0000D0   307 _PSW	=	0x00d0
                           0000E0   308 _ACC	=	0x00e0
                           0000F0   309 _B	=	0x00f0
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000DF   333 _CF	=	0x00df
                           0000DE   334 _CR	=	0x00de
                           0000DC   335 _CCF4	=	0x00dc
                           0000DB   336 _CCF3	=	0x00db
                           0000DA   337 _CCF2	=	0x00da
                           0000D9   338 _CCF1	=	0x00d9
                           0000D8   339 _CCF0	=	0x00d8
                           0000AE   340 _EC	=	0x00ae
                           0000BE   341 _PPCL	=	0x00be
                           0000BD   342 _PT2L	=	0x00bd
                           0000BC   343 _PSL	=	0x00bc
                           0000BB   344 _PT1L	=	0x00bb
                           0000BA   345 _PX1L	=	0x00ba
                           0000B9   346 _PT0L	=	0x00b9
                           0000B8   347 _PX0L	=	0x00b8
                           0000C0   348 _P4_0	=	0x00c0
                           0000C1   349 _P4_1	=	0x00c1
                           0000C2   350 _P4_2	=	0x00c2
                           0000C3   351 _P4_3	=	0x00c3
                           0000C4   352 _P4_4	=	0x00c4
                           0000C5   353 _P4_5	=	0x00c5
                           0000C6   354 _P4_6	=	0x00c6
                           0000C7   355 _P4_7	=	0x00c7
                           0000E8   356 _P5_0	=	0x00e8
                           0000E9   357 _P5_1	=	0x00e9
                           0000EA   358 _P5_2	=	0x00ea
                           0000EB   359 _P5_3	=	0x00eb
                           0000EC   360 _P5_4	=	0x00ec
                           0000ED   361 _P5_5	=	0x00ed
                           0000EE   362 _P5_6	=	0x00ee
                           0000EF   363 _P5_7	=	0x00ef
                           000080   364 _P0_0	=	0x0080
                           000081   365 _P0_1	=	0x0081
                           000082   366 _P0_2	=	0x0082
                           000083   367 _P0_3	=	0x0083
                           000084   368 _P0_4	=	0x0084
                           000085   369 _P0_5	=	0x0085
                           000086   370 _P0_6	=	0x0086
                           000087   371 _P0_7	=	0x0087
                           000088   372 _IT0	=	0x0088
                           000089   373 _IE0	=	0x0089
                           00008A   374 _IT1	=	0x008a
                           00008B   375 _IE1	=	0x008b
                           00008C   376 _TR0	=	0x008c
                           00008D   377 _TF0	=	0x008d
                           00008E   378 _TR1	=	0x008e
                           00008F   379 _TF1	=	0x008f
                           000090   380 _P1_0	=	0x0090
                           000091   381 _P1_1	=	0x0091
                           000092   382 _P1_2	=	0x0092
                           000093   383 _P1_3	=	0x0093
                           000094   384 _P1_4	=	0x0094
                           000095   385 _P1_5	=	0x0095
                           000096   386 _P1_6	=	0x0096
                           000097   387 _P1_7	=	0x0097
                           000098   388 _RI	=	0x0098
                           000099   389 _TI	=	0x0099
                           00009A   390 _RB8	=	0x009a
                           00009B   391 _TB8	=	0x009b
                           00009C   392 _REN	=	0x009c
                           00009D   393 _SM2	=	0x009d
                           00009E   394 _SM1	=	0x009e
                           00009F   395 _SM0	=	0x009f
                           0000A0   396 _P2_0	=	0x00a0
                           0000A1   397 _P2_1	=	0x00a1
                           0000A2   398 _P2_2	=	0x00a2
                           0000A3   399 _P2_3	=	0x00a3
                           0000A4   400 _P2_4	=	0x00a4
                           0000A5   401 _P2_5	=	0x00a5
                           0000A6   402 _P2_6	=	0x00a6
                           0000A7   403 _P2_7	=	0x00a7
                           0000A8   404 _EX0	=	0x00a8
                           0000A9   405 _ET0	=	0x00a9
                           0000AA   406 _EX1	=	0x00aa
                           0000AB   407 _ET1	=	0x00ab
                           0000AC   408 _ES	=	0x00ac
                           0000AF   409 _EA	=	0x00af
                           0000B0   410 _P3_0	=	0x00b0
                           0000B1   411 _P3_1	=	0x00b1
                           0000B2   412 _P3_2	=	0x00b2
                           0000B3   413 _P3_3	=	0x00b3
                           0000B4   414 _P3_4	=	0x00b4
                           0000B5   415 _P3_5	=	0x00b5
                           0000B6   416 _P3_6	=	0x00b6
                           0000B7   417 _P3_7	=	0x00b7
                           0000B0   418 _RXD	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B2   420 _INT0	=	0x00b2
                           0000B3   421 _INT1	=	0x00b3
                           0000B4   422 _T0	=	0x00b4
                           0000B5   423 _T1	=	0x00b5
                           0000B6   424 _WR	=	0x00b6
                           0000B7   425 _RD	=	0x00b7
                           0000B8   426 _PX0	=	0x00b8
                           0000B9   427 _PT0	=	0x00b9
                           0000BA   428 _PX1	=	0x00ba
                           0000BB   429 _PT1	=	0x00bb
                           0000BC   430 _PS	=	0x00bc
                           0000D0   431 _P	=	0x00d0
                           0000D1   432 _F1	=	0x00d1
                           0000D2   433 _OV	=	0x00d2
                           0000D3   434 _RS0	=	0x00d3
                           0000D4   435 _RS1	=	0x00d4
                           0000D5   436 _F0	=	0x00d5
                           0000D6   437 _AC	=	0x00d6
                           0000D7   438 _CY	=	0x00d7
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable register banks
                                    441 ;--------------------------------------------------------
                                    442 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        443 	.ds 8
                                    444 ;--------------------------------------------------------
                                    445 ; internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area DSEG    (DATA)
      000008                        448 _function_sloc0_1_0:
      000008                        449 	.ds 2
      00000A                        450 _function_sloc1_1_0:
      00000A                        451 	.ds 2
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable items in internal ram 
                                    454 ;--------------------------------------------------------
                                    455 ;--------------------------------------------------------
                                    456 ; Stack segment in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 	.area	SSEG
      00001A                        459 __start__stack:
      00001A                        460 	.ds	1
                                    461 
                                    462 ;--------------------------------------------------------
                                    463 ; indirectly addressable internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area ISEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; absolute internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area IABS    (ABS,DATA)
                                    470 	.area IABS    (ABS,DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; bit data
                                    473 ;--------------------------------------------------------
                                    474 	.area BSEG    (BIT)
                                    475 ;--------------------------------------------------------
                                    476 ; paged external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area PSEG    (PAG,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XSEG    (XDATA)
      000001                        483 ___sdcc_heap::
      000001                        484 	.ds 4000
      000FA1                        485 _i::
      000FA1                        486 	.ds 2
      000FA3                        487 _buffer_size::
      000FA3                        488 	.ds 300
      0010CF                        489 _ascii::
      0010CF                        490 	.ds 2
      0010D1                        491 _buffer_num::
      0010D1                        492 	.ds 2
      0010D3                        493 _buffer_start_size::
      0010D3                        494 	.ds 2
      0010D5                        495 _c::
      0010D5                        496 	.ds 1
      0010D6                        497 _buffer::
      0010D6                        498 	.ds 450
      001298                        499 _buffer_allocated_size::
      001298                        500 	.ds 2
      00129A                        501 _buffer_space_filled::
      00129A                        502 	.ds 2
      00129C                        503 _buffer_free_Space::
      00129C                        504 	.ds 2
      00129E                        505 _no_of_characters::
      00129E                        506 	.ds 2
      0012A0                        507 _function_count1_65536_48:
      0012A0                        508 	.ds 2
      0012A2                        509 _function_count2_65536_48:
      0012A2                        510 	.ds 2
      0012A4                        511 _getnumber_number_65536_80:
      0012A4                        512 	.ds 200
      00136C                        513 _putchar_c_65536_81:
      00136C                        514 	.ds 2
                                    515 ;--------------------------------------------------------
                                    516 ; absolute external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XABS    (ABS,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; external initialized ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XISEG   (XDATA)
      0013C4                        523 _buffer0::
      0013C4                        524 	.ds 2
      0013C6                        525 _buffer1::
      0013C6                        526 	.ds 2
                                    527 	.area HOME    (CODE)
                                    528 	.area GSINIT0 (CODE)
                                    529 	.area GSINIT1 (CODE)
                                    530 	.area GSINIT2 (CODE)
                                    531 	.area GSINIT3 (CODE)
                                    532 	.area GSINIT4 (CODE)
                                    533 	.area GSINIT5 (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 	.area GSFINAL (CODE)
                                    536 	.area CSEG    (CODE)
                                    537 ;--------------------------------------------------------
                                    538 ; interrupt vector 
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
      003000                        541 __interrupt_vect:
      003000 02 30 06         [24]  542 	ljmp	__sdcc_gsinit_startup
                                    543 ;--------------------------------------------------------
                                    544 ; global & static initialisations
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.area GSFINAL (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.globl __sdcc_gsinit_startup
                                    551 	.globl __sdcc_program_startup
                                    552 	.globl __start__stack
                                    553 	.globl __mcs51_genXINIT
                                    554 	.globl __mcs51_genXRAMCLEAR
                                    555 	.globl __mcs51_genRAMCLEAR
                                    556 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  557 	ljmp	__sdcc_program_startup
                                    558 ;--------------------------------------------------------
                                    559 ; Home
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area HOME    (CODE)
      003003                        563 __sdcc_program_startup:
      003003 02 30 62         [24]  564 	ljmp	_main
                                    565 ;	return from main will return to caller
                                    566 ;--------------------------------------------------------
                                    567 ; code
                                    568 ;--------------------------------------------------------
                                    569 	.area CSEG    (CODE)
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'main'
                                    572 ;------------------------------------------------------------
                                    573 ;buffer1                   Allocated with name '_main_buffer1_65536_42'
                                    574 ;------------------------------------------------------------
                                    575 ;	main.c:27: int main()
                                    576 ;	-----------------------------------------
                                    577 ;	 function main
                                    578 ;	-----------------------------------------
      003062                        579 _main:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	main.c:32: printf_tiny("Specify the buffer size\n\r");
      003062 74 8C            [12]  589 	mov	a,#___str_0
      003064 C0 E0            [24]  590 	push	acc
      003066 74 4E            [12]  591 	mov	a,#(___str_0 >> 8)
      003068 C0 E0            [24]  592 	push	acc
      00306A 12 41 2C         [24]  593 	lcall	_printf_tiny
      00306D 15 81            [12]  594 	dec	sp
      00306F 15 81            [12]  595 	dec	sp
                                    596 ;	main.c:33: buffer_start_size=getnumber();           //get the buffer size
      003071 12 3D 49         [24]  597 	lcall	_getnumber
      003074 E5 82            [12]  598 	mov	a,dpl
      003076 85 83 F0         [24]  599 	mov	b,dph
      003079 90 10 D3         [24]  600 	mov	dptr,#_buffer_start_size
      00307C F0               [24]  601 	movx	@dptr,a
      00307D E5 F0            [12]  602 	mov	a,b
      00307F A3               [24]  603 	inc	dptr
      003080 F0               [24]  604 	movx	@dptr,a
                                    605 ;	main.c:34: while (!((buffer_start_size <= 3200) && (buffer_start_size >= 32)&&(buffer_start_size%16==0)))  //checking for valid buffer size
      003081                        606 00103$:
      003081 90 10 D3         [24]  607 	mov	dptr,#_buffer_start_size
      003084 E0               [24]  608 	movx	a,@dptr
      003085 FE               [12]  609 	mov	r6,a
      003086 A3               [24]  610 	inc	dptr
      003087 E0               [24]  611 	movx	a,@dptr
      003088 FF               [12]  612 	mov	r7,a
      003089 C3               [12]  613 	clr	c
      00308A 74 80            [12]  614 	mov	a,#0x80
      00308C 9E               [12]  615 	subb	a,r6
      00308D 74 0C            [12]  616 	mov	a,#0x0c
      00308F 9F               [12]  617 	subb	a,r7
      003090 40 0D            [24]  618 	jc	00104$
      003092 EE               [12]  619 	mov	a,r6
      003093 94 20            [12]  620 	subb	a,#0x20
      003095 EF               [12]  621 	mov	a,r7
      003096 94 00            [12]  622 	subb	a,#0x00
      003098 40 05            [24]  623 	jc	00104$
      00309A EE               [12]  624 	mov	a,r6
      00309B 54 0F            [12]  625 	anl	a,#0x0f
      00309D 60 30            [24]  626 	jz	00105$
      00309F                        627 00104$:
                                    628 ;	main.c:36: printf_tiny("Invalid buffer size\n\r");                           //printing the result as per buffer size entered
      00309F 74 A6            [12]  629 	mov	a,#___str_1
      0030A1 C0 E0            [24]  630 	push	acc
      0030A3 74 4E            [12]  631 	mov	a,#(___str_1 >> 8)
      0030A5 C0 E0            [24]  632 	push	acc
      0030A7 12 41 2C         [24]  633 	lcall	_printf_tiny
      0030AA 15 81            [12]  634 	dec	sp
      0030AC 15 81            [12]  635 	dec	sp
                                    636 ;	main.c:37: printf_tiny("Enter a new buffer size\n\r");
      0030AE 74 BC            [12]  637 	mov	a,#___str_2
      0030B0 C0 E0            [24]  638 	push	acc
      0030B2 74 4E            [12]  639 	mov	a,#(___str_2 >> 8)
      0030B4 C0 E0            [24]  640 	push	acc
      0030B6 12 41 2C         [24]  641 	lcall	_printf_tiny
      0030B9 15 81            [12]  642 	dec	sp
      0030BB 15 81            [12]  643 	dec	sp
                                    644 ;	main.c:38: buffer_start_size=getnumber();
      0030BD 12 3D 49         [24]  645 	lcall	_getnumber
      0030C0 E5 82            [12]  646 	mov	a,dpl
      0030C2 85 83 F0         [24]  647 	mov	b,dph
      0030C5 90 10 D3         [24]  648 	mov	dptr,#_buffer_start_size
      0030C8 F0               [24]  649 	movx	@dptr,a
      0030C9 E5 F0            [12]  650 	mov	a,b
      0030CB A3               [24]  651 	inc	dptr
      0030CC F0               [24]  652 	movx	@dptr,a
      0030CD 80 B2            [24]  653 	sjmp	00103$
      0030CF                        654 00105$:
                                    655 ;	main.c:40: buffer[0]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_0 at the start
      0030CF 8E 82            [24]  656 	mov	dpl,r6
      0030D1 8F 83            [24]  657 	mov	dph,r7
      0030D3 12 42 71         [24]  658 	lcall	_malloc
      0030D6 AE 82            [24]  659 	mov	r6,dpl
      0030D8 AF 83            [24]  660 	mov	r7,dph
      0030DA 7D 00            [12]  661 	mov	r5,#0x00
      0030DC 90 10 D6         [24]  662 	mov	dptr,#_buffer
      0030DF EE               [12]  663 	mov	a,r6
      0030E0 F0               [24]  664 	movx	@dptr,a
      0030E1 EF               [12]  665 	mov	a,r7
      0030E2 A3               [24]  666 	inc	dptr
      0030E3 F0               [24]  667 	movx	@dptr,a
      0030E4 ED               [12]  668 	mov	a,r5
      0030E5 A3               [24]  669 	inc	dptr
      0030E6 F0               [24]  670 	movx	@dptr,a
                                    671 ;	main.c:41: printf("Address of buffer_0=%p\n\r",buffer[0]);
      0030E7 C0 06            [24]  672 	push	ar6
      0030E9 C0 07            [24]  673 	push	ar7
      0030EB C0 05            [24]  674 	push	ar5
      0030ED 74 D6            [12]  675 	mov	a,#___str_3
      0030EF C0 E0            [24]  676 	push	acc
      0030F1 74 4E            [12]  677 	mov	a,#(___str_3 >> 8)
      0030F3 C0 E0            [24]  678 	push	acc
      0030F5 74 80            [12]  679 	mov	a,#0x80
      0030F7 C0 E0            [24]  680 	push	acc
      0030F9 12 44 48         [24]  681 	lcall	_printf
      0030FC E5 81            [12]  682 	mov	a,sp
      0030FE 24 FA            [12]  683 	add	a,#0xfa
      003100 F5 81            [12]  684 	mov	sp,a
                                    685 ;	main.c:42: buffer[1]= malloc(buffer_start_size*sizeof(char));                //allocating space for the buffer_1 at the start
      003102 90 10 D3         [24]  686 	mov	dptr,#_buffer_start_size
      003105 E0               [24]  687 	movx	a,@dptr
      003106 FE               [12]  688 	mov	r6,a
      003107 A3               [24]  689 	inc	dptr
      003108 E0               [24]  690 	movx	a,@dptr
      003109 FF               [12]  691 	mov	r7,a
      00310A 8E 82            [24]  692 	mov	dpl,r6
      00310C 8F 83            [24]  693 	mov	dph,r7
      00310E 12 42 71         [24]  694 	lcall	_malloc
      003111 AE 82            [24]  695 	mov	r6,dpl
      003113 AF 83            [24]  696 	mov	r7,dph
      003115 7D 00            [12]  697 	mov	r5,#0x00
      003117 90 10 D9         [24]  698 	mov	dptr,#(_buffer + 0x0003)
      00311A EE               [12]  699 	mov	a,r6
      00311B F0               [24]  700 	movx	@dptr,a
      00311C EF               [12]  701 	mov	a,r7
      00311D A3               [24]  702 	inc	dptr
      00311E F0               [24]  703 	movx	@dptr,a
      00311F ED               [12]  704 	mov	a,r5
      003120 A3               [24]  705 	inc	dptr
      003121 F0               [24]  706 	movx	@dptr,a
                                    707 ;	main.c:43: printf("Address of buffer_1=%p\n\r",buffer[1]);
      003122 C0 06            [24]  708 	push	ar6
      003124 C0 07            [24]  709 	push	ar7
      003126 C0 05            [24]  710 	push	ar5
      003128 74 EF            [12]  711 	mov	a,#___str_4
      00312A C0 E0            [24]  712 	push	acc
      00312C 74 4E            [12]  713 	mov	a,#(___str_4 >> 8)
      00312E C0 E0            [24]  714 	push	acc
      003130 74 80            [12]  715 	mov	a,#0x80
      003132 C0 E0            [24]  716 	push	acc
      003134 12 44 48         [24]  717 	lcall	_printf
      003137 E5 81            [12]  718 	mov	a,sp
      003139 24 FA            [12]  719 	add	a,#0xfa
      00313B F5 81            [12]  720 	mov	sp,a
                                    721 ;	main.c:45: if (buffer[1]==NULL)                                           //if buffer_1 is null, taking buffer size for both buffers again
      00313D 90 10 D9         [24]  722 	mov	dptr,#(_buffer + 0x0003)
      003140 E0               [24]  723 	movx	a,@dptr
      003141 FD               [12]  724 	mov	r5,a
      003142 A3               [24]  725 	inc	dptr
      003143 E0               [24]  726 	movx	a,@dptr
      003144 FE               [12]  727 	mov	r6,a
      003145 A3               [24]  728 	inc	dptr
      003146 E0               [24]  729 	movx	a,@dptr
      003147 FF               [12]  730 	mov	r7,a
      003148 ED               [12]  731 	mov	a,r5
      003149 4E               [12]  732 	orl	a,r6
      00314A 60 03            [24]  733 	jz	00151$
      00314C 02 32 3B         [24]  734 	ljmp	00112$
      00314F                        735 00151$:
                                    736 ;	main.c:47: printf_tiny("Error. Not enough space available for both buffers\n\r");
      00314F 74 08            [12]  737 	mov	a,#___str_5
      003151 C0 E0            [24]  738 	push	acc
      003153 74 4F            [12]  739 	mov	a,#(___str_5 >> 8)
      003155 C0 E0            [24]  740 	push	acc
      003157 12 41 2C         [24]  741 	lcall	_printf_tiny
      00315A 15 81            [12]  742 	dec	sp
      00315C 15 81            [12]  743 	dec	sp
                                    744 ;	main.c:48: printf_tiny("Free both buffers\n\r");
      00315E 74 3D            [12]  745 	mov	a,#___str_6
      003160 C0 E0            [24]  746 	push	acc
      003162 74 4F            [12]  747 	mov	a,#(___str_6 >> 8)
      003164 C0 E0            [24]  748 	push	acc
      003166 12 41 2C         [24]  749 	lcall	_printf_tiny
      003169 15 81            [12]  750 	dec	sp
      00316B 15 81            [12]  751 	dec	sp
                                    752 ;	main.c:49: free(buffer[0]);                                        //if buffer_1 is null, free buffer_0 and take input again
      00316D 90 10 D6         [24]  753 	mov	dptr,#_buffer
      003170 E0               [24]  754 	movx	a,@dptr
      003171 FD               [12]  755 	mov	r5,a
      003172 A3               [24]  756 	inc	dptr
      003173 E0               [24]  757 	movx	a,@dptr
      003174 FE               [12]  758 	mov	r6,a
      003175 A3               [24]  759 	inc	dptr
      003176 E0               [24]  760 	movx	a,@dptr
      003177 FF               [12]  761 	mov	r7,a
      003178 8D 82            [24]  762 	mov	dpl,r5
      00317A 8E 83            [24]  763 	mov	dph,r6
      00317C 8F F0            [24]  764 	mov	b,r7
      00317E 12 3D B0         [24]  765 	lcall	_free
                                    766 ;	main.c:50: printf_tiny("Print a smaller buffer size\n\r");
      003181 74 51            [12]  767 	mov	a,#___str_7
      003183 C0 E0            [24]  768 	push	acc
      003185 74 4F            [12]  769 	mov	a,#(___str_7 >> 8)
      003187 C0 E0            [24]  770 	push	acc
      003189 12 41 2C         [24]  771 	lcall	_printf_tiny
      00318C 15 81            [12]  772 	dec	sp
      00318E 15 81            [12]  773 	dec	sp
                                    774 ;	main.c:51: buffer_start_size=getnumber();
      003190 12 3D 49         [24]  775 	lcall	_getnumber
      003193 E5 82            [12]  776 	mov	a,dpl
      003195 85 83 F0         [24]  777 	mov	b,dph
      003198 90 10 D3         [24]  778 	mov	dptr,#_buffer_start_size
      00319B F0               [24]  779 	movx	@dptr,a
      00319C E5 F0            [12]  780 	mov	a,b
      00319E A3               [24]  781 	inc	dptr
      00319F F0               [24]  782 	movx	@dptr,a
                                    783 ;	main.c:52: while((buffer_start_size<2000) && (buffer_start_size>=32) && (buffer_start_size%16==0))      ////checking for valid buffer size
      0031A0                        784 00108$:
      0031A0 90 10 D3         [24]  785 	mov	dptr,#_buffer_start_size
      0031A3 E0               [24]  786 	movx	a,@dptr
      0031A4 FE               [12]  787 	mov	r6,a
      0031A5 A3               [24]  788 	inc	dptr
      0031A6 E0               [24]  789 	movx	a,@dptr
      0031A7 FF               [12]  790 	mov	r7,a
      0031A8 C3               [12]  791 	clr	c
      0031A9 EE               [12]  792 	mov	a,r6
      0031AA 94 D0            [12]  793 	subb	a,#0xd0
      0031AC EF               [12]  794 	mov	a,r7
      0031AD 94 07            [12]  795 	subb	a,#0x07
      0031AF 40 03            [24]  796 	jc	00152$
      0031B1 02 32 3E         [24]  797 	ljmp	00113$
      0031B4                        798 00152$:
      0031B4 C3               [12]  799 	clr	c
      0031B5 EE               [12]  800 	mov	a,r6
      0031B6 94 20            [12]  801 	subb	a,#0x20
      0031B8 EF               [12]  802 	mov	a,r7
      0031B9 94 00            [12]  803 	subb	a,#0x00
      0031BB 50 03            [24]  804 	jnc	00153$
      0031BD 02 32 3E         [24]  805 	ljmp	00113$
      0031C0                        806 00153$:
      0031C0 EE               [12]  807 	mov	a,r6
      0031C1 54 0F            [12]  808 	anl	a,#0x0f
      0031C3 60 02            [24]  809 	jz	00155$
      0031C5 80 77            [24]  810 	sjmp	00113$
      0031C7                        811 00155$:
                                    812 ;	main.c:54: buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));        //allocating space for the buffer_0 at the start and printing the address
      0031C7 8E 82            [24]  813 	mov	dpl,r6
      0031C9 8F 83            [24]  814 	mov	dph,r7
      0031CB 12 42 71         [24]  815 	lcall	_malloc
      0031CE AE 82            [24]  816 	mov	r6,dpl
      0031D0 AF 83            [24]  817 	mov	r7,dph
      0031D2 7D 00            [12]  818 	mov	r5,#0x00
      0031D4 90 10 D6         [24]  819 	mov	dptr,#_buffer
      0031D7 EE               [12]  820 	mov	a,r6
      0031D8 F0               [24]  821 	movx	@dptr,a
      0031D9 EF               [12]  822 	mov	a,r7
      0031DA A3               [24]  823 	inc	dptr
      0031DB F0               [24]  824 	movx	@dptr,a
      0031DC ED               [12]  825 	mov	a,r5
      0031DD A3               [24]  826 	inc	dptr
      0031DE F0               [24]  827 	movx	@dptr,a
                                    828 ;	main.c:55: printf("Address of buffer_0=%p\n\r",buffer[0]);
      0031DF C0 06            [24]  829 	push	ar6
      0031E1 C0 07            [24]  830 	push	ar7
      0031E3 C0 05            [24]  831 	push	ar5
      0031E5 74 D6            [12]  832 	mov	a,#___str_3
      0031E7 C0 E0            [24]  833 	push	acc
      0031E9 74 4E            [12]  834 	mov	a,#(___str_3 >> 8)
      0031EB C0 E0            [24]  835 	push	acc
      0031ED 74 80            [12]  836 	mov	a,#0x80
      0031EF C0 E0            [24]  837 	push	acc
      0031F1 12 44 48         [24]  838 	lcall	_printf
      0031F4 E5 81            [12]  839 	mov	a,sp
      0031F6 24 FA            [12]  840 	add	a,#0xfa
      0031F8 F5 81            [12]  841 	mov	sp,a
                                    842 ;	main.c:56: buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));    //allocating space for the buffer_1 at the start and printing the address
      0031FA 90 10 D3         [24]  843 	mov	dptr,#_buffer_start_size
      0031FD E0               [24]  844 	movx	a,@dptr
      0031FE FE               [12]  845 	mov	r6,a
      0031FF A3               [24]  846 	inc	dptr
      003200 E0               [24]  847 	movx	a,@dptr
      003201 FF               [12]  848 	mov	r7,a
      003202 8E 82            [24]  849 	mov	dpl,r6
      003204 8F 83            [24]  850 	mov	dph,r7
      003206 12 42 71         [24]  851 	lcall	_malloc
      003209 AE 82            [24]  852 	mov	r6,dpl
      00320B AF 83            [24]  853 	mov	r7,dph
      00320D 7D 00            [12]  854 	mov	r5,#0x00
      00320F 90 10 D9         [24]  855 	mov	dptr,#(_buffer + 0x0003)
      003212 EE               [12]  856 	mov	a,r6
      003213 F0               [24]  857 	movx	@dptr,a
      003214 EF               [12]  858 	mov	a,r7
      003215 A3               [24]  859 	inc	dptr
      003216 F0               [24]  860 	movx	@dptr,a
      003217 ED               [12]  861 	mov	a,r5
      003218 A3               [24]  862 	inc	dptr
      003219 F0               [24]  863 	movx	@dptr,a
                                    864 ;	main.c:57: printf("Address of buffer_1=%p\n\r",buffer[1]);
      00321A C0 06            [24]  865 	push	ar6
      00321C C0 07            [24]  866 	push	ar7
      00321E C0 05            [24]  867 	push	ar5
      003220 74 EF            [12]  868 	mov	a,#___str_4
      003222 C0 E0            [24]  869 	push	acc
      003224 74 4E            [12]  870 	mov	a,#(___str_4 >> 8)
      003226 C0 E0            [24]  871 	push	acc
      003228 74 80            [12]  872 	mov	a,#0x80
      00322A C0 E0            [24]  873 	push	acc
      00322C 12 44 48         [24]  874 	lcall	_printf
      00322F E5 81            [12]  875 	mov	a,sp
      003231 24 FA            [12]  876 	add	a,#0xfa
      003233 F5 81            [12]  877 	mov	sp,a
                                    878 ;	main.c:58: function();
      003235 12 32 42         [24]  879 	lcall	_function
      003238 02 31 A0         [24]  880 	ljmp	00108$
      00323B                        881 00112$:
                                    882 ;	main.c:63: function();
      00323B 12 32 42         [24]  883 	lcall	_function
      00323E                        884 00113$:
                                    885 ;	main.c:65: return 0;
      00323E 90 00 00         [24]  886 	mov	dptr,#0x0000
                                    887 ;	main.c:66: }
      003241 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'function'
                                    891 ;------------------------------------------------------------
                                    892 ;sloc0                     Allocated with name '_function_sloc0_1_0'
                                    893 ;sloc1                     Allocated with name '_function_sloc1_1_0'
                                    894 ;count_plus                Allocated with name '_function_count_plus_65536_48'
                                    895 ;count1                    Allocated with name '_function_count1_65536_48'
                                    896 ;count2                    Allocated with name '_function_count2_65536_48'
                                    897 ;buffer1                   Allocated with name '_function_buffer1_65536_48'
                                    898 ;buffer0                   Allocated with name '_function_buffer0_65536_48'
                                    899 ;temp                      Allocated with name '_function_temp_589824_78'
                                    900 ;------------------------------------------------------------
                                    901 ;	main.c:67: void function(void)
                                    902 ;	-----------------------------------------
                                    903 ;	 function function
                                    904 ;	-----------------------------------------
      003242                        905 _function:
                                    906 ;	main.c:69: uint16_t count_plus=1,count1=0,count2=0,buffer1=1,buffer0=0;
      003242 90 12 A0         [24]  907 	mov	dptr,#_function_count1_65536_48
      003245 E4               [12]  908 	clr	a
      003246 F0               [24]  909 	movx	@dptr,a
      003247 A3               [24]  910 	inc	dptr
      003248 F0               [24]  911 	movx	@dptr,a
      003249 90 12 A2         [24]  912 	mov	dptr,#_function_count2_65536_48
      00324C F0               [24]  913 	movx	@dptr,a
      00324D A3               [24]  914 	inc	dptr
      00324E F0               [24]  915 	movx	@dptr,a
                                    916 ;	main.c:70: printf_tiny("\n\n\renter the characters\n\r");
      00324F 74 6F            [12]  917 	mov	a,#___str_8
      003251 C0 E0            [24]  918 	push	acc
      003253 74 4F            [12]  919 	mov	a,#(___str_8 >> 8)
      003255 C0 E0            [24]  920 	push	acc
      003257 12 41 2C         [24]  921 	lcall	_printf_tiny
      00325A 15 81            [12]  922 	dec	sp
      00325C 15 81            [12]  923 	dec	sp
                                    924 ;	main.c:71: while (1)
      00325E 75 0A 01         [24]  925 	mov	_function_sloc1_1_0,#0x01
      003261 75 0B 00         [24]  926 	mov	(_function_sloc1_1_0 + 1),#0x00
      003264                        927 00147$:
                                    928 ;	main.c:73: c=getchar();                                            //taking the character input
      003264 12 3D A2         [24]  929 	lcall	_getchar
      003267 AC 82            [24]  930 	mov	r4,dpl
      003269 90 10 D5         [24]  931 	mov	dptr,#_c
      00326C EC               [12]  932 	mov	a,r4
      00326D F0               [24]  933 	movx	@dptr,a
                                    934 ;	main.c:74: putchar(c);                                             //displaying it out in the terminal
      00326E 7D 00            [12]  935 	mov	r5,#0x00
      003270 8C 82            [24]  936 	mov	dpl,r4
      003272 8D 83            [24]  937 	mov	dph,r5
      003274 12 3D 85         [24]  938 	lcall	_putchar
                                    939 ;	main.c:75: printf_tiny("\n\r");
      003277 74 89            [12]  940 	mov	a,#___str_9
      003279 C0 E0            [24]  941 	push	acc
      00327B 74 4F            [12]  942 	mov	a,#(___str_9 >> 8)
      00327D C0 E0            [24]  943 	push	acc
      00327F 12 41 2C         [24]  944 	lcall	_printf_tiny
      003282 15 81            [12]  945 	dec	sp
      003284 15 81            [12]  946 	dec	sp
                                    947 ;	main.c:77: if(c!='\n' && c!='\r')                                  // ignoring enter on terminal as character
      003286 90 10 D5         [24]  948 	mov	dptr,#_c
      003289 E0               [24]  949 	movx	a,@dptr
      00328A FD               [12]  950 	mov	r5,a
      00328B BD 0A 02         [24]  951 	cjne	r5,#0x0a,00288$
      00328E 80 D4            [24]  952 	sjmp	00147$
      003290                        953 00288$:
      003290 BD 0D 02         [24]  954 	cjne	r5,#0x0d,00289$
      003293 80 CF            [24]  955 	sjmp	00147$
      003295                        956 00289$:
                                    957 ;	main.c:79: count1++;                                           //count the number of characters
      003295 90 12 A0         [24]  958 	mov	dptr,#_function_count1_65536_48
      003298 E0               [24]  959 	movx	a,@dptr
      003299 24 01            [12]  960 	add	a,#0x01
      00329B F0               [24]  961 	movx	@dptr,a
      00329C A3               [24]  962 	inc	dptr
      00329D E0               [24]  963 	movx	a,@dptr
      00329E 34 00            [12]  964 	addc	a,#0x00
      0032A0 F0               [24]  965 	movx	@dptr,a
                                    966 ;	main.c:80: ascii=c;
      0032A1 8D 04            [24]  967 	mov	ar4,r5
      0032A3 7D 00            [12]  968 	mov	r5,#0x00
      0032A5 90 10 CF         [24]  969 	mov	dptr,#_ascii
      0032A8 EC               [12]  970 	mov	a,r4
      0032A9 F0               [24]  971 	movx	@dptr,a
      0032AA ED               [12]  972 	mov	a,r5
      0032AB A3               [24]  973 	inc	dptr
      0032AC F0               [24]  974 	movx	@dptr,a
                                    975 ;	main.c:81: if(ascii!=10)                                       //ignoring enter command
      0032AD BC 0A 05         [24]  976 	cjne	r4,#0x0a,00290$
      0032B0 BD 00 02         [24]  977 	cjne	r5,#0x00,00290$
      0032B3 80 AF            [24]  978 	sjmp	00147$
      0032B5                        979 00290$:
                                    980 ;	main.c:85: if (97<=ascii && ascii<=122)                    //if the character is lower case, store it in buffer_0
      0032B5 C3               [12]  981 	clr	c
      0032B6 EC               [12]  982 	mov	a,r4
      0032B7 94 61            [12]  983 	subb	a,#0x61
      0032B9 ED               [12]  984 	mov	a,r5
      0032BA 94 00            [12]  985 	subb	a,#0x00
      0032BC 50 03            [24]  986 	jnc	00291$
      0032BE 02 33 45         [24]  987 	ljmp	00138$
      0032C1                        988 00291$:
      0032C1 C3               [12]  989 	clr	c
      0032C2 74 7A            [12]  990 	mov	a,#0x7a
      0032C4 9C               [12]  991 	subb	a,r4
      0032C5 E4               [12]  992 	clr	a
      0032C6 9D               [12]  993 	subb	a,r5
      0032C7 40 7C            [24]  994 	jc	00138$
                                    995 ;	main.c:87: printf_tiny("\n\rascii value=%d\n\r",ascii);
      0032C9 C0 04            [24]  996 	push	ar4
      0032CB C0 05            [24]  997 	push	ar5
      0032CD 74 8C            [12]  998 	mov	a,#___str_10
      0032CF C0 E0            [24]  999 	push	acc
      0032D1 74 4F            [12] 1000 	mov	a,#(___str_10 >> 8)
      0032D3 C0 E0            [24] 1001 	push	acc
      0032D5 12 41 2C         [24] 1002 	lcall	_printf_tiny
      0032D8 E5 81            [12] 1003 	mov	a,sp
      0032DA 24 FC            [12] 1004 	add	a,#0xfc
      0032DC F5 81            [12] 1005 	mov	sp,a
                                   1006 ;	main.c:88: count2++;                                   //count to indicate number of lower case digits entered
      0032DE 90 12 A2         [24] 1007 	mov	dptr,#_function_count2_65536_48
      0032E1 E0               [24] 1008 	movx	a,@dptr
      0032E2 24 01            [12] 1009 	add	a,#0x01
      0032E4 F0               [24] 1010 	movx	@dptr,a
      0032E5 A3               [24] 1011 	inc	dptr
      0032E6 E0               [24] 1012 	movx	a,@dptr
      0032E7 34 00            [12] 1013 	addc	a,#0x00
      0032E9 F0               [24] 1014 	movx	@dptr,a
                                   1015 ;	main.c:89: if (count2>buffer_start_size)
      0032EA 90 12 A2         [24] 1016 	mov	dptr,#_function_count2_65536_48
      0032ED E0               [24] 1017 	movx	a,@dptr
      0032EE FC               [12] 1018 	mov	r4,a
      0032EF A3               [24] 1019 	inc	dptr
      0032F0 E0               [24] 1020 	movx	a,@dptr
      0032F1 FD               [12] 1021 	mov	r5,a
      0032F2 90 10 D3         [24] 1022 	mov	dptr,#_buffer_start_size
      0032F5 E0               [24] 1023 	movx	a,@dptr
      0032F6 FA               [12] 1024 	mov	r2,a
      0032F7 A3               [24] 1025 	inc	dptr
      0032F8 E0               [24] 1026 	movx	a,@dptr
      0032F9 FB               [12] 1027 	mov	r3,a
      0032FA C3               [12] 1028 	clr	c
      0032FB EA               [12] 1029 	mov	a,r2
      0032FC 9C               [12] 1030 	subb	a,r4
      0032FD EB               [12] 1031 	mov	a,r3
      0032FE 9D               [12] 1032 	subb	a,r5
      0032FF 50 1D            [24] 1033 	jnc	00102$
                                   1034 ;	main.c:90: printf("Buffer is full\n\r");
      003301 C0 05            [24] 1035 	push	ar5
      003303 C0 04            [24] 1036 	push	ar4
      003305 74 9F            [12] 1037 	mov	a,#___str_11
      003307 C0 E0            [24] 1038 	push	acc
      003309 74 4F            [12] 1039 	mov	a,#(___str_11 >> 8)
      00330B C0 E0            [24] 1040 	push	acc
      00330D 74 80            [12] 1041 	mov	a,#0x80
      00330F C0 E0            [24] 1042 	push	acc
      003311 12 44 48         [24] 1043 	lcall	_printf
      003314 15 81            [12] 1044 	dec	sp
      003316 15 81            [12] 1045 	dec	sp
      003318 15 81            [12] 1046 	dec	sp
      00331A D0 04            [24] 1047 	pop	ar4
      00331C D0 05            [24] 1048 	pop	ar5
      00331E                       1049 00102$:
                                   1050 ;	main.c:91: buffer[0][count2-1]=c;                      //store the lower case characters in buffer_0
      00331E 90 10 D6         [24] 1051 	mov	dptr,#_buffer
      003321 E0               [24] 1052 	movx	a,@dptr
      003322 F9               [12] 1053 	mov	r1,a
      003323 A3               [24] 1054 	inc	dptr
      003324 E0               [24] 1055 	movx	a,@dptr
      003325 FA               [12] 1056 	mov	r2,a
      003326 A3               [24] 1057 	inc	dptr
      003327 E0               [24] 1058 	movx	a,@dptr
      003328 FB               [12] 1059 	mov	r3,a
      003329 1C               [12] 1060 	dec	r4
      00332A BC FF 01         [24] 1061 	cjne	r4,#0xff,00294$
      00332D 1D               [12] 1062 	dec	r5
      00332E                       1063 00294$:
      00332E EC               [12] 1064 	mov	a,r4
      00332F 29               [12] 1065 	add	a,r1
      003330 F9               [12] 1066 	mov	r1,a
      003331 ED               [12] 1067 	mov	a,r5
      003332 3A               [12] 1068 	addc	a,r2
      003333 FA               [12] 1069 	mov	r2,a
      003334 90 10 D5         [24] 1070 	mov	dptr,#_c
      003337 E0               [24] 1071 	movx	a,@dptr
      003338 FD               [12] 1072 	mov	r5,a
      003339 89 82            [24] 1073 	mov	dpl,r1
      00333B 8A 83            [24] 1074 	mov	dph,r2
      00333D 8B F0            [24] 1075 	mov	b,r3
      00333F 12 41 11         [24] 1076 	lcall	__gptrput
      003342 02 32 64         [24] 1077 	ljmp	00147$
      003345                       1078 00138$:
                                   1079 ;	main.c:97: switch(c)
      003345 90 10 D5         [24] 1080 	mov	dptr,#_c
      003348 E0               [24] 1081 	movx	a,@dptr
      003349 FD               [12] 1082 	mov	r5,a
      00334A BD 2B 02         [24] 1083 	cjne	r5,#0x2b,00295$
      00334D 80 1B            [24] 1084 	sjmp	00103$
      00334F                       1085 00295$:
      00334F BD 2D 03         [24] 1086 	cjne	r5,#0x2d,00296$
      003352 02 34 E1         [24] 1087 	ljmp	00110$
      003355                       1088 00296$:
      003355 BD 3D 03         [24] 1089 	cjne	r5,#0x3d,00297$
      003358 02 35 AC         [24] 1090 	ljmp	00117$
      00335B                       1091 00297$:
      00335B BD 3F 03         [24] 1092 	cjne	r5,#0x3f,00298$
      00335E 02 37 90         [24] 1093 	ljmp	00123$
      003361                       1094 00298$:
      003361 BD 40 03         [24] 1095 	cjne	r5,#0x40,00299$
      003364 02 36 88         [24] 1096 	ljmp	00121$
      003367                       1097 00299$:
      003367 02 3D 37         [24] 1098 	ljmp	00135$
                                   1099 ;	main.c:99: case('+'):                          //if new buffer requested, increase the count
      00336A                       1100 00103$:
                                   1101 ;	main.c:101: count_plus++;
      00336A 05 0A            [12] 1102 	inc	_function_sloc1_1_0
      00336C E4               [12] 1103 	clr	a
      00336D B5 0A 02         [24] 1104 	cjne	a,_function_sloc1_1_0,00300$
      003370 05 0B            [12] 1105 	inc	(_function_sloc1_1_0 + 1)
      003372                       1106 00300$:
                                   1107 ;	main.c:102: printf_tiny("add buffer_%d",count_plus);
      003372 C0 0A            [24] 1108 	push	_function_sloc1_1_0
      003374 C0 0B            [24] 1109 	push	(_function_sloc1_1_0 + 1)
      003376 74 B0            [12] 1110 	mov	a,#___str_12
      003378 C0 E0            [24] 1111 	push	acc
      00337A 74 4F            [12] 1112 	mov	a,#(___str_12 >> 8)
      00337C C0 E0            [24] 1113 	push	acc
      00337E 12 41 2C         [24] 1114 	lcall	_printf_tiny
      003381 E5 81            [12] 1115 	mov	a,sp
      003383 24 FC            [12] 1116 	add	a,#0xfc
      003385 F5 81            [12] 1117 	mov	sp,a
                                   1118 ;	main.c:103: printf_tiny("\n\rbuffer_size=");
      003387 74 BE            [12] 1119 	mov	a,#___str_13
      003389 C0 E0            [24] 1120 	push	acc
      00338B 74 4F            [12] 1121 	mov	a,#(___str_13 >> 8)
      00338D C0 E0            [24] 1122 	push	acc
      00338F 12 41 2C         [24] 1123 	lcall	_printf_tiny
      003392 15 81            [12] 1124 	dec	sp
      003394 15 81            [12] 1125 	dec	sp
                                   1126 ;	main.c:104: buffer_size[count_plus]=getnumber();   //take the valid buffer size of the new buffer
      003396 E5 0A            [12] 1127 	mov	a,_function_sloc1_1_0
      003398 25 0A            [12] 1128 	add	a,_function_sloc1_1_0
      00339A FC               [12] 1129 	mov	r4,a
      00339B E5 0B            [12] 1130 	mov	a,(_function_sloc1_1_0 + 1)
      00339D 33               [12] 1131 	rlc	a
      00339E FD               [12] 1132 	mov	r5,a
      00339F EC               [12] 1133 	mov	a,r4
      0033A0 24 A3            [12] 1134 	add	a,#_buffer_size
      0033A2 FA               [12] 1135 	mov	r2,a
      0033A3 ED               [12] 1136 	mov	a,r5
      0033A4 34 0F            [12] 1137 	addc	a,#(_buffer_size >> 8)
      0033A6 FB               [12] 1138 	mov	r3,a
      0033A7 C0 05            [24] 1139 	push	ar5
      0033A9 C0 04            [24] 1140 	push	ar4
      0033AB C0 03            [24] 1141 	push	ar3
      0033AD C0 02            [24] 1142 	push	ar2
      0033AF 12 3D 49         [24] 1143 	lcall	_getnumber
      0033B2 A8 82            [24] 1144 	mov	r0,dpl
      0033B4 A9 83            [24] 1145 	mov	r1,dph
      0033B6 D0 02            [24] 1146 	pop	ar2
      0033B8 D0 03            [24] 1147 	pop	ar3
      0033BA D0 04            [24] 1148 	pop	ar4
      0033BC D0 05            [24] 1149 	pop	ar5
      0033BE 8A 82            [24] 1150 	mov	dpl,r2
      0033C0 8B 83            [24] 1151 	mov	dph,r3
      0033C2 E8               [12] 1152 	mov	a,r0
      0033C3 F0               [24] 1153 	movx	@dptr,a
      0033C4 E9               [12] 1154 	mov	a,r1
      0033C5 A3               [24] 1155 	inc	dptr
      0033C6 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	main.c:105: while (!((buffer_size[count_plus] <= 300) && (buffer_size[count_plus] >= 30)))
      0033C7 A8 0A            [24] 1158 	mov	r0,_function_sloc1_1_0
      0033C9 A9 0B            [24] 1159 	mov	r1,(_function_sloc1_1_0 + 1)
      0033CB                       1160 00105$:
      0033CB 8A 82            [24] 1161 	mov	dpl,r2
      0033CD 8B 83            [24] 1162 	mov	dph,r3
      0033CF E0               [24] 1163 	movx	a,@dptr
      0033D0 F5 08            [12] 1164 	mov	_function_sloc0_1_0,a
      0033D2 A3               [24] 1165 	inc	dptr
      0033D3 E0               [24] 1166 	movx	a,@dptr
      0033D4 F5 09            [12] 1167 	mov	(_function_sloc0_1_0 + 1),a
      0033D6 C3               [12] 1168 	clr	c
      0033D7 74 2C            [12] 1169 	mov	a,#0x2c
      0033D9 95 08            [12] 1170 	subb	a,_function_sloc0_1_0
      0033DB 74 01            [12] 1171 	mov	a,#0x01
      0033DD 95 09            [12] 1172 	subb	a,(_function_sloc0_1_0 + 1)
      0033DF 40 0A            [24] 1173 	jc	00106$
      0033E1 E5 08            [12] 1174 	mov	a,_function_sloc0_1_0
      0033E3 94 1E            [12] 1175 	subb	a,#0x1e
      0033E5 E5 09            [12] 1176 	mov	a,(_function_sloc0_1_0 + 1)
      0033E7 94 00            [12] 1177 	subb	a,#0x00
      0033E9 50 71            [24] 1178 	jnc	00107$
      0033EB                       1179 00106$:
                                   1180 ;	main.c:107: printf_tiny("\n\rinvalid size");
      0033EB C0 00            [24] 1181 	push	ar0
      0033ED C0 01            [24] 1182 	push	ar1
      0033EF C0 05            [24] 1183 	push	ar5
      0033F1 C0 04            [24] 1184 	push	ar4
      0033F3 C0 03            [24] 1185 	push	ar3
      0033F5 C0 02            [24] 1186 	push	ar2
      0033F7 C0 01            [24] 1187 	push	ar1
      0033F9 C0 00            [24] 1188 	push	ar0
      0033FB 74 CD            [12] 1189 	mov	a,#___str_14
      0033FD C0 E0            [24] 1190 	push	acc
      0033FF 74 4F            [12] 1191 	mov	a,#(___str_14 >> 8)
      003401 C0 E0            [24] 1192 	push	acc
      003403 12 41 2C         [24] 1193 	lcall	_printf_tiny
      003406 15 81            [12] 1194 	dec	sp
      003408 15 81            [12] 1195 	dec	sp
                                   1196 ;	main.c:108: printf_tiny("\n\rvalid buffer_size=");
      00340A 74 DC            [12] 1197 	mov	a,#___str_15
      00340C C0 E0            [24] 1198 	push	acc
      00340E 74 4F            [12] 1199 	mov	a,#(___str_15 >> 8)
      003410 C0 E0            [24] 1200 	push	acc
      003412 12 41 2C         [24] 1201 	lcall	_printf_tiny
      003415 15 81            [12] 1202 	dec	sp
      003417 15 81            [12] 1203 	dec	sp
      003419 D0 00            [24] 1204 	pop	ar0
      00341B D0 01            [24] 1205 	pop	ar1
      00341D D0 02            [24] 1206 	pop	ar2
      00341F D0 03            [24] 1207 	pop	ar3
      003421 D0 04            [24] 1208 	pop	ar4
      003423 D0 05            [24] 1209 	pop	ar5
                                   1210 ;	main.c:109: buffer_size[count_plus]=getnumber();    //if buffer size is invalid, take input again
      003425 EC               [12] 1211 	mov	a,r4
      003426 24 A3            [12] 1212 	add	a,#_buffer_size
      003428 F8               [12] 1213 	mov	r0,a
      003429 ED               [12] 1214 	mov	a,r5
      00342A 34 0F            [12] 1215 	addc	a,#(_buffer_size >> 8)
      00342C F9               [12] 1216 	mov	r1,a
      00342D C0 05            [24] 1217 	push	ar5
      00342F C0 04            [24] 1218 	push	ar4
      003431 C0 03            [24] 1219 	push	ar3
      003433 C0 02            [24] 1220 	push	ar2
      003435 C0 01            [24] 1221 	push	ar1
      003437 C0 00            [24] 1222 	push	ar0
      003439 12 3D 49         [24] 1223 	lcall	_getnumber
      00343C AE 82            [24] 1224 	mov	r6,dpl
      00343E AF 83            [24] 1225 	mov	r7,dph
      003440 D0 00            [24] 1226 	pop	ar0
      003442 D0 01            [24] 1227 	pop	ar1
      003444 D0 02            [24] 1228 	pop	ar2
      003446 D0 03            [24] 1229 	pop	ar3
      003448 D0 04            [24] 1230 	pop	ar4
      00344A D0 05            [24] 1231 	pop	ar5
      00344C 88 82            [24] 1232 	mov	dpl,r0
      00344E 89 83            [24] 1233 	mov	dph,r1
      003450 EE               [12] 1234 	mov	a,r6
      003451 F0               [24] 1235 	movx	@dptr,a
      003452 EF               [12] 1236 	mov	a,r7
      003453 A3               [24] 1237 	inc	dptr
      003454 F0               [24] 1238 	movx	@dptr,a
      003455 D0 01            [24] 1239 	pop	ar1
      003457 D0 00            [24] 1240 	pop	ar0
      003459 02 33 CB         [24] 1241 	ljmp	00105$
      00345C                       1242 00107$:
                                   1243 ;	main.c:112: buffer[count_plus]=(char*) malloc(buffer_size[count_plus]*sizeof(char));  //assign a malloc to the new buffer
      00345C 90 13 8B         [24] 1244 	mov	dptr,#__mulint_PARM_2
      00345F E8               [12] 1245 	mov	a,r0
      003460 F0               [24] 1246 	movx	@dptr,a
      003461 E9               [12] 1247 	mov	a,r1
      003462 A3               [24] 1248 	inc	dptr
      003463 F0               [24] 1249 	movx	@dptr,a
      003464 90 00 03         [24] 1250 	mov	dptr,#0x0003
      003467 12 43 DA         [24] 1251 	lcall	__mulint
      00346A AE 82            [24] 1252 	mov	r6,dpl
      00346C AF 83            [24] 1253 	mov	r7,dph
      00346E EE               [12] 1254 	mov	a,r6
      00346F 24 D6            [12] 1255 	add	a,#_buffer
      003471 FE               [12] 1256 	mov	r6,a
      003472 EF               [12] 1257 	mov	a,r7
      003473 34 10            [12] 1258 	addc	a,#(_buffer >> 8)
      003475 FF               [12] 1259 	mov	r7,a
      003476 85 08 82         [24] 1260 	mov	dpl,_function_sloc0_1_0
      003479 85 09 83         [24] 1261 	mov	dph,(_function_sloc0_1_0 + 1)
      00347C C0 07            [24] 1262 	push	ar7
      00347E C0 06            [24] 1263 	push	ar6
      003480 12 42 71         [24] 1264 	lcall	_malloc
      003483 AC 82            [24] 1265 	mov	r4,dpl
      003485 AD 83            [24] 1266 	mov	r5,dph
      003487 D0 06            [24] 1267 	pop	ar6
      003489 D0 07            [24] 1268 	pop	ar7
      00348B 7B 00            [12] 1269 	mov	r3,#0x00
      00348D 8E 82            [24] 1270 	mov	dpl,r6
      00348F 8F 83            [24] 1271 	mov	dph,r7
      003491 EC               [12] 1272 	mov	a,r4
      003492 F0               [24] 1273 	movx	@dptr,a
      003493 ED               [12] 1274 	mov	a,r5
      003494 A3               [24] 1275 	inc	dptr
      003495 F0               [24] 1276 	movx	@dptr,a
      003496 EB               [12] 1277 	mov	a,r3
      003497 A3               [24] 1278 	inc	dptr
      003498 F0               [24] 1279 	movx	@dptr,a
                                   1280 ;	main.c:113: printf("\n\raddress of new buffer is=%p\n\r",buffer[count_plus]);
      003499 C0 07            [24] 1281 	push	ar7
      00349B C0 06            [24] 1282 	push	ar6
      00349D C0 04            [24] 1283 	push	ar4
      00349F C0 05            [24] 1284 	push	ar5
      0034A1 C0 03            [24] 1285 	push	ar3
      0034A3 74 F1            [12] 1286 	mov	a,#___str_16
      0034A5 C0 E0            [24] 1287 	push	acc
      0034A7 74 4F            [12] 1288 	mov	a,#(___str_16 >> 8)
      0034A9 C0 E0            [24] 1289 	push	acc
      0034AB 74 80            [12] 1290 	mov	a,#0x80
      0034AD C0 E0            [24] 1291 	push	acc
      0034AF 12 44 48         [24] 1292 	lcall	_printf
      0034B2 E5 81            [12] 1293 	mov	a,sp
      0034B4 24 FA            [12] 1294 	add	a,#0xfa
      0034B6 F5 81            [12] 1295 	mov	sp,a
      0034B8 D0 06            [24] 1296 	pop	ar6
      0034BA D0 07            [24] 1297 	pop	ar7
                                   1298 ;	main.c:114: if (buffer[count_plus]==NULL)                                             //if heap size is full, print no space
      0034BC 8E 82            [24] 1299 	mov	dpl,r6
      0034BE 8F 83            [24] 1300 	mov	dph,r7
      0034C0 E0               [24] 1301 	movx	a,@dptr
      0034C1 FE               [12] 1302 	mov	r6,a
      0034C2 A3               [24] 1303 	inc	dptr
      0034C3 E0               [24] 1304 	movx	a,@dptr
      0034C4 FF               [12] 1305 	mov	r7,a
      0034C5 A3               [24] 1306 	inc	dptr
      0034C6 E0               [24] 1307 	movx	a,@dptr
      0034C7 FD               [12] 1308 	mov	r5,a
      0034C8 EE               [12] 1309 	mov	a,r6
      0034C9 4F               [12] 1310 	orl	a,r7
      0034CA 60 03            [24] 1311 	jz	00303$
      0034CC 02 32 64         [24] 1312 	ljmp	00147$
      0034CF                       1313 00303$:
                                   1314 ;	main.c:115: printf_tiny("\n\rNo space for addition of more buffers to the heap\n\r");
      0034CF 74 11            [12] 1315 	mov	a,#___str_17
      0034D1 C0 E0            [24] 1316 	push	acc
      0034D3 74 50            [12] 1317 	mov	a,#(___str_17 >> 8)
      0034D5 C0 E0            [24] 1318 	push	acc
      0034D7 12 41 2C         [24] 1319 	lcall	_printf_tiny
      0034DA 15 81            [12] 1320 	dec	sp
      0034DC 15 81            [12] 1321 	dec	sp
                                   1322 ;	main.c:117: break;
      0034DE 02 32 64         [24] 1323 	ljmp	00147$
                                   1324 ;	main.c:119: case('-'):
      0034E1                       1325 00110$:
                                   1326 ;	main.c:121: printf_tiny("\n\rselect a valid buffer= ");
      0034E1 74 47            [12] 1327 	mov	a,#___str_18
      0034E3 C0 E0            [24] 1328 	push	acc
      0034E5 74 50            [12] 1329 	mov	a,#(___str_18 >> 8)
      0034E7 C0 E0            [24] 1330 	push	acc
      0034E9 12 41 2C         [24] 1331 	lcall	_printf_tiny
      0034EC 15 81            [12] 1332 	dec	sp
      0034EE 15 81            [12] 1333 	dec	sp
                                   1334 ;	main.c:122: buffer_num=getnumber();                         //input for the buffer number to be deleted
      0034F0 12 3D 49         [24] 1335 	lcall	_getnumber
      0034F3 AE 82            [24] 1336 	mov	r6,dpl
      0034F5 AF 83            [24] 1337 	mov	r7,dph
      0034F7 90 10 D1         [24] 1338 	mov	dptr,#_buffer_num
      0034FA EE               [12] 1339 	mov	a,r6
      0034FB F0               [24] 1340 	movx	@dptr,a
      0034FC EF               [12] 1341 	mov	a,r7
      0034FD A3               [24] 1342 	inc	dptr
      0034FE F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	main.c:123: if (buffer_num!=0)                              //buffer_0 is not to be deleted so ignore that
      0034FF EE               [12] 1345 	mov	a,r6
      003500 4F               [12] 1346 	orl	a,r7
      003501 70 03            [24] 1347 	jnz	00304$
      003503 02 35 9A         [24] 1348 	ljmp	00115$
      003506                       1349 00304$:
                                   1350 ;	main.c:125: if (buffer_num>count_plus)                  //invalid buffer number which does not exist
      003506 8E 04            [24] 1351 	mov	ar4,r6
      003508 8F 05            [24] 1352 	mov	ar5,r7
      00350A C3               [12] 1353 	clr	c
      00350B E5 0A            [12] 1354 	mov	a,_function_sloc1_1_0
      00350D 9C               [12] 1355 	subb	a,r4
      00350E E5 0B            [12] 1356 	mov	a,(_function_sloc1_1_0 + 1)
      003510 9D               [12] 1357 	subb	a,r5
      003511 50 12            [24] 1358 	jnc	00112$
                                   1359 ;	main.c:127: printf_tiny("\n\rBuffer does not exist\n\r");
      003513 74 61            [12] 1360 	mov	a,#___str_19
      003515 C0 E0            [24] 1361 	push	acc
      003517 74 50            [12] 1362 	mov	a,#(___str_19 >> 8)
      003519 C0 E0            [24] 1363 	push	acc
      00351B 12 41 2C         [24] 1364 	lcall	_printf_tiny
      00351E 15 81            [12] 1365 	dec	sp
      003520 15 81            [12] 1366 	dec	sp
      003522 02 32 64         [24] 1367 	ljmp	00147$
      003525                       1368 00112$:
                                   1369 ;	main.c:131: free(buffer[buffer_num]);         //free buffer which was selected
      003525 90 13 8B         [24] 1370 	mov	dptr,#__mulint_PARM_2
      003528 EE               [12] 1371 	mov	a,r6
      003529 F0               [24] 1372 	movx	@dptr,a
      00352A EF               [12] 1373 	mov	a,r7
      00352B A3               [24] 1374 	inc	dptr
      00352C F0               [24] 1375 	movx	@dptr,a
      00352D 90 00 03         [24] 1376 	mov	dptr,#0x0003
      003530 12 43 DA         [24] 1377 	lcall	__mulint
      003533 AE 82            [24] 1378 	mov	r6,dpl
      003535 AF 83            [24] 1379 	mov	r7,dph
      003537 EE               [12] 1380 	mov	a,r6
      003538 24 D6            [12] 1381 	add	a,#_buffer
      00353A F5 82            [12] 1382 	mov	dpl,a
      00353C EF               [12] 1383 	mov	a,r7
      00353D 34 10            [12] 1384 	addc	a,#(_buffer >> 8)
      00353F F5 83            [12] 1385 	mov	dph,a
      003541 E0               [24] 1386 	movx	a,@dptr
      003542 FD               [12] 1387 	mov	r5,a
      003543 A3               [24] 1388 	inc	dptr
      003544 E0               [24] 1389 	movx	a,@dptr
      003545 FE               [12] 1390 	mov	r6,a
      003546 A3               [24] 1391 	inc	dptr
      003547 E0               [24] 1392 	movx	a,@dptr
      003548 FF               [12] 1393 	mov	r7,a
      003549 8D 82            [24] 1394 	mov	dpl,r5
      00354B 8E 83            [24] 1395 	mov	dph,r6
      00354D 8F F0            [24] 1396 	mov	b,r7
      00354F 12 3D B0         [24] 1397 	lcall	_free
                                   1398 ;	main.c:132: buffer[buffer_num]=NULL;
      003552 90 10 D1         [24] 1399 	mov	dptr,#_buffer_num
      003555 E0               [24] 1400 	movx	a,@dptr
      003556 FE               [12] 1401 	mov	r6,a
      003557 A3               [24] 1402 	inc	dptr
      003558 E0               [24] 1403 	movx	a,@dptr
      003559 FF               [12] 1404 	mov	r7,a
      00355A 90 13 8B         [24] 1405 	mov	dptr,#__mulint_PARM_2
      00355D EE               [12] 1406 	mov	a,r6
      00355E F0               [24] 1407 	movx	@dptr,a
      00355F EF               [12] 1408 	mov	a,r7
      003560 A3               [24] 1409 	inc	dptr
      003561 F0               [24] 1410 	movx	@dptr,a
      003562 90 00 03         [24] 1411 	mov	dptr,#0x0003
      003565 12 43 DA         [24] 1412 	lcall	__mulint
      003568 AE 82            [24] 1413 	mov	r6,dpl
      00356A AF 83            [24] 1414 	mov	r7,dph
      00356C EE               [12] 1415 	mov	a,r6
      00356D 24 D6            [12] 1416 	add	a,#_buffer
      00356F F5 82            [12] 1417 	mov	dpl,a
      003571 EF               [12] 1418 	mov	a,r7
      003572 34 10            [12] 1419 	addc	a,#(_buffer >> 8)
      003574 F5 83            [12] 1420 	mov	dph,a
      003576 E4               [12] 1421 	clr	a
      003577 F0               [24] 1422 	movx	@dptr,a
      003578 A3               [24] 1423 	inc	dptr
      003579 F0               [24] 1424 	movx	@dptr,a
      00357A A3               [24] 1425 	inc	dptr
      00357B F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	main.c:133: printf_tiny("\n\rbuffer%d freed\n\r",buffer_num);
      00357C 90 10 D1         [24] 1428 	mov	dptr,#_buffer_num
      00357F E0               [24] 1429 	movx	a,@dptr
      003580 C0 E0            [24] 1430 	push	acc
      003582 A3               [24] 1431 	inc	dptr
      003583 E0               [24] 1432 	movx	a,@dptr
      003584 C0 E0            [24] 1433 	push	acc
      003586 74 7B            [12] 1434 	mov	a,#___str_20
      003588 C0 E0            [24] 1435 	push	acc
      00358A 74 50            [12] 1436 	mov	a,#(___str_20 >> 8)
      00358C C0 E0            [24] 1437 	push	acc
      00358E 12 41 2C         [24] 1438 	lcall	_printf_tiny
      003591 E5 81            [12] 1439 	mov	a,sp
      003593 24 FC            [12] 1440 	add	a,#0xfc
      003595 F5 81            [12] 1441 	mov	sp,a
      003597 02 32 64         [24] 1442 	ljmp	00147$
      00359A                       1443 00115$:
                                   1444 ;	main.c:137: printf_tiny("Buffer_0 cannot be deleted");    // print buffer_0 cannot be deleted
      00359A 74 8E            [12] 1445 	mov	a,#___str_21
      00359C C0 E0            [24] 1446 	push	acc
      00359E 74 50            [12] 1447 	mov	a,#(___str_21 >> 8)
      0035A0 C0 E0            [24] 1448 	push	acc
      0035A2 12 41 2C         [24] 1449 	lcall	_printf_tiny
      0035A5 15 81            [12] 1450 	dec	sp
      0035A7 15 81            [12] 1451 	dec	sp
                                   1452 ;	main.c:138: break;
      0035A9 02 32 64         [24] 1453 	ljmp	00147$
                                   1454 ;	main.c:140: case('='):                                        //print address of buffer_0
      0035AC                       1455 00117$:
                                   1456 ;	main.c:143: for (i=0; i<=count2; i++)
      0035AC 90 0F A1         [24] 1457 	mov	dptr,#_i
      0035AF E4               [12] 1458 	clr	a
      0035B0 F0               [24] 1459 	movx	@dptr,a
      0035B1 A3               [24] 1460 	inc	dptr
      0035B2 F0               [24] 1461 	movx	@dptr,a
      0035B3 90 12 A2         [24] 1462 	mov	dptr,#_function_count2_65536_48
      0035B6 E0               [24] 1463 	movx	a,@dptr
      0035B7 FE               [12] 1464 	mov	r6,a
      0035B8 A3               [24] 1465 	inc	dptr
      0035B9 E0               [24] 1466 	movx	a,@dptr
      0035BA FF               [12] 1467 	mov	r7,a
      0035BB                       1468 00149$:
                                   1469 ;	main.c:145: if (i%16==0)                      //display contents of buffer_0 in the desired format
      0035BB 90 0F A1         [24] 1470 	mov	dptr,#_i
      0035BE E0               [24] 1471 	movx	a,@dptr
      0035BF FC               [12] 1472 	mov	r4,a
      0035C0 A3               [24] 1473 	inc	dptr
      0035C1 E0               [24] 1474 	movx	a,@dptr
      0035C2 EC               [12] 1475 	mov	a,r4
      0035C3 54 0F            [12] 1476 	anl	a,#0x0f
      0035C5 70 4B            [24] 1477 	jnz	00119$
                                   1478 ;	main.c:147: printf_tiny("\n\r");
      0035C7 C0 07            [24] 1479 	push	ar7
      0035C9 C0 06            [24] 1480 	push	ar6
      0035CB 74 89            [12] 1481 	mov	a,#___str_9
      0035CD C0 E0            [24] 1482 	push	acc
      0035CF 74 4F            [12] 1483 	mov	a,#(___str_9 >> 8)
      0035D1 C0 E0            [24] 1484 	push	acc
      0035D3 12 41 2C         [24] 1485 	lcall	_printf_tiny
      0035D6 15 81            [12] 1486 	dec	sp
      0035D8 15 81            [12] 1487 	dec	sp
                                   1488 ;	main.c:148: printf("%p",&buffer[0][i]);
      0035DA 90 10 D6         [24] 1489 	mov	dptr,#_buffer
      0035DD E0               [24] 1490 	movx	a,@dptr
      0035DE FB               [12] 1491 	mov	r3,a
      0035DF A3               [24] 1492 	inc	dptr
      0035E0 E0               [24] 1493 	movx	a,@dptr
      0035E1 FC               [12] 1494 	mov	r4,a
      0035E2 A3               [24] 1495 	inc	dptr
      0035E3 E0               [24] 1496 	movx	a,@dptr
      0035E4 FD               [12] 1497 	mov	r5,a
      0035E5 90 0F A1         [24] 1498 	mov	dptr,#_i
      0035E8 E0               [24] 1499 	movx	a,@dptr
      0035E9 F9               [12] 1500 	mov	r1,a
      0035EA A3               [24] 1501 	inc	dptr
      0035EB E0               [24] 1502 	movx	a,@dptr
      0035EC FA               [12] 1503 	mov	r2,a
      0035ED E9               [12] 1504 	mov	a,r1
      0035EE 2B               [12] 1505 	add	a,r3
      0035EF FB               [12] 1506 	mov	r3,a
      0035F0 EA               [12] 1507 	mov	a,r2
      0035F1 3C               [12] 1508 	addc	a,r4
      0035F2 FC               [12] 1509 	mov	r4,a
      0035F3 C0 03            [24] 1510 	push	ar3
      0035F5 C0 04            [24] 1511 	push	ar4
      0035F7 C0 05            [24] 1512 	push	ar5
      0035F9 74 A9            [12] 1513 	mov	a,#___str_22
      0035FB C0 E0            [24] 1514 	push	acc
      0035FD 74 50            [12] 1515 	mov	a,#(___str_22 >> 8)
      0035FF C0 E0            [24] 1516 	push	acc
      003601 74 80            [12] 1517 	mov	a,#0x80
      003603 C0 E0            [24] 1518 	push	acc
      003605 12 44 48         [24] 1519 	lcall	_printf
      003608 E5 81            [12] 1520 	mov	a,sp
      00360A 24 FA            [12] 1521 	add	a,#0xfa
      00360C F5 81            [12] 1522 	mov	sp,a
      00360E D0 06            [24] 1523 	pop	ar6
      003610 D0 07            [24] 1524 	pop	ar7
      003612                       1525 00119$:
                                   1526 ;	main.c:150: printf(" %x",buffer[0][i]);
      003612 90 10 D6         [24] 1527 	mov	dptr,#_buffer
      003615 E0               [24] 1528 	movx	a,@dptr
      003616 FB               [12] 1529 	mov	r3,a
      003617 A3               [24] 1530 	inc	dptr
      003618 E0               [24] 1531 	movx	a,@dptr
      003619 FC               [12] 1532 	mov	r4,a
      00361A A3               [24] 1533 	inc	dptr
      00361B E0               [24] 1534 	movx	a,@dptr
      00361C FD               [12] 1535 	mov	r5,a
      00361D 90 0F A1         [24] 1536 	mov	dptr,#_i
      003620 E0               [24] 1537 	movx	a,@dptr
      003621 F9               [12] 1538 	mov	r1,a
      003622 A3               [24] 1539 	inc	dptr
      003623 E0               [24] 1540 	movx	a,@dptr
      003624 FA               [12] 1541 	mov	r2,a
      003625 E9               [12] 1542 	mov	a,r1
      003626 2B               [12] 1543 	add	a,r3
      003627 FB               [12] 1544 	mov	r3,a
      003628 EA               [12] 1545 	mov	a,r2
      003629 3C               [12] 1546 	addc	a,r4
      00362A FC               [12] 1547 	mov	r4,a
      00362B 8B 82            [24] 1548 	mov	dpl,r3
      00362D 8C 83            [24] 1549 	mov	dph,r4
      00362F 8D F0            [24] 1550 	mov	b,r5
      003631 12 4E 6A         [24] 1551 	lcall	__gptrget
      003634 FB               [12] 1552 	mov	r3,a
      003635 7D 00            [12] 1553 	mov	r5,#0x00
      003637 C0 07            [24] 1554 	push	ar7
      003639 C0 06            [24] 1555 	push	ar6
      00363B C0 03            [24] 1556 	push	ar3
      00363D C0 05            [24] 1557 	push	ar5
      00363F 74 AC            [12] 1558 	mov	a,#___str_23
      003641 C0 E0            [24] 1559 	push	acc
      003643 74 50            [12] 1560 	mov	a,#(___str_23 >> 8)
      003645 C0 E0            [24] 1561 	push	acc
      003647 74 80            [12] 1562 	mov	a,#0x80
      003649 C0 E0            [24] 1563 	push	acc
      00364B 12 44 48         [24] 1564 	lcall	_printf
      00364E E5 81            [12] 1565 	mov	a,sp
      003650 24 FB            [12] 1566 	add	a,#0xfb
      003652 F5 81            [12] 1567 	mov	sp,a
      003654 D0 06            [24] 1568 	pop	ar6
      003656 D0 07            [24] 1569 	pop	ar7
                                   1570 ;	main.c:143: for (i=0; i<=count2; i++)
      003658 90 0F A1         [24] 1571 	mov	dptr,#_i
      00365B E0               [24] 1572 	movx	a,@dptr
      00365C 24 01            [12] 1573 	add	a,#0x01
      00365E F0               [24] 1574 	movx	@dptr,a
      00365F A3               [24] 1575 	inc	dptr
      003660 E0               [24] 1576 	movx	a,@dptr
      003661 34 00            [12] 1577 	addc	a,#0x00
      003663 F0               [24] 1578 	movx	@dptr,a
      003664 90 0F A1         [24] 1579 	mov	dptr,#_i
      003667 E0               [24] 1580 	movx	a,@dptr
      003668 FC               [12] 1581 	mov	r4,a
      003669 A3               [24] 1582 	inc	dptr
      00366A E0               [24] 1583 	movx	a,@dptr
      00366B FD               [12] 1584 	mov	r5,a
      00366C C3               [12] 1585 	clr	c
      00366D EE               [12] 1586 	mov	a,r6
      00366E 9C               [12] 1587 	subb	a,r4
      00366F EF               [12] 1588 	mov	a,r7
      003670 9D               [12] 1589 	subb	a,r5
      003671 40 03            [24] 1590 	jc	00308$
      003673 02 35 BB         [24] 1591 	ljmp	00149$
      003676                       1592 00308$:
                                   1593 ;	main.c:152: printf_tiny("\n\r");                //go to next line
      003676 74 89            [12] 1594 	mov	a,#___str_9
      003678 C0 E0            [24] 1595 	push	acc
      00367A 74 4F            [12] 1596 	mov	a,#(___str_9 >> 8)
      00367C C0 E0            [24] 1597 	push	acc
      00367E 12 41 2C         [24] 1598 	lcall	_printf_tiny
      003681 15 81            [12] 1599 	dec	sp
      003683 15 81            [12] 1600 	dec	sp
                                   1601 ;	main.c:154: break;
      003685 02 32 64         [24] 1602 	ljmp	00147$
                                   1603 ;	main.c:157: case('@'):
      003688                       1604 00121$:
                                   1605 ;	main.c:160: printf_tiny("\n\rfree all buffers and allocate new buffer size ");
      003688 74 B0            [12] 1606 	mov	a,#___str_24
      00368A C0 E0            [24] 1607 	push	acc
      00368C 74 50            [12] 1608 	mov	a,#(___str_24 >> 8)
      00368E C0 E0            [24] 1609 	push	acc
      003690 12 41 2C         [24] 1610 	lcall	_printf_tiny
      003693 15 81            [12] 1611 	dec	sp
      003695 15 81            [12] 1612 	dec	sp
                                   1613 ;	main.c:161: for (i=0; i<=count_plus; i++)                 //free all buffers present on heap
      003697 90 0F A1         [24] 1614 	mov	dptr,#_i
      00369A E4               [12] 1615 	clr	a
      00369B F0               [24] 1616 	movx	@dptr,a
      00369C A3               [24] 1617 	inc	dptr
      00369D F0               [24] 1618 	movx	@dptr,a
      00369E AE 0A            [24] 1619 	mov	r6,_function_sloc1_1_0
      0036A0 AF 0B            [24] 1620 	mov	r7,(_function_sloc1_1_0 + 1)
      0036A2                       1621 00151$:
                                   1622 ;	main.c:163: free(buffer[i]);
      0036A2 90 0F A1         [24] 1623 	mov	dptr,#_i
      0036A5 E0               [24] 1624 	movx	a,@dptr
      0036A6 FC               [12] 1625 	mov	r4,a
      0036A7 A3               [24] 1626 	inc	dptr
      0036A8 E0               [24] 1627 	movx	a,@dptr
      0036A9 FD               [12] 1628 	mov	r5,a
      0036AA 90 13 8B         [24] 1629 	mov	dptr,#__mulint_PARM_2
      0036AD EC               [12] 1630 	mov	a,r4
      0036AE F0               [24] 1631 	movx	@dptr,a
      0036AF ED               [12] 1632 	mov	a,r5
      0036B0 A3               [24] 1633 	inc	dptr
      0036B1 F0               [24] 1634 	movx	@dptr,a
      0036B2 90 00 03         [24] 1635 	mov	dptr,#0x0003
      0036B5 C0 07            [24] 1636 	push	ar7
      0036B7 C0 06            [24] 1637 	push	ar6
      0036B9 12 43 DA         [24] 1638 	lcall	__mulint
      0036BC AC 82            [24] 1639 	mov	r4,dpl
      0036BE AD 83            [24] 1640 	mov	r5,dph
      0036C0 EC               [12] 1641 	mov	a,r4
      0036C1 24 D6            [12] 1642 	add	a,#_buffer
      0036C3 F5 82            [12] 1643 	mov	dpl,a
      0036C5 ED               [12] 1644 	mov	a,r5
      0036C6 34 10            [12] 1645 	addc	a,#(_buffer >> 8)
      0036C8 F5 83            [12] 1646 	mov	dph,a
      0036CA E0               [24] 1647 	movx	a,@dptr
      0036CB FB               [12] 1648 	mov	r3,a
      0036CC A3               [24] 1649 	inc	dptr
      0036CD E0               [24] 1650 	movx	a,@dptr
      0036CE FC               [12] 1651 	mov	r4,a
      0036CF A3               [24] 1652 	inc	dptr
      0036D0 E0               [24] 1653 	movx	a,@dptr
      0036D1 FD               [12] 1654 	mov	r5,a
      0036D2 8B 82            [24] 1655 	mov	dpl,r3
      0036D4 8C 83            [24] 1656 	mov	dph,r4
      0036D6 8D F0            [24] 1657 	mov	b,r5
      0036D8 12 3D B0         [24] 1658 	lcall	_free
      0036DB D0 06            [24] 1659 	pop	ar6
      0036DD D0 07            [24] 1660 	pop	ar7
                                   1661 ;	main.c:161: for (i=0; i<=count_plus; i++)                 //free all buffers present on heap
      0036DF 90 0F A1         [24] 1662 	mov	dptr,#_i
      0036E2 E0               [24] 1663 	movx	a,@dptr
      0036E3 24 01            [12] 1664 	add	a,#0x01
      0036E5 F0               [24] 1665 	movx	@dptr,a
      0036E6 A3               [24] 1666 	inc	dptr
      0036E7 E0               [24] 1667 	movx	a,@dptr
      0036E8 34 00            [12] 1668 	addc	a,#0x00
      0036EA F0               [24] 1669 	movx	@dptr,a
      0036EB 90 0F A1         [24] 1670 	mov	dptr,#_i
      0036EE E0               [24] 1671 	movx	a,@dptr
      0036EF FC               [12] 1672 	mov	r4,a
      0036F0 A3               [24] 1673 	inc	dptr
      0036F1 E0               [24] 1674 	movx	a,@dptr
      0036F2 FD               [12] 1675 	mov	r5,a
      0036F3 C3               [12] 1676 	clr	c
      0036F4 EE               [12] 1677 	mov	a,r6
      0036F5 9C               [12] 1678 	subb	a,r4
      0036F6 EF               [12] 1679 	mov	a,r7
      0036F7 9D               [12] 1680 	subb	a,r5
      0036F8 50 A8            [24] 1681 	jnc	00151$
                                   1682 ;	main.c:165: printf_tiny("\n\rtake new buffer size\n\r");        // retake the buffer size for buffer_0 and buffer_1
      0036FA 74 E1            [12] 1683 	mov	a,#___str_25
      0036FC C0 E0            [24] 1684 	push	acc
      0036FE 74 50            [12] 1685 	mov	a,#(___str_25 >> 8)
      003700 C0 E0            [24] 1686 	push	acc
      003702 12 41 2C         [24] 1687 	lcall	_printf_tiny
      003705 15 81            [12] 1688 	dec	sp
      003707 15 81            [12] 1689 	dec	sp
                                   1690 ;	main.c:166: count2=0;
      003709 90 12 A2         [24] 1691 	mov	dptr,#_function_count2_65536_48
      00370C E4               [12] 1692 	clr	a
      00370D F0               [24] 1693 	movx	@dptr,a
      00370E A3               [24] 1694 	inc	dptr
      00370F F0               [24] 1695 	movx	@dptr,a
                                   1696 ;	main.c:167: buffer_start_size=getnumber();
      003710 12 3D 49         [24] 1697 	lcall	_getnumber
      003713 AE 82            [24] 1698 	mov	r6,dpl
      003715 AF 83            [24] 1699 	mov	r7,dph
      003717 90 10 D3         [24] 1700 	mov	dptr,#_buffer_start_size
      00371A EE               [12] 1701 	mov	a,r6
      00371B F0               [24] 1702 	movx	@dptr,a
      00371C EF               [12] 1703 	mov	a,r7
      00371D A3               [24] 1704 	inc	dptr
      00371E F0               [24] 1705 	movx	@dptr,a
                                   1706 ;	main.c:168: buffer[0]=(char*) malloc(buffer_start_size*sizeof(char));  //allocate buffers in the xram and print their address
      00371F 8E 82            [24] 1707 	mov	dpl,r6
      003721 8F 83            [24] 1708 	mov	dph,r7
      003723 12 42 71         [24] 1709 	lcall	_malloc
      003726 AE 82            [24] 1710 	mov	r6,dpl
      003728 AF 83            [24] 1711 	mov	r7,dph
      00372A 7D 00            [12] 1712 	mov	r5,#0x00
      00372C 90 10 D6         [24] 1713 	mov	dptr,#_buffer
      00372F EE               [12] 1714 	mov	a,r6
      003730 F0               [24] 1715 	movx	@dptr,a
      003731 EF               [12] 1716 	mov	a,r7
      003732 A3               [24] 1717 	inc	dptr
      003733 F0               [24] 1718 	movx	@dptr,a
      003734 ED               [12] 1719 	mov	a,r5
      003735 A3               [24] 1720 	inc	dptr
      003736 F0               [24] 1721 	movx	@dptr,a
                                   1722 ;	main.c:169: printf("address of buffer_0=%p\n\r",buffer[0]);
      003737 C0 06            [24] 1723 	push	ar6
      003739 C0 07            [24] 1724 	push	ar7
      00373B C0 05            [24] 1725 	push	ar5
      00373D 74 FA            [12] 1726 	mov	a,#___str_26
      00373F C0 E0            [24] 1727 	push	acc
      003741 74 50            [12] 1728 	mov	a,#(___str_26 >> 8)
      003743 C0 E0            [24] 1729 	push	acc
      003745 74 80            [12] 1730 	mov	a,#0x80
      003747 C0 E0            [24] 1731 	push	acc
      003749 12 44 48         [24] 1732 	lcall	_printf
      00374C E5 81            [12] 1733 	mov	a,sp
      00374E 24 FA            [12] 1734 	add	a,#0xfa
      003750 F5 81            [12] 1735 	mov	sp,a
                                   1736 ;	main.c:170: buffer[1]=(char*) malloc(buffer_start_size*sizeof(char));
      003752 90 10 D3         [24] 1737 	mov	dptr,#_buffer_start_size
      003755 E0               [24] 1738 	movx	a,@dptr
      003756 FE               [12] 1739 	mov	r6,a
      003757 A3               [24] 1740 	inc	dptr
      003758 E0               [24] 1741 	movx	a,@dptr
      003759 FF               [12] 1742 	mov	r7,a
      00375A 8E 82            [24] 1743 	mov	dpl,r6
      00375C 8F 83            [24] 1744 	mov	dph,r7
      00375E 12 42 71         [24] 1745 	lcall	_malloc
      003761 AE 82            [24] 1746 	mov	r6,dpl
      003763 AF 83            [24] 1747 	mov	r7,dph
      003765 7D 00            [12] 1748 	mov	r5,#0x00
      003767 90 10 D9         [24] 1749 	mov	dptr,#(_buffer + 0x0003)
      00376A EE               [12] 1750 	mov	a,r6
      00376B F0               [24] 1751 	movx	@dptr,a
      00376C EF               [12] 1752 	mov	a,r7
      00376D A3               [24] 1753 	inc	dptr
      00376E F0               [24] 1754 	movx	@dptr,a
      00376F ED               [12] 1755 	mov	a,r5
      003770 A3               [24] 1756 	inc	dptr
      003771 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	main.c:171: printf("address of buffer_1=%p\n\r",buffer[1]);
      003772 C0 06            [24] 1759 	push	ar6
      003774 C0 07            [24] 1760 	push	ar7
      003776 C0 05            [24] 1761 	push	ar5
      003778 74 13            [12] 1762 	mov	a,#___str_27
      00377A C0 E0            [24] 1763 	push	acc
      00377C 74 51            [12] 1764 	mov	a,#(___str_27 >> 8)
      00377E C0 E0            [24] 1765 	push	acc
      003780 74 80            [12] 1766 	mov	a,#0x80
      003782 C0 E0            [24] 1767 	push	acc
      003784 12 44 48         [24] 1768 	lcall	_printf
      003787 E5 81            [12] 1769 	mov	a,sp
      003789 24 FA            [12] 1770 	add	a,#0xfa
      00378B F5 81            [12] 1771 	mov	sp,a
                                   1772 ;	main.c:172: break;
      00378D 02 32 64         [24] 1773 	ljmp	00147$
                                   1774 ;	main.c:174: case('?'):
      003790                       1775 00123$:
                                   1776 ;	main.c:178: printf_tiny("\n\rbuffer_%d",buffer0);
      003790 E4               [12] 1777 	clr	a
      003791 C0 E0            [24] 1778 	push	acc
      003793 C0 E0            [24] 1779 	push	acc
      003795 74 2C            [12] 1780 	mov	a,#___str_28
      003797 C0 E0            [24] 1781 	push	acc
      003799 74 51            [12] 1782 	mov	a,#(___str_28 >> 8)
      00379B C0 E0            [24] 1783 	push	acc
      00379D 12 41 2C         [24] 1784 	lcall	_printf_tiny
      0037A0 E5 81            [12] 1785 	mov	a,sp
      0037A2 24 FC            [12] 1786 	add	a,#0xfc
      0037A4 F5 81            [12] 1787 	mov	sp,a
                                   1788 ;	main.c:179: buffer_allocated_size=buffer_start_size;
      0037A6 90 10 D3         [24] 1789 	mov	dptr,#_buffer_start_size
      0037A9 E0               [24] 1790 	movx	a,@dptr
      0037AA FE               [12] 1791 	mov	r6,a
      0037AB A3               [24] 1792 	inc	dptr
      0037AC E0               [24] 1793 	movx	a,@dptr
      0037AD FF               [12] 1794 	mov	r7,a
      0037AE 90 12 98         [24] 1795 	mov	dptr,#_buffer_allocated_size
      0037B1 EE               [12] 1796 	mov	a,r6
      0037B2 F0               [24] 1797 	movx	@dptr,a
      0037B3 EF               [12] 1798 	mov	a,r7
      0037B4 A3               [24] 1799 	inc	dptr
      0037B5 F0               [24] 1800 	movx	@dptr,a
                                   1801 ;	main.c:180: buffer_space_filled=count2;
      0037B6 90 12 A2         [24] 1802 	mov	dptr,#_function_count2_65536_48
      0037B9 E0               [24] 1803 	movx	a,@dptr
      0037BA FC               [12] 1804 	mov	r4,a
      0037BB A3               [24] 1805 	inc	dptr
      0037BC E0               [24] 1806 	movx	a,@dptr
      0037BD FD               [12] 1807 	mov	r5,a
      0037BE 90 12 9A         [24] 1808 	mov	dptr,#_buffer_space_filled
      0037C1 EC               [12] 1809 	mov	a,r4
      0037C2 F0               [24] 1810 	movx	@dptr,a
      0037C3 ED               [12] 1811 	mov	a,r5
      0037C4 A3               [24] 1812 	inc	dptr
      0037C5 F0               [24] 1813 	movx	@dptr,a
                                   1814 ;	main.c:181: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
      0037C6 90 12 9C         [24] 1815 	mov	dptr,#_buffer_free_Space
      0037C9 EE               [12] 1816 	mov	a,r6
      0037CA C3               [12] 1817 	clr	c
      0037CB 9C               [12] 1818 	subb	a,r4
      0037CC F0               [24] 1819 	movx	@dptr,a
      0037CD EF               [12] 1820 	mov	a,r7
      0037CE 9D               [12] 1821 	subb	a,r5
      0037CF A3               [24] 1822 	inc	dptr
      0037D0 F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	main.c:182: no_of_characters=count1-1;
      0037D1 90 12 A0         [24] 1825 	mov	dptr,#_function_count1_65536_48
      0037D4 E0               [24] 1826 	movx	a,@dptr
      0037D5 FE               [12] 1827 	mov	r6,a
      0037D6 A3               [24] 1828 	inc	dptr
      0037D7 E0               [24] 1829 	movx	a,@dptr
      0037D8 FF               [12] 1830 	mov	r7,a
      0037D9 EE               [12] 1831 	mov	a,r6
      0037DA 24 FF            [12] 1832 	add	a,#0xff
      0037DC FC               [12] 1833 	mov	r4,a
      0037DD EF               [12] 1834 	mov	a,r7
      0037DE 34 FF            [12] 1835 	addc	a,#0xff
      0037E0 FD               [12] 1836 	mov	r5,a
      0037E1 90 12 9E         [24] 1837 	mov	dptr,#_no_of_characters
      0037E4 EC               [12] 1838 	mov	a,r4
      0037E5 F0               [24] 1839 	movx	@dptr,a
      0037E6 ED               [12] 1840 	mov	a,r5
      0037E7 A3               [24] 1841 	inc	dptr
      0037E8 F0               [24] 1842 	movx	@dptr,a
                                   1843 ;	main.c:183: printf_tiny("\n\rbuffer_number=%d",buffer0);                  //display contents of buffer_0 including size, start addr,
      0037E9 C0 07            [24] 1844 	push	ar7
      0037EB C0 06            [24] 1845 	push	ar6
      0037ED E4               [12] 1846 	clr	a
      0037EE C0 E0            [24] 1847 	push	acc
      0037F0 C0 E0            [24] 1848 	push	acc
      0037F2 74 38            [12] 1849 	mov	a,#___str_29
      0037F4 C0 E0            [24] 1850 	push	acc
      0037F6 74 51            [12] 1851 	mov	a,#(___str_29 >> 8)
      0037F8 C0 E0            [24] 1852 	push	acc
      0037FA 12 41 2C         [24] 1853 	lcall	_printf_tiny
      0037FD E5 81            [12] 1854 	mov	a,sp
      0037FF 24 FC            [12] 1855 	add	a,#0xfc
      003801 F5 81            [12] 1856 	mov	sp,a
                                   1857 ;	main.c:185: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
      003803 90 12 98         [24] 1858 	mov	dptr,#_buffer_allocated_size
      003806 E0               [24] 1859 	movx	a,@dptr
      003807 C0 E0            [24] 1860 	push	acc
      003809 A3               [24] 1861 	inc	dptr
      00380A E0               [24] 1862 	movx	a,@dptr
      00380B C0 E0            [24] 1863 	push	acc
      00380D 74 4B            [12] 1864 	mov	a,#___str_30
      00380F C0 E0            [24] 1865 	push	acc
      003811 74 51            [12] 1866 	mov	a,#(___str_30 >> 8)
      003813 C0 E0            [24] 1867 	push	acc
      003815 12 41 2C         [24] 1868 	lcall	_printf_tiny
      003818 E5 81            [12] 1869 	mov	a,sp
      00381A 24 FC            [12] 1870 	add	a,#0xfc
      00381C F5 81            [12] 1871 	mov	sp,a
                                   1872 ;	main.c:186: printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
      00381E 90 12 9A         [24] 1873 	mov	dptr,#_buffer_space_filled
      003821 E0               [24] 1874 	movx	a,@dptr
      003822 C0 E0            [24] 1875 	push	acc
      003824 A3               [24] 1876 	inc	dptr
      003825 E0               [24] 1877 	movx	a,@dptr
      003826 C0 E0            [24] 1878 	push	acc
      003828 74 66            [12] 1879 	mov	a,#___str_31
      00382A C0 E0            [24] 1880 	push	acc
      00382C 74 51            [12] 1881 	mov	a,#(___str_31 >> 8)
      00382E C0 E0            [24] 1882 	push	acc
      003830 12 41 2C         [24] 1883 	lcall	_printf_tiny
      003833 E5 81            [12] 1884 	mov	a,sp
      003835 24 FC            [12] 1885 	add	a,#0xfc
      003837 F5 81            [12] 1886 	mov	sp,a
                                   1887 ;	main.c:187: printf("\n\rbuffer_start_add=%p",buffer[0]);                  //display required contents of buffer_0 on heap
      003839 90 10 D6         [24] 1888 	mov	dptr,#_buffer
      00383C E0               [24] 1889 	movx	a,@dptr
      00383D FB               [12] 1890 	mov	r3,a
      00383E A3               [24] 1891 	inc	dptr
      00383F E0               [24] 1892 	movx	a,@dptr
      003840 FC               [12] 1893 	mov	r4,a
      003841 A3               [24] 1894 	inc	dptr
      003842 E0               [24] 1895 	movx	a,@dptr
      003843 FD               [12] 1896 	mov	r5,a
      003844 C0 03            [24] 1897 	push	ar3
      003846 C0 04            [24] 1898 	push	ar4
      003848 C0 05            [24] 1899 	push	ar5
      00384A 74 7F            [12] 1900 	mov	a,#___str_32
      00384C C0 E0            [24] 1901 	push	acc
      00384E 74 51            [12] 1902 	mov	a,#(___str_32 >> 8)
      003850 C0 E0            [24] 1903 	push	acc
      003852 74 80            [12] 1904 	mov	a,#0x80
      003854 C0 E0            [24] 1905 	push	acc
      003856 12 44 48         [24] 1906 	lcall	_printf
      003859 E5 81            [12] 1907 	mov	a,sp
      00385B 24 FA            [12] 1908 	add	a,#0xfa
      00385D F5 81            [12] 1909 	mov	sp,a
      00385F D0 06            [24] 1910 	pop	ar6
      003861 D0 07            [24] 1911 	pop	ar7
                                   1912 ;	main.c:188: printf("\n\rbuffer_end_add=%p",buffer[0]+buffer_start_size-1);
      003863 90 10 D6         [24] 1913 	mov	dptr,#_buffer
      003866 E0               [24] 1914 	movx	a,@dptr
      003867 FB               [12] 1915 	mov	r3,a
      003868 A3               [24] 1916 	inc	dptr
      003869 E0               [24] 1917 	movx	a,@dptr
      00386A FC               [12] 1918 	mov	r4,a
      00386B A3               [24] 1919 	inc	dptr
      00386C E0               [24] 1920 	movx	a,@dptr
      00386D FD               [12] 1921 	mov	r5,a
      00386E 90 10 D3         [24] 1922 	mov	dptr,#_buffer_start_size
      003871 E0               [24] 1923 	movx	a,@dptr
      003872 F9               [12] 1924 	mov	r1,a
      003873 A3               [24] 1925 	inc	dptr
      003874 E0               [24] 1926 	movx	a,@dptr
      003875 FA               [12] 1927 	mov	r2,a
      003876 E9               [12] 1928 	mov	a,r1
      003877 2B               [12] 1929 	add	a,r3
      003878 FB               [12] 1930 	mov	r3,a
      003879 EA               [12] 1931 	mov	a,r2
      00387A 3C               [12] 1932 	addc	a,r4
      00387B FC               [12] 1933 	mov	r4,a
      00387C 1B               [12] 1934 	dec	r3
      00387D BB FF 01         [24] 1935 	cjne	r3,#0xff,00310$
      003880 1C               [12] 1936 	dec	r4
      003881                       1937 00310$:
      003881 C0 07            [24] 1938 	push	ar7
      003883 C0 06            [24] 1939 	push	ar6
      003885 C0 03            [24] 1940 	push	ar3
      003887 C0 04            [24] 1941 	push	ar4
      003889 C0 05            [24] 1942 	push	ar5
      00388B 74 95            [12] 1943 	mov	a,#___str_33
      00388D C0 E0            [24] 1944 	push	acc
      00388F 74 51            [12] 1945 	mov	a,#(___str_33 >> 8)
      003891 C0 E0            [24] 1946 	push	acc
      003893 74 80            [12] 1947 	mov	a,#0x80
      003895 C0 E0            [24] 1948 	push	acc
      003897 12 44 48         [24] 1949 	lcall	_printf
      00389A E5 81            [12] 1950 	mov	a,sp
      00389C 24 FA            [12] 1951 	add	a,#0xfa
      00389E F5 81            [12] 1952 	mov	sp,a
                                   1953 ;	main.c:189: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
      0038A0 90 12 9C         [24] 1954 	mov	dptr,#_buffer_free_Space
      0038A3 E0               [24] 1955 	movx	a,@dptr
      0038A4 C0 E0            [24] 1956 	push	acc
      0038A6 A3               [24] 1957 	inc	dptr
      0038A7 E0               [24] 1958 	movx	a,@dptr
      0038A8 C0 E0            [24] 1959 	push	acc
      0038AA 74 A9            [12] 1960 	mov	a,#___str_34
      0038AC C0 E0            [24] 1961 	push	acc
      0038AE 74 51            [12] 1962 	mov	a,#(___str_34 >> 8)
      0038B0 C0 E0            [24] 1963 	push	acc
      0038B2 12 41 2C         [24] 1964 	lcall	_printf_tiny
      0038B5 E5 81            [12] 1965 	mov	a,sp
      0038B7 24 FC            [12] 1966 	add	a,#0xfc
      0038B9 F5 81            [12] 1967 	mov	sp,a
                                   1968 ;	main.c:190: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
      0038BB 90 12 9E         [24] 1969 	mov	dptr,#_no_of_characters
      0038BE E0               [24] 1970 	movx	a,@dptr
      0038BF C0 E0            [24] 1971 	push	acc
      0038C1 A3               [24] 1972 	inc	dptr
      0038C2 E0               [24] 1973 	movx	a,@dptr
      0038C3 C0 E0            [24] 1974 	push	acc
      0038C5 74 C0            [12] 1975 	mov	a,#___str_35
      0038C7 C0 E0            [24] 1976 	push	acc
      0038C9 74 51            [12] 1977 	mov	a,#(___str_35 >> 8)
      0038CB C0 E0            [24] 1978 	push	acc
      0038CD 12 41 2C         [24] 1979 	lcall	_printf_tiny
      0038D0 E5 81            [12] 1980 	mov	a,sp
      0038D2 24 FC            [12] 1981 	add	a,#0xfc
      0038D4 F5 81            [12] 1982 	mov	sp,a
      0038D6 D0 06            [24] 1983 	pop	ar6
      0038D8 D0 07            [24] 1984 	pop	ar7
                                   1985 ;	main.c:193: if(buffer[1]!=NULL)
      0038DA 90 10 D9         [24] 1986 	mov	dptr,#(_buffer + 0x0003)
      0038DD E0               [24] 1987 	movx	a,@dptr
      0038DE FB               [12] 1988 	mov	r3,a
      0038DF A3               [24] 1989 	inc	dptr
      0038E0 E0               [24] 1990 	movx	a,@dptr
      0038E1 FC               [12] 1991 	mov	r4,a
      0038E2 A3               [24] 1992 	inc	dptr
      0038E3 E0               [24] 1993 	movx	a,@dptr
      0038E4 FD               [12] 1994 	mov	r5,a
      0038E5 EB               [12] 1995 	mov	a,r3
      0038E6 4C               [12] 1996 	orl	a,r4
      0038E7 70 03            [24] 1997 	jnz	00311$
      0038E9 02 3A 1F         [24] 1998 	ljmp	00127$
      0038EC                       1999 00311$:
                                   2000 ;	main.c:195: printf("\n\n\rbuffer_%d",buffer1);
      0038EC C0 07            [24] 2001 	push	ar7
      0038EE C0 06            [24] 2002 	push	ar6
      0038F0 74 01            [12] 2003 	mov	a,#0x01
      0038F2 C0 E0            [24] 2004 	push	acc
      0038F4 E4               [12] 2005 	clr	a
      0038F5 C0 E0            [24] 2006 	push	acc
      0038F7 74 D8            [12] 2007 	mov	a,#___str_36
      0038F9 C0 E0            [24] 2008 	push	acc
      0038FB 74 51            [12] 2009 	mov	a,#(___str_36 >> 8)
      0038FD C0 E0            [24] 2010 	push	acc
      0038FF 74 80            [12] 2011 	mov	a,#0x80
      003901 C0 E0            [24] 2012 	push	acc
      003903 12 44 48         [24] 2013 	lcall	_printf
      003906 E5 81            [12] 2014 	mov	a,sp
      003908 24 FB            [12] 2015 	add	a,#0xfb
      00390A F5 81            [12] 2016 	mov	sp,a
      00390C D0 06            [24] 2017 	pop	ar6
      00390E D0 07            [24] 2018 	pop	ar7
                                   2019 ;	main.c:196: buffer_allocated_size=buffer_start_size;
      003910 90 10 D3         [24] 2020 	mov	dptr,#_buffer_start_size
      003913 E0               [24] 2021 	movx	a,@dptr
      003914 FC               [12] 2022 	mov	r4,a
      003915 A3               [24] 2023 	inc	dptr
      003916 E0               [24] 2024 	movx	a,@dptr
      003917 FD               [12] 2025 	mov	r5,a
      003918 90 12 98         [24] 2026 	mov	dptr,#_buffer_allocated_size
      00391B EC               [12] 2027 	mov	a,r4
      00391C F0               [24] 2028 	movx	@dptr,a
      00391D ED               [12] 2029 	mov	a,r5
      00391E A3               [24] 2030 	inc	dptr
      00391F F0               [24] 2031 	movx	@dptr,a
                                   2032 ;	main.c:197: buffer_space_filled=0;
      003920 90 12 9A         [24] 2033 	mov	dptr,#_buffer_space_filled
      003923 E4               [12] 2034 	clr	a
      003924 F0               [24] 2035 	movx	@dptr,a
      003925 A3               [24] 2036 	inc	dptr
      003926 F0               [24] 2037 	movx	@dptr,a
                                   2038 ;	main.c:198: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
      003927 90 12 9C         [24] 2039 	mov	dptr,#_buffer_free_Space
      00392A EC               [12] 2040 	mov	a,r4
      00392B F0               [24] 2041 	movx	@dptr,a
      00392C ED               [12] 2042 	mov	a,r5
      00392D A3               [24] 2043 	inc	dptr
      00392E F0               [24] 2044 	movx	@dptr,a
                                   2045 ;	main.c:199: no_of_characters=count1-1;                        //display contents of buffer_1 including size, start addr,
      00392F 1E               [12] 2046 	dec	r6
      003930 BE FF 01         [24] 2047 	cjne	r6,#0xff,00312$
      003933 1F               [12] 2048 	dec	r7
      003934                       2049 00312$:
      003934 90 12 9E         [24] 2050 	mov	dptr,#_no_of_characters
      003937 EE               [12] 2051 	mov	a,r6
      003938 F0               [24] 2052 	movx	@dptr,a
      003939 EF               [12] 2053 	mov	a,r7
      00393A A3               [24] 2054 	inc	dptr
      00393B F0               [24] 2055 	movx	@dptr,a
                                   2056 ;	main.c:201: printf_tiny("\n\rbuffer_number=%d",buffer1);
      00393C 74 01            [12] 2057 	mov	a,#0x01
      00393E C0 E0            [24] 2058 	push	acc
      003940 E4               [12] 2059 	clr	a
      003941 C0 E0            [24] 2060 	push	acc
      003943 74 38            [12] 2061 	mov	a,#___str_29
      003945 C0 E0            [24] 2062 	push	acc
      003947 74 51            [12] 2063 	mov	a,#(___str_29 >> 8)
      003949 C0 E0            [24] 2064 	push	acc
      00394B 12 41 2C         [24] 2065 	lcall	_printf_tiny
      00394E E5 81            [12] 2066 	mov	a,sp
      003950 24 FC            [12] 2067 	add	a,#0xfc
      003952 F5 81            [12] 2068 	mov	sp,a
                                   2069 ;	main.c:202: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
      003954 90 12 98         [24] 2070 	mov	dptr,#_buffer_allocated_size
      003957 E0               [24] 2071 	movx	a,@dptr
      003958 C0 E0            [24] 2072 	push	acc
      00395A A3               [24] 2073 	inc	dptr
      00395B E0               [24] 2074 	movx	a,@dptr
      00395C C0 E0            [24] 2075 	push	acc
      00395E 74 4B            [12] 2076 	mov	a,#___str_30
      003960 C0 E0            [24] 2077 	push	acc
      003962 74 51            [12] 2078 	mov	a,#(___str_30 >> 8)
      003964 C0 E0            [24] 2079 	push	acc
      003966 12 41 2C         [24] 2080 	lcall	_printf_tiny
      003969 E5 81            [12] 2081 	mov	a,sp
      00396B 24 FC            [12] 2082 	add	a,#0xfc
      00396D F5 81            [12] 2083 	mov	sp,a
                                   2084 ;	main.c:203: printf_tiny("\n\rbuffer_space_filled=%d",buffer_space_filled);
      00396F 90 12 9A         [24] 2085 	mov	dptr,#_buffer_space_filled
      003972 E0               [24] 2086 	movx	a,@dptr
      003973 C0 E0            [24] 2087 	push	acc
      003975 A3               [24] 2088 	inc	dptr
      003976 E0               [24] 2089 	movx	a,@dptr
      003977 C0 E0            [24] 2090 	push	acc
      003979 74 66            [12] 2091 	mov	a,#___str_31
      00397B C0 E0            [24] 2092 	push	acc
      00397D 74 51            [12] 2093 	mov	a,#(___str_31 >> 8)
      00397F C0 E0            [24] 2094 	push	acc
      003981 12 41 2C         [24] 2095 	lcall	_printf_tiny
      003984 E5 81            [12] 2096 	mov	a,sp
      003986 24 FC            [12] 2097 	add	a,#0xfc
      003988 F5 81            [12] 2098 	mov	sp,a
                                   2099 ;	main.c:204: printf("\n\rbuffer_start_add=%p",buffer[1]);
      00398A 90 10 D9         [24] 2100 	mov	dptr,#(_buffer + 0x0003)
      00398D E0               [24] 2101 	movx	a,@dptr
      00398E FD               [12] 2102 	mov	r5,a
      00398F A3               [24] 2103 	inc	dptr
      003990 E0               [24] 2104 	movx	a,@dptr
      003991 FE               [12] 2105 	mov	r6,a
      003992 A3               [24] 2106 	inc	dptr
      003993 E0               [24] 2107 	movx	a,@dptr
      003994 FF               [12] 2108 	mov	r7,a
      003995 C0 05            [24] 2109 	push	ar5
      003997 C0 06            [24] 2110 	push	ar6
      003999 C0 07            [24] 2111 	push	ar7
      00399B 74 7F            [12] 2112 	mov	a,#___str_32
      00399D C0 E0            [24] 2113 	push	acc
      00399F 74 51            [12] 2114 	mov	a,#(___str_32 >> 8)
      0039A1 C0 E0            [24] 2115 	push	acc
      0039A3 74 80            [12] 2116 	mov	a,#0x80
      0039A5 C0 E0            [24] 2117 	push	acc
      0039A7 12 44 48         [24] 2118 	lcall	_printf
      0039AA E5 81            [12] 2119 	mov	a,sp
      0039AC 24 FA            [12] 2120 	add	a,#0xfa
      0039AE F5 81            [12] 2121 	mov	sp,a
                                   2122 ;	main.c:205: printf("\n\rbuffer_end_add=%p",buffer[1]+buffer_start_size-1); //display required contents of buffer_1 on heap
      0039B0 90 10 D9         [24] 2123 	mov	dptr,#(_buffer + 0x0003)
      0039B3 E0               [24] 2124 	movx	a,@dptr
      0039B4 FD               [12] 2125 	mov	r5,a
      0039B5 A3               [24] 2126 	inc	dptr
      0039B6 E0               [24] 2127 	movx	a,@dptr
      0039B7 FE               [12] 2128 	mov	r6,a
      0039B8 A3               [24] 2129 	inc	dptr
      0039B9 E0               [24] 2130 	movx	a,@dptr
      0039BA FF               [12] 2131 	mov	r7,a
      0039BB 90 10 D3         [24] 2132 	mov	dptr,#_buffer_start_size
      0039BE E0               [24] 2133 	movx	a,@dptr
      0039BF FB               [12] 2134 	mov	r3,a
      0039C0 A3               [24] 2135 	inc	dptr
      0039C1 E0               [24] 2136 	movx	a,@dptr
      0039C2 FC               [12] 2137 	mov	r4,a
      0039C3 EB               [12] 2138 	mov	a,r3
      0039C4 2D               [12] 2139 	add	a,r5
      0039C5 FD               [12] 2140 	mov	r5,a
      0039C6 EC               [12] 2141 	mov	a,r4
      0039C7 3E               [12] 2142 	addc	a,r6
      0039C8 FE               [12] 2143 	mov	r6,a
      0039C9 1D               [12] 2144 	dec	r5
      0039CA BD FF 01         [24] 2145 	cjne	r5,#0xff,00313$
      0039CD 1E               [12] 2146 	dec	r6
      0039CE                       2147 00313$:
      0039CE C0 05            [24] 2148 	push	ar5
      0039D0 C0 06            [24] 2149 	push	ar6
      0039D2 C0 07            [24] 2150 	push	ar7
      0039D4 74 95            [12] 2151 	mov	a,#___str_33
      0039D6 C0 E0            [24] 2152 	push	acc
      0039D8 74 51            [12] 2153 	mov	a,#(___str_33 >> 8)
      0039DA C0 E0            [24] 2154 	push	acc
      0039DC 74 80            [12] 2155 	mov	a,#0x80
      0039DE C0 E0            [24] 2156 	push	acc
      0039E0 12 44 48         [24] 2157 	lcall	_printf
      0039E3 E5 81            [12] 2158 	mov	a,sp
      0039E5 24 FA            [12] 2159 	add	a,#0xfa
      0039E7 F5 81            [12] 2160 	mov	sp,a
                                   2161 ;	main.c:206: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
      0039E9 90 12 9C         [24] 2162 	mov	dptr,#_buffer_free_Space
      0039EC E0               [24] 2163 	movx	a,@dptr
      0039ED C0 E0            [24] 2164 	push	acc
      0039EF A3               [24] 2165 	inc	dptr
      0039F0 E0               [24] 2166 	movx	a,@dptr
      0039F1 C0 E0            [24] 2167 	push	acc
      0039F3 74 A9            [12] 2168 	mov	a,#___str_34
      0039F5 C0 E0            [24] 2169 	push	acc
      0039F7 74 51            [12] 2170 	mov	a,#(___str_34 >> 8)
      0039F9 C0 E0            [24] 2171 	push	acc
      0039FB 12 41 2C         [24] 2172 	lcall	_printf_tiny
      0039FE E5 81            [12] 2173 	mov	a,sp
      003A00 24 FC            [12] 2174 	add	a,#0xfc
      003A02 F5 81            [12] 2175 	mov	sp,a
                                   2176 ;	main.c:207: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
      003A04 90 12 9E         [24] 2177 	mov	dptr,#_no_of_characters
      003A07 E0               [24] 2178 	movx	a,@dptr
      003A08 C0 E0            [24] 2179 	push	acc
      003A0A A3               [24] 2180 	inc	dptr
      003A0B E0               [24] 2181 	movx	a,@dptr
      003A0C C0 E0            [24] 2182 	push	acc
      003A0E 74 C0            [12] 2183 	mov	a,#___str_35
      003A10 C0 E0            [24] 2184 	push	acc
      003A12 74 51            [12] 2185 	mov	a,#(___str_35 >> 8)
      003A14 C0 E0            [24] 2186 	push	acc
      003A16 12 41 2C         [24] 2187 	lcall	_printf_tiny
      003A19 E5 81            [12] 2188 	mov	a,sp
      003A1B 24 FC            [12] 2189 	add	a,#0xfc
      003A1D F5 81            [12] 2190 	mov	sp,a
      003A1F                       2191 00127$:
                                   2192 ;	main.c:209: printf_tiny("\n\r");
      003A1F 74 89            [12] 2193 	mov	a,#___str_9
      003A21 C0 E0            [24] 2194 	push	acc
      003A23 74 4F            [12] 2195 	mov	a,#(___str_9 >> 8)
      003A25 C0 E0            [24] 2196 	push	acc
      003A27 12 41 2C         [24] 2197 	lcall	_printf_tiny
      003A2A 15 81            [12] 2198 	dec	sp
      003A2C 15 81            [12] 2199 	dec	sp
                                   2200 ;	main.c:210: for(i=2; i<=count_plus; i++)
      003A2E 90 0F A1         [24] 2201 	mov	dptr,#_i
      003A31 74 02            [12] 2202 	mov	a,#0x02
      003A33 F0               [24] 2203 	movx	@dptr,a
      003A34 E4               [12] 2204 	clr	a
      003A35 A3               [24] 2205 	inc	dptr
      003A36 F0               [24] 2206 	movx	@dptr,a
      003A37 90 12 A0         [24] 2207 	mov	dptr,#_function_count1_65536_48
      003A3A E0               [24] 2208 	movx	a,@dptr
      003A3B FE               [12] 2209 	mov	r6,a
      003A3C A3               [24] 2210 	inc	dptr
      003A3D E0               [24] 2211 	movx	a,@dptr
      003A3E FF               [12] 2212 	mov	r7,a
      003A3F EE               [12] 2213 	mov	a,r6
      003A40 24 FF            [12] 2214 	add	a,#0xff
      003A42 F5 08            [12] 2215 	mov	_function_sloc0_1_0,a
      003A44 EF               [12] 2216 	mov	a,r7
      003A45 34 FF            [12] 2217 	addc	a,#0xff
      003A47 F5 09            [12] 2218 	mov	(_function_sloc0_1_0 + 1),a
      003A49 AC 0A            [24] 2219 	mov	r4,_function_sloc1_1_0
      003A4B AD 0B            [24] 2220 	mov	r5,(_function_sloc1_1_0 + 1)
      003A4D                       2221 00154$:
      003A4D 90 0F A1         [24] 2222 	mov	dptr,#_i
      003A50 E0               [24] 2223 	movx	a,@dptr
      003A51 FA               [12] 2224 	mov	r2,a
      003A52 A3               [24] 2225 	inc	dptr
      003A53 E0               [24] 2226 	movx	a,@dptr
      003A54 FB               [12] 2227 	mov	r3,a
      003A55 C3               [12] 2228 	clr	c
      003A56 EC               [12] 2229 	mov	a,r4
      003A57 9A               [12] 2230 	subb	a,r2
      003A58 ED               [12] 2231 	mov	a,r5
      003A59 9B               [12] 2232 	subb	a,r3
      003A5A 50 03            [24] 2233 	jnc	00314$
      003A5C 02 3C 2D         [24] 2234 	ljmp	00130$
      003A5F                       2235 00314$:
                                   2236 ;	main.c:212: if(buffer[i]!=NULL)
      003A5F 90 13 8B         [24] 2237 	mov	dptr,#__mulint_PARM_2
      003A62 EA               [12] 2238 	mov	a,r2
      003A63 F0               [24] 2239 	movx	@dptr,a
      003A64 EB               [12] 2240 	mov	a,r3
      003A65 A3               [24] 2241 	inc	dptr
      003A66 F0               [24] 2242 	movx	@dptr,a
      003A67 90 00 03         [24] 2243 	mov	dptr,#0x0003
      003A6A C0 05            [24] 2244 	push	ar5
      003A6C C0 04            [24] 2245 	push	ar4
      003A6E C0 03            [24] 2246 	push	ar3
      003A70 C0 02            [24] 2247 	push	ar2
      003A72 12 43 DA         [24] 2248 	lcall	__mulint
      003A75 A8 82            [24] 2249 	mov	r0,dpl
      003A77 A9 83            [24] 2250 	mov	r1,dph
      003A79 D0 02            [24] 2251 	pop	ar2
      003A7B D0 03            [24] 2252 	pop	ar3
      003A7D D0 04            [24] 2253 	pop	ar4
      003A7F D0 05            [24] 2254 	pop	ar5
      003A81 E8               [12] 2255 	mov	a,r0
      003A82 24 D6            [12] 2256 	add	a,#_buffer
      003A84 F5 82            [12] 2257 	mov	dpl,a
      003A86 E9               [12] 2258 	mov	a,r1
      003A87 34 10            [12] 2259 	addc	a,#(_buffer >> 8)
      003A89 F5 83            [12] 2260 	mov	dph,a
      003A8B E0               [24] 2261 	movx	a,@dptr
      003A8C F8               [12] 2262 	mov	r0,a
      003A8D A3               [24] 2263 	inc	dptr
      003A8E E0               [24] 2264 	movx	a,@dptr
      003A8F F9               [12] 2265 	mov	r1,a
      003A90 A3               [24] 2266 	inc	dptr
      003A91 E0               [24] 2267 	movx	a,@dptr
      003A92 FF               [12] 2268 	mov	r7,a
      003A93 E8               [12] 2269 	mov	a,r0
      003A94 49               [12] 2270 	orl	a,r1
      003A95 70 03            [24] 2271 	jnz	00315$
      003A97 02 3C 1E         [24] 2272 	ljmp	00155$
      003A9A                       2273 00315$:
                                   2274 ;	main.c:214: buffer_allocated_size=buffer_size[i];
      003A9A EA               [12] 2275 	mov	a,r2
      003A9B 2A               [12] 2276 	add	a,r2
      003A9C FE               [12] 2277 	mov	r6,a
      003A9D EB               [12] 2278 	mov	a,r3
      003A9E 33               [12] 2279 	rlc	a
      003A9F FF               [12] 2280 	mov	r7,a
      003AA0 EE               [12] 2281 	mov	a,r6
      003AA1 24 A3            [12] 2282 	add	a,#_buffer_size
      003AA3 F5 82            [12] 2283 	mov	dpl,a
      003AA5 EF               [12] 2284 	mov	a,r7
      003AA6 34 0F            [12] 2285 	addc	a,#(_buffer_size >> 8)
      003AA8 F5 83            [12] 2286 	mov	dph,a
      003AAA E0               [24] 2287 	movx	a,@dptr
      003AAB FE               [12] 2288 	mov	r6,a
      003AAC A3               [24] 2289 	inc	dptr
      003AAD E0               [24] 2290 	movx	a,@dptr
      003AAE FF               [12] 2291 	mov	r7,a
      003AAF 90 12 98         [24] 2292 	mov	dptr,#_buffer_allocated_size
      003AB2 EE               [12] 2293 	mov	a,r6
      003AB3 F0               [24] 2294 	movx	@dptr,a
      003AB4 EF               [12] 2295 	mov	a,r7
      003AB5 A3               [24] 2296 	inc	dptr
      003AB6 F0               [24] 2297 	movx	@dptr,a
                                   2298 ;	main.c:215: buffer_free_Space=buffer_allocated_size-buffer_space_filled;
      003AB7 90 12 9A         [24] 2299 	mov	dptr,#_buffer_space_filled
      003ABA E0               [24] 2300 	movx	a,@dptr
      003ABB F8               [12] 2301 	mov	r0,a
      003ABC A3               [24] 2302 	inc	dptr
      003ABD E0               [24] 2303 	movx	a,@dptr
      003ABE F9               [12] 2304 	mov	r1,a
      003ABF 90 12 9C         [24] 2305 	mov	dptr,#_buffer_free_Space
      003AC2 EE               [12] 2306 	mov	a,r6
      003AC3 C3               [12] 2307 	clr	c
      003AC4 98               [12] 2308 	subb	a,r0
      003AC5 F0               [24] 2309 	movx	@dptr,a
      003AC6 EF               [12] 2310 	mov	a,r7
      003AC7 99               [12] 2311 	subb	a,r1
      003AC8 A3               [24] 2312 	inc	dptr
      003AC9 F0               [24] 2313 	movx	@dptr,a
                                   2314 ;	main.c:216: no_of_characters=count1-1;
      003ACA 90 12 9E         [24] 2315 	mov	dptr,#_no_of_characters
      003ACD E5 08            [12] 2316 	mov	a,_function_sloc0_1_0
      003ACF F0               [24] 2317 	movx	@dptr,a
      003AD0 E5 09            [12] 2318 	mov	a,(_function_sloc0_1_0 + 1)
      003AD2 A3               [24] 2319 	inc	dptr
      003AD3 F0               [24] 2320 	movx	@dptr,a
                                   2321 ;	main.c:217: printf_tiny("\n\n\rbuffer_number=%d",i);       //display contents of buffer_n including size, start addr,
      003AD4 C0 05            [24] 2322 	push	ar5
      003AD6 C0 04            [24] 2323 	push	ar4
      003AD8 C0 02            [24] 2324 	push	ar2
      003ADA C0 03            [24] 2325 	push	ar3
      003ADC 74 E5            [12] 2326 	mov	a,#___str_37
      003ADE C0 E0            [24] 2327 	push	acc
      003AE0 74 51            [12] 2328 	mov	a,#(___str_37 >> 8)
      003AE2 C0 E0            [24] 2329 	push	acc
      003AE4 12 41 2C         [24] 2330 	lcall	_printf_tiny
      003AE7 E5 81            [12] 2331 	mov	a,sp
      003AE9 24 FC            [12] 2332 	add	a,#0xfc
      003AEB F5 81            [12] 2333 	mov	sp,a
                                   2334 ;	main.c:219: printf_tiny("\n\rbuffer_allocated_size=%d",buffer_allocated_size);
      003AED 90 12 98         [24] 2335 	mov	dptr,#_buffer_allocated_size
      003AF0 E0               [24] 2336 	movx	a,@dptr
      003AF1 C0 E0            [24] 2337 	push	acc
      003AF3 A3               [24] 2338 	inc	dptr
      003AF4 E0               [24] 2339 	movx	a,@dptr
      003AF5 C0 E0            [24] 2340 	push	acc
      003AF7 74 4B            [12] 2341 	mov	a,#___str_30
      003AF9 C0 E0            [24] 2342 	push	acc
      003AFB 74 51            [12] 2343 	mov	a,#(___str_30 >> 8)
      003AFD C0 E0            [24] 2344 	push	acc
      003AFF 12 41 2C         [24] 2345 	lcall	_printf_tiny
      003B02 E5 81            [12] 2346 	mov	a,sp
      003B04 24 FC            [12] 2347 	add	a,#0xfc
      003B06 F5 81            [12] 2348 	mov	sp,a
                                   2349 ;	main.c:220: printf_tiny("\n\rbuffer_space_filled=%d",0);
      003B08 E4               [12] 2350 	clr	a
      003B09 C0 E0            [24] 2351 	push	acc
      003B0B C0 E0            [24] 2352 	push	acc
      003B0D 74 66            [12] 2353 	mov	a,#___str_31
      003B0F C0 E0            [24] 2354 	push	acc
      003B11 74 51            [12] 2355 	mov	a,#(___str_31 >> 8)
      003B13 C0 E0            [24] 2356 	push	acc
      003B15 12 41 2C         [24] 2357 	lcall	_printf_tiny
      003B18 E5 81            [12] 2358 	mov	a,sp
      003B1A 24 FC            [12] 2359 	add	a,#0xfc
      003B1C F5 81            [12] 2360 	mov	sp,a
                                   2361 ;	main.c:221: printf("\n\rbuffer_start_add=%p",buffer[i]);
      003B1E 90 0F A1         [24] 2362 	mov	dptr,#_i
      003B21 E0               [24] 2363 	movx	a,@dptr
      003B22 FE               [12] 2364 	mov	r6,a
      003B23 A3               [24] 2365 	inc	dptr
      003B24 E0               [24] 2366 	movx	a,@dptr
      003B25 FF               [12] 2367 	mov	r7,a
      003B26 90 13 8B         [24] 2368 	mov	dptr,#__mulint_PARM_2
      003B29 EE               [12] 2369 	mov	a,r6
      003B2A F0               [24] 2370 	movx	@dptr,a
      003B2B EF               [12] 2371 	mov	a,r7
      003B2C A3               [24] 2372 	inc	dptr
      003B2D F0               [24] 2373 	movx	@dptr,a
      003B2E 90 00 03         [24] 2374 	mov	dptr,#0x0003
      003B31 12 43 DA         [24] 2375 	lcall	__mulint
      003B34 AE 82            [24] 2376 	mov	r6,dpl
      003B36 AF 83            [24] 2377 	mov	r7,dph
      003B38 EE               [12] 2378 	mov	a,r6
      003B39 24 D6            [12] 2379 	add	a,#_buffer
      003B3B F5 82            [12] 2380 	mov	dpl,a
      003B3D EF               [12] 2381 	mov	a,r7
      003B3E 34 10            [12] 2382 	addc	a,#(_buffer >> 8)
      003B40 F5 83            [12] 2383 	mov	dph,a
      003B42 E0               [24] 2384 	movx	a,@dptr
      003B43 FB               [12] 2385 	mov	r3,a
      003B44 A3               [24] 2386 	inc	dptr
      003B45 E0               [24] 2387 	movx	a,@dptr
      003B46 FE               [12] 2388 	mov	r6,a
      003B47 A3               [24] 2389 	inc	dptr
      003B48 E0               [24] 2390 	movx	a,@dptr
      003B49 FF               [12] 2391 	mov	r7,a
      003B4A C0 03            [24] 2392 	push	ar3
      003B4C C0 06            [24] 2393 	push	ar6
      003B4E C0 07            [24] 2394 	push	ar7
      003B50 74 7F            [12] 2395 	mov	a,#___str_32
      003B52 C0 E0            [24] 2396 	push	acc
      003B54 74 51            [12] 2397 	mov	a,#(___str_32 >> 8)
      003B56 C0 E0            [24] 2398 	push	acc
      003B58 74 80            [12] 2399 	mov	a,#0x80
      003B5A C0 E0            [24] 2400 	push	acc
      003B5C 12 44 48         [24] 2401 	lcall	_printf
      003B5F E5 81            [12] 2402 	mov	a,sp
      003B61 24 FA            [12] 2403 	add	a,#0xfa
      003B63 F5 81            [12] 2404 	mov	sp,a
      003B65 D0 04            [24] 2405 	pop	ar4
      003B67 D0 05            [24] 2406 	pop	ar5
                                   2407 ;	main.c:222: printf("\n\rbuffer_end_add=%p",buffer[i]+buffer_size[i]-1);  //display required contents of buffer_n on heap
      003B69 90 0F A1         [24] 2408 	mov	dptr,#_i
      003B6C E0               [24] 2409 	movx	a,@dptr
      003B6D FE               [12] 2410 	mov	r6,a
      003B6E A3               [24] 2411 	inc	dptr
      003B6F E0               [24] 2412 	movx	a,@dptr
      003B70 FF               [12] 2413 	mov	r7,a
      003B71 90 13 8B         [24] 2414 	mov	dptr,#__mulint_PARM_2
      003B74 EE               [12] 2415 	mov	a,r6
      003B75 F0               [24] 2416 	movx	@dptr,a
      003B76 EF               [12] 2417 	mov	a,r7
      003B77 A3               [24] 2418 	inc	dptr
      003B78 F0               [24] 2419 	movx	@dptr,a
      003B79 90 00 03         [24] 2420 	mov	dptr,#0x0003
      003B7C C0 07            [24] 2421 	push	ar7
      003B7E C0 06            [24] 2422 	push	ar6
      003B80 C0 05            [24] 2423 	push	ar5
      003B82 C0 04            [24] 2424 	push	ar4
      003B84 12 43 DA         [24] 2425 	lcall	__mulint
      003B87 AA 82            [24] 2426 	mov	r2,dpl
      003B89 AB 83            [24] 2427 	mov	r3,dph
      003B8B D0 04            [24] 2428 	pop	ar4
      003B8D D0 05            [24] 2429 	pop	ar5
      003B8F D0 06            [24] 2430 	pop	ar6
      003B91 D0 07            [24] 2431 	pop	ar7
      003B93 EA               [12] 2432 	mov	a,r2
      003B94 24 D6            [12] 2433 	add	a,#_buffer
      003B96 F5 82            [12] 2434 	mov	dpl,a
      003B98 EB               [12] 2435 	mov	a,r3
      003B99 34 10            [12] 2436 	addc	a,#(_buffer >> 8)
      003B9B F5 83            [12] 2437 	mov	dph,a
      003B9D E0               [24] 2438 	movx	a,@dptr
      003B9E F9               [12] 2439 	mov	r1,a
      003B9F A3               [24] 2440 	inc	dptr
      003BA0 E0               [24] 2441 	movx	a,@dptr
      003BA1 FA               [12] 2442 	mov	r2,a
      003BA2 A3               [24] 2443 	inc	dptr
      003BA3 E0               [24] 2444 	movx	a,@dptr
      003BA4 FB               [12] 2445 	mov	r3,a
      003BA5 EE               [12] 2446 	mov	a,r6
      003BA6 2E               [12] 2447 	add	a,r6
      003BA7 FE               [12] 2448 	mov	r6,a
      003BA8 EF               [12] 2449 	mov	a,r7
      003BA9 33               [12] 2450 	rlc	a
      003BAA FF               [12] 2451 	mov	r7,a
      003BAB EE               [12] 2452 	mov	a,r6
      003BAC 24 A3            [12] 2453 	add	a,#_buffer_size
      003BAE F5 82            [12] 2454 	mov	dpl,a
      003BB0 EF               [12] 2455 	mov	a,r7
      003BB1 34 0F            [12] 2456 	addc	a,#(_buffer_size >> 8)
      003BB3 F5 83            [12] 2457 	mov	dph,a
      003BB5 E0               [24] 2458 	movx	a,@dptr
      003BB6 FE               [12] 2459 	mov	r6,a
      003BB7 A3               [24] 2460 	inc	dptr
      003BB8 E0               [24] 2461 	movx	a,@dptr
      003BB9 FF               [12] 2462 	mov	r7,a
      003BBA EE               [12] 2463 	mov	a,r6
      003BBB 29               [12] 2464 	add	a,r1
      003BBC F9               [12] 2465 	mov	r1,a
      003BBD EF               [12] 2466 	mov	a,r7
      003BBE 3A               [12] 2467 	addc	a,r2
      003BBF FA               [12] 2468 	mov	r2,a
      003BC0 19               [12] 2469 	dec	r1
      003BC1 B9 FF 01         [24] 2470 	cjne	r1,#0xff,00316$
      003BC4 1A               [12] 2471 	dec	r2
      003BC5                       2472 00316$:
      003BC5 C0 05            [24] 2473 	push	ar5
      003BC7 C0 04            [24] 2474 	push	ar4
      003BC9 C0 01            [24] 2475 	push	ar1
      003BCB C0 02            [24] 2476 	push	ar2
      003BCD C0 03            [24] 2477 	push	ar3
      003BCF 74 95            [12] 2478 	mov	a,#___str_33
      003BD1 C0 E0            [24] 2479 	push	acc
      003BD3 74 51            [12] 2480 	mov	a,#(___str_33 >> 8)
      003BD5 C0 E0            [24] 2481 	push	acc
      003BD7 74 80            [12] 2482 	mov	a,#0x80
      003BD9 C0 E0            [24] 2483 	push	acc
      003BDB 12 44 48         [24] 2484 	lcall	_printf
      003BDE E5 81            [12] 2485 	mov	a,sp
      003BE0 24 FA            [12] 2486 	add	a,#0xfa
      003BE2 F5 81            [12] 2487 	mov	sp,a
                                   2488 ;	main.c:223: printf_tiny("\n\rbuffer_free_Space=%d",buffer_free_Space);
      003BE4 90 12 9C         [24] 2489 	mov	dptr,#_buffer_free_Space
      003BE7 E0               [24] 2490 	movx	a,@dptr
      003BE8 C0 E0            [24] 2491 	push	acc
      003BEA A3               [24] 2492 	inc	dptr
      003BEB E0               [24] 2493 	movx	a,@dptr
      003BEC C0 E0            [24] 2494 	push	acc
      003BEE 74 A9            [12] 2495 	mov	a,#___str_34
      003BF0 C0 E0            [24] 2496 	push	acc
      003BF2 74 51            [12] 2497 	mov	a,#(___str_34 >> 8)
      003BF4 C0 E0            [24] 2498 	push	acc
      003BF6 12 41 2C         [24] 2499 	lcall	_printf_tiny
      003BF9 E5 81            [12] 2500 	mov	a,sp
      003BFB 24 FC            [12] 2501 	add	a,#0xfc
      003BFD F5 81            [12] 2502 	mov	sp,a
                                   2503 ;	main.c:224: printf_tiny("\n\rno_of_characters=%d\n\r",no_of_characters);
      003BFF 90 12 9E         [24] 2504 	mov	dptr,#_no_of_characters
      003C02 E0               [24] 2505 	movx	a,@dptr
      003C03 C0 E0            [24] 2506 	push	acc
      003C05 A3               [24] 2507 	inc	dptr
      003C06 E0               [24] 2508 	movx	a,@dptr
      003C07 C0 E0            [24] 2509 	push	acc
      003C09 74 C0            [12] 2510 	mov	a,#___str_35
      003C0B C0 E0            [24] 2511 	push	acc
      003C0D 74 51            [12] 2512 	mov	a,#(___str_35 >> 8)
      003C0F C0 E0            [24] 2513 	push	acc
      003C11 12 41 2C         [24] 2514 	lcall	_printf_tiny
      003C14 E5 81            [12] 2515 	mov	a,sp
      003C16 24 FC            [12] 2516 	add	a,#0xfc
      003C18 F5 81            [12] 2517 	mov	sp,a
      003C1A D0 04            [24] 2518 	pop	ar4
      003C1C D0 05            [24] 2519 	pop	ar5
      003C1E                       2520 00155$:
                                   2521 ;	main.c:210: for(i=2; i<=count_plus; i++)
      003C1E 90 0F A1         [24] 2522 	mov	dptr,#_i
      003C21 E0               [24] 2523 	movx	a,@dptr
      003C22 24 01            [12] 2524 	add	a,#0x01
      003C24 F0               [24] 2525 	movx	@dptr,a
      003C25 A3               [24] 2526 	inc	dptr
      003C26 E0               [24] 2527 	movx	a,@dptr
      003C27 34 00            [12] 2528 	addc	a,#0x00
      003C29 F0               [24] 2529 	movx	@dptr,a
      003C2A 02 3A 4D         [24] 2530 	ljmp	00154$
      003C2D                       2531 00130$:
                                   2532 ;	main.c:227: printf_tiny("\n\r");
      003C2D 74 89            [12] 2533 	mov	a,#___str_9
      003C2F C0 E0            [24] 2534 	push	acc
      003C31 74 4F            [12] 2535 	mov	a,#(___str_9 >> 8)
      003C33 C0 E0            [24] 2536 	push	acc
      003C35 12 41 2C         [24] 2537 	lcall	_printf_tiny
      003C38 15 81            [12] 2538 	dec	sp
      003C3A 15 81            [12] 2539 	dec	sp
                                   2540 ;	main.c:228: for (i=0; i<count2; i++)     //display all characters when ? is entered present in buffer_0
      003C3C 90 0F A1         [24] 2541 	mov	dptr,#_i
      003C3F E4               [12] 2542 	clr	a
      003C40 F0               [24] 2543 	movx	@dptr,a
      003C41 A3               [24] 2544 	inc	dptr
      003C42 F0               [24] 2545 	movx	@dptr,a
      003C43 90 12 A2         [24] 2546 	mov	dptr,#_function_count2_65536_48
      003C46 E0               [24] 2547 	movx	a,@dptr
      003C47 FE               [12] 2548 	mov	r6,a
      003C48 A3               [24] 2549 	inc	dptr
      003C49 E0               [24] 2550 	movx	a,@dptr
      003C4A FF               [12] 2551 	mov	r7,a
      003C4B                       2552 00157$:
      003C4B 90 0F A1         [24] 2553 	mov	dptr,#_i
      003C4E E0               [24] 2554 	movx	a,@dptr
      003C4F FC               [12] 2555 	mov	r4,a
      003C50 A3               [24] 2556 	inc	dptr
      003C51 E0               [24] 2557 	movx	a,@dptr
      003C52 FD               [12] 2558 	mov	r5,a
      003C53 C3               [12] 2559 	clr	c
      003C54 EC               [12] 2560 	mov	a,r4
      003C55 9E               [12] 2561 	subb	a,r6
      003C56 ED               [12] 2562 	mov	a,r5
      003C57 9F               [12] 2563 	subb	a,r7
      003C58 50 71            [24] 2564 	jnc	00133$
                                   2565 ;	main.c:230: if (i%16==0)
      003C5A EC               [12] 2566 	mov	a,r4
      003C5B 54 0F            [12] 2567 	anl	a,#0x0f
      003C5D 70 17            [24] 2568 	jnz	00132$
                                   2569 ;	main.c:232: printf_tiny("\n\r");
      003C5F C0 07            [24] 2570 	push	ar7
      003C61 C0 06            [24] 2571 	push	ar6
      003C63 74 89            [12] 2572 	mov	a,#___str_9
      003C65 C0 E0            [24] 2573 	push	acc
      003C67 74 4F            [12] 2574 	mov	a,#(___str_9 >> 8)
      003C69 C0 E0            [24] 2575 	push	acc
      003C6B 12 41 2C         [24] 2576 	lcall	_printf_tiny
      003C6E 15 81            [12] 2577 	dec	sp
      003C70 15 81            [12] 2578 	dec	sp
      003C72 D0 06            [24] 2579 	pop	ar6
      003C74 D0 07            [24] 2580 	pop	ar7
      003C76                       2581 00132$:
                                   2582 ;	main.c:234: printf("%c  ",buffer[0][i]);
      003C76 90 10 D6         [24] 2583 	mov	dptr,#_buffer
      003C79 E0               [24] 2584 	movx	a,@dptr
      003C7A FB               [12] 2585 	mov	r3,a
      003C7B A3               [24] 2586 	inc	dptr
      003C7C E0               [24] 2587 	movx	a,@dptr
      003C7D FC               [12] 2588 	mov	r4,a
      003C7E A3               [24] 2589 	inc	dptr
      003C7F E0               [24] 2590 	movx	a,@dptr
      003C80 FD               [12] 2591 	mov	r5,a
      003C81 90 0F A1         [24] 2592 	mov	dptr,#_i
      003C84 E0               [24] 2593 	movx	a,@dptr
      003C85 F9               [12] 2594 	mov	r1,a
      003C86 A3               [24] 2595 	inc	dptr
      003C87 E0               [24] 2596 	movx	a,@dptr
      003C88 FA               [12] 2597 	mov	r2,a
      003C89 E9               [12] 2598 	mov	a,r1
      003C8A 2B               [12] 2599 	add	a,r3
      003C8B FB               [12] 2600 	mov	r3,a
      003C8C EA               [12] 2601 	mov	a,r2
      003C8D 3C               [12] 2602 	addc	a,r4
      003C8E FC               [12] 2603 	mov	r4,a
      003C8F 8B 82            [24] 2604 	mov	dpl,r3
      003C91 8C 83            [24] 2605 	mov	dph,r4
      003C93 8D F0            [24] 2606 	mov	b,r5
      003C95 12 4E 6A         [24] 2607 	lcall	__gptrget
      003C98 FB               [12] 2608 	mov	r3,a
      003C99 7D 00            [12] 2609 	mov	r5,#0x00
      003C9B C0 07            [24] 2610 	push	ar7
      003C9D C0 06            [24] 2611 	push	ar6
      003C9F C0 03            [24] 2612 	push	ar3
      003CA1 C0 05            [24] 2613 	push	ar5
      003CA3 74 F9            [12] 2614 	mov	a,#___str_38
      003CA5 C0 E0            [24] 2615 	push	acc
      003CA7 74 51            [12] 2616 	mov	a,#(___str_38 >> 8)
      003CA9 C0 E0            [24] 2617 	push	acc
      003CAB 74 80            [12] 2618 	mov	a,#0x80
      003CAD C0 E0            [24] 2619 	push	acc
      003CAF 12 44 48         [24] 2620 	lcall	_printf
      003CB2 E5 81            [12] 2621 	mov	a,sp
      003CB4 24 FB            [12] 2622 	add	a,#0xfb
      003CB6 F5 81            [12] 2623 	mov	sp,a
      003CB8 D0 06            [24] 2624 	pop	ar6
      003CBA D0 07            [24] 2625 	pop	ar7
                                   2626 ;	main.c:228: for (i=0; i<count2; i++)     //display all characters when ? is entered present in buffer_0
      003CBC 90 0F A1         [24] 2627 	mov	dptr,#_i
      003CBF E0               [24] 2628 	movx	a,@dptr
      003CC0 24 01            [12] 2629 	add	a,#0x01
      003CC2 F0               [24] 2630 	movx	@dptr,a
      003CC3 A3               [24] 2631 	inc	dptr
      003CC4 E0               [24] 2632 	movx	a,@dptr
      003CC5 34 00            [12] 2633 	addc	a,#0x00
      003CC7 F0               [24] 2634 	movx	@dptr,a
      003CC8 02 3C 4B         [24] 2635 	ljmp	00157$
      003CCB                       2636 00133$:
                                   2637 ;	main.c:236: printf_tiny("\n\r");
      003CCB 74 89            [12] 2638 	mov	a,#___str_9
      003CCD C0 E0            [24] 2639 	push	acc
      003CCF 74 4F            [12] 2640 	mov	a,#(___str_9 >> 8)
      003CD1 C0 E0            [24] 2641 	push	acc
      003CD3 12 41 2C         [24] 2642 	lcall	_printf_tiny
      003CD6 15 81            [12] 2643 	dec	sp
      003CD8 15 81            [12] 2644 	dec	sp
                                   2645 ;	main.c:237: for (i=0; i<=count2; i++)      //   empty buffer_0 by making it zero
      003CDA 90 0F A1         [24] 2646 	mov	dptr,#_i
      003CDD E4               [12] 2647 	clr	a
      003CDE F0               [24] 2648 	movx	@dptr,a
      003CDF A3               [24] 2649 	inc	dptr
      003CE0 F0               [24] 2650 	movx	@dptr,a
      003CE1 90 12 A2         [24] 2651 	mov	dptr,#_function_count2_65536_48
      003CE4 E0               [24] 2652 	movx	a,@dptr
      003CE5 FE               [12] 2653 	mov	r6,a
      003CE6 A3               [24] 2654 	inc	dptr
      003CE7 E0               [24] 2655 	movx	a,@dptr
      003CE8 FF               [12] 2656 	mov	r7,a
      003CE9                       2657 00159$:
                                   2658 ;	main.c:239: char *temp = buffer[0];
      003CE9 90 10 D6         [24] 2659 	mov	dptr,#_buffer
      003CEC E0               [24] 2660 	movx	a,@dptr
      003CED FB               [12] 2661 	mov	r3,a
      003CEE A3               [24] 2662 	inc	dptr
      003CEF E0               [24] 2663 	movx	a,@dptr
      003CF0 FC               [12] 2664 	mov	r4,a
      003CF1 A3               [24] 2665 	inc	dptr
      003CF2 E0               [24] 2666 	movx	a,@dptr
      003CF3 FD               [12] 2667 	mov	r5,a
                                   2668 ;	main.c:240: temp[i]=0;
      003CF4 90 0F A1         [24] 2669 	mov	dptr,#_i
      003CF7 E0               [24] 2670 	movx	a,@dptr
      003CF8 F9               [12] 2671 	mov	r1,a
      003CF9 A3               [24] 2672 	inc	dptr
      003CFA E0               [24] 2673 	movx	a,@dptr
      003CFB FA               [12] 2674 	mov	r2,a
      003CFC E9               [12] 2675 	mov	a,r1
      003CFD 2B               [12] 2676 	add	a,r3
      003CFE FB               [12] 2677 	mov	r3,a
      003CFF EA               [12] 2678 	mov	a,r2
      003D00 3C               [12] 2679 	addc	a,r4
      003D01 FC               [12] 2680 	mov	r4,a
      003D02 8B 82            [24] 2681 	mov	dpl,r3
      003D04 8C 83            [24] 2682 	mov	dph,r4
      003D06 8D F0            [24] 2683 	mov	b,r5
      003D08 E4               [12] 2684 	clr	a
      003D09 12 41 11         [24] 2685 	lcall	__gptrput
                                   2686 ;	main.c:237: for (i=0; i<=count2; i++)      //   empty buffer_0 by making it zero
      003D0C 90 0F A1         [24] 2687 	mov	dptr,#_i
      003D0F E0               [24] 2688 	movx	a,@dptr
      003D10 24 01            [12] 2689 	add	a,#0x01
      003D12 F0               [24] 2690 	movx	@dptr,a
      003D13 A3               [24] 2691 	inc	dptr
      003D14 E0               [24] 2692 	movx	a,@dptr
      003D15 34 00            [12] 2693 	addc	a,#0x00
      003D17 F0               [24] 2694 	movx	@dptr,a
      003D18 90 0F A1         [24] 2695 	mov	dptr,#_i
      003D1B E0               [24] 2696 	movx	a,@dptr
      003D1C FC               [12] 2697 	mov	r4,a
      003D1D A3               [24] 2698 	inc	dptr
      003D1E E0               [24] 2699 	movx	a,@dptr
      003D1F FD               [12] 2700 	mov	r5,a
      003D20 C3               [12] 2701 	clr	c
      003D21 EE               [12] 2702 	mov	a,r6
      003D22 9C               [12] 2703 	subb	a,r4
      003D23 EF               [12] 2704 	mov	a,r7
      003D24 9D               [12] 2705 	subb	a,r5
      003D25 50 C2            [24] 2706 	jnc	00159$
                                   2707 ;	main.c:242: count1=0;
      003D27 90 12 A0         [24] 2708 	mov	dptr,#_function_count1_65536_48
      003D2A E4               [12] 2709 	clr	a
      003D2B F0               [24] 2710 	movx	@dptr,a
      003D2C A3               [24] 2711 	inc	dptr
      003D2D F0               [24] 2712 	movx	@dptr,a
                                   2713 ;	main.c:243: count2=0;
      003D2E 90 12 A2         [24] 2714 	mov	dptr,#_function_count2_65536_48
      003D31 F0               [24] 2715 	movx	@dptr,a
      003D32 A3               [24] 2716 	inc	dptr
      003D33 F0               [24] 2717 	movx	@dptr,a
                                   2718 ;	main.c:244: break;
      003D34 02 32 64         [24] 2719 	ljmp	00147$
                                   2720 ;	main.c:247: default:                               //go te next line
      003D37                       2721 00135$:
                                   2722 ;	main.c:249: printf_tiny("\n\r");
      003D37 74 89            [12] 2723 	mov	a,#___str_9
      003D39 C0 E0            [24] 2724 	push	acc
      003D3B 74 4F            [12] 2725 	mov	a,#(___str_9 >> 8)
      003D3D C0 E0            [24] 2726 	push	acc
      003D3F 12 41 2C         [24] 2727 	lcall	_printf_tiny
      003D42 15 81            [12] 2728 	dec	sp
      003D44 15 81            [12] 2729 	dec	sp
                                   2730 ;	main.c:253: }
                                   2731 ;	main.c:258: }
      003D46 02 32 64         [24] 2732 	ljmp	00147$
                                   2733 ;------------------------------------------------------------
                                   2734 ;Allocation info for local variables in function 'getnumber'
                                   2735 ;------------------------------------------------------------
                                   2736 ;number                    Allocated with name '_getnumber_number_65536_80'
                                   2737 ;z                         Allocated with name '_getnumber_z_65536_80'
                                   2738 ;------------------------------------------------------------
                                   2739 ;	main.c:260: int getnumber()                                     //function to convert string into integer
                                   2740 ;	-----------------------------------------
                                   2741 ;	 function getnumber
                                   2742 ;	-----------------------------------------
      003D49                       2743 _getnumber:
                                   2744 ;	main.c:264: gets(number);
      003D49 90 12 A4         [24] 2745 	mov	dptr,#_getnumber_number_65536_80
      003D4C 75 F0 00         [24] 2746 	mov	b,#0x00
      003D4F 12 40 27         [24] 2747 	lcall	_gets
                                   2748 ;	main.c:265: z = atoi(number);                               //take string input through gets and convert into integer through atio
      003D52 90 12 A4         [24] 2749 	mov	dptr,#_getnumber_number_65536_80
      003D55 75 F0 00         [24] 2750 	mov	b,#0x00
      003D58 12 3F 07         [24] 2751 	lcall	_atoi
      003D5B AE 82            [24] 2752 	mov	r6,dpl
      003D5D AF 83            [24] 2753 	mov	r7,dph
                                   2754 ;	main.c:266: printf ("The value entered is %d.\n\r",z);
      003D5F C0 07            [24] 2755 	push	ar7
      003D61 C0 06            [24] 2756 	push	ar6
      003D63 C0 06            [24] 2757 	push	ar6
      003D65 C0 07            [24] 2758 	push	ar7
      003D67 74 FE            [12] 2759 	mov	a,#___str_39
      003D69 C0 E0            [24] 2760 	push	acc
      003D6B 74 51            [12] 2761 	mov	a,#(___str_39 >> 8)
      003D6D C0 E0            [24] 2762 	push	acc
      003D6F 74 80            [12] 2763 	mov	a,#0x80
      003D71 C0 E0            [24] 2764 	push	acc
      003D73 12 44 48         [24] 2765 	lcall	_printf
      003D76 E5 81            [12] 2766 	mov	a,sp
      003D78 24 FB            [12] 2767 	add	a,#0xfb
      003D7A F5 81            [12] 2768 	mov	sp,a
      003D7C D0 06            [24] 2769 	pop	ar6
      003D7E D0 07            [24] 2770 	pop	ar7
                                   2771 ;	main.c:267: return (z);
      003D80 8E 82            [24] 2772 	mov	dpl,r6
      003D82 8F 83            [24] 2773 	mov	dph,r7
                                   2774 ;	main.c:268: }
      003D84 22               [24] 2775 	ret
                                   2776 ;------------------------------------------------------------
                                   2777 ;Allocation info for local variables in function 'putchar'
                                   2778 ;------------------------------------------------------------
                                   2779 ;c                         Allocated with name '_putchar_c_65536_81'
                                   2780 ;------------------------------------------------------------
                                   2781 ;	main.c:269: int putchar (int c)
                                   2782 ;	-----------------------------------------
                                   2783 ;	 function putchar
                                   2784 ;	-----------------------------------------
      003D85                       2785 _putchar:
      003D85 AF 83            [24] 2786 	mov	r7,dph
      003D87 E5 82            [12] 2787 	mov	a,dpl
      003D89 90 13 6C         [24] 2788 	mov	dptr,#_putchar_c_65536_81
      003D8C F0               [24] 2789 	movx	@dptr,a
      003D8D EF               [12] 2790 	mov	a,r7
      003D8E A3               [24] 2791 	inc	dptr
      003D8F F0               [24] 2792 	movx	@dptr,a
                                   2793 ;	main.c:271: while (!TI);				// compare asm code generated for these three lines
      003D90                       2794 00101$:
      003D90 30 99 FD         [24] 2795 	jnb	_TI,00101$
                                   2796 ;	main.c:273: SBUF = c;  	// load serial port with transmit value
      003D93 90 13 6C         [24] 2797 	mov	dptr,#_putchar_c_65536_81
      003D96 E0               [24] 2798 	movx	a,@dptr
      003D97 FE               [12] 2799 	mov	r6,a
      003D98 A3               [24] 2800 	inc	dptr
      003D99 E0               [24] 2801 	movx	a,@dptr
      003D9A 8E 99            [24] 2802 	mov	_SBUF,r6
                                   2803 ;	main.c:274: TI = 0;  	// clear TI flag
                                   2804 ;	assignBit
      003D9C C2 99            [12] 2805 	clr	_TI
                                   2806 ;	main.c:275: return 0;
      003D9E 90 00 00         [24] 2807 	mov	dptr,#0x0000
                                   2808 ;	main.c:276: }
      003DA1 22               [24] 2809 	ret
                                   2810 ;------------------------------------------------------------
                                   2811 ;Allocation info for local variables in function 'getchar'
                                   2812 ;------------------------------------------------------------
                                   2813 ;	main.c:278: int getchar ()
                                   2814 ;	-----------------------------------------
                                   2815 ;	 function getchar
                                   2816 ;	-----------------------------------------
      003DA2                       2817 _getchar:
                                   2818 ;	main.c:280: while (!RI);                // compare asm code generated for these three lines
      003DA2                       2819 00101$:
                                   2820 ;	main.c:282: RI = 0;			// clear RI flag
                                   2821 ;	assignBit
      003DA2 10 98 02         [24] 2822 	jbc	_RI,00114$
      003DA5 80 FB            [24] 2823 	sjmp	00101$
      003DA7                       2824 00114$:
                                   2825 ;	main.c:283: return SBUF;  	// return character from SBUF
      003DA7 AE 99            [24] 2826 	mov	r6,_SBUF
      003DA9 7F 00            [12] 2827 	mov	r7,#0x00
      003DAB 8E 82            [24] 2828 	mov	dpl,r6
      003DAD 8F 83            [24] 2829 	mov	dph,r7
                                   2830 ;	main.c:284: }
      003DAF 22               [24] 2831 	ret
                                   2832 	.area CSEG    (CODE)
                                   2833 	.area CONST   (CODE)
      004E8A                       2834 ___sdcc_heap_size:
      004E8A A0 0F                 2835 	.byte #0xa0, #0x0f	; 4000
                                   2836 	.area CONST   (CODE)
      004E8C                       2837 ___str_0:
      004E8C 53 70 65 63 69 66 79  2838 	.ascii "Specify the buffer size"
             20 74 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65
      004EA3 0A                    2839 	.db 0x0a
      004EA4 0D                    2840 	.db 0x0d
      004EA5 00                    2841 	.db 0x00
                                   2842 	.area CSEG    (CODE)
                                   2843 	.area CONST   (CODE)
      004EA6                       2844 ___str_1:
      004EA6 49 6E 76 61 6C 69 64  2845 	.ascii "Invalid buffer size"
             20 62 75 66 66 65 72
             20 73 69 7A 65
      004EB9 0A                    2846 	.db 0x0a
      004EBA 0D                    2847 	.db 0x0d
      004EBB 00                    2848 	.db 0x00
                                   2849 	.area CSEG    (CODE)
                                   2850 	.area CONST   (CODE)
      004EBC                       2851 ___str_2:
      004EBC 45 6E 74 65 72 20 61  2852 	.ascii "Enter a new buffer size"
             20 6E 65 77 20 62 75
             66 66 65 72 20 73 69
             7A 65
      004ED3 0A                    2853 	.db 0x0a
      004ED4 0D                    2854 	.db 0x0d
      004ED5 00                    2855 	.db 0x00
                                   2856 	.area CSEG    (CODE)
                                   2857 	.area CONST   (CODE)
      004ED6                       2858 ___str_3:
      004ED6 41 64 64 72 65 73 73  2859 	.ascii "Address of buffer_0=%p"
             20 6F 66 20 62 75 66
             66 65 72 5F 30 3D 25
             70
      004EEC 0A                    2860 	.db 0x0a
      004EED 0D                    2861 	.db 0x0d
      004EEE 00                    2862 	.db 0x00
                                   2863 	.area CSEG    (CODE)
                                   2864 	.area CONST   (CODE)
      004EEF                       2865 ___str_4:
      004EEF 41 64 64 72 65 73 73  2866 	.ascii "Address of buffer_1=%p"
             20 6F 66 20 62 75 66
             66 65 72 5F 31 3D 25
             70
      004F05 0A                    2867 	.db 0x0a
      004F06 0D                    2868 	.db 0x0d
      004F07 00                    2869 	.db 0x00
                                   2870 	.area CSEG    (CODE)
                                   2871 	.area CONST   (CODE)
      004F08                       2872 ___str_5:
      004F08 45 72 72 6F 72 2E 20  2873 	.ascii "Error. Not enough space available for both buffers"
             4E 6F 74 20 65 6E 6F
             75 67 68 20 73 70 61
             63 65 20 61 76 61 69
             6C 61 62 6C 65 20 66
             6F 72 20 62 6F 74 68
             20 62 75 66 66 65 72
             73
      004F3A 0A                    2874 	.db 0x0a
      004F3B 0D                    2875 	.db 0x0d
      004F3C 00                    2876 	.db 0x00
                                   2877 	.area CSEG    (CODE)
                                   2878 	.area CONST   (CODE)
      004F3D                       2879 ___str_6:
      004F3D 46 72 65 65 20 62 6F  2880 	.ascii "Free both buffers"
             74 68 20 62 75 66 66
             65 72 73
      004F4E 0A                    2881 	.db 0x0a
      004F4F 0D                    2882 	.db 0x0d
      004F50 00                    2883 	.db 0x00
                                   2884 	.area CSEG    (CODE)
                                   2885 	.area CONST   (CODE)
      004F51                       2886 ___str_7:
      004F51 50 72 69 6E 74 20 61  2887 	.ascii "Print a smaller buffer size"
             20 73 6D 61 6C 6C 65
             72 20 62 75 66 66 65
             72 20 73 69 7A 65
      004F6C 0A                    2888 	.db 0x0a
      004F6D 0D                    2889 	.db 0x0d
      004F6E 00                    2890 	.db 0x00
                                   2891 	.area CSEG    (CODE)
                                   2892 	.area CONST   (CODE)
      004F6F                       2893 ___str_8:
      004F6F 0A                    2894 	.db 0x0a
      004F70 0A                    2895 	.db 0x0a
      004F71 0D                    2896 	.db 0x0d
      004F72 65 6E 74 65 72 20 74  2897 	.ascii "enter the characters"
             68 65 20 63 68 61 72
             61 63 74 65 72 73
      004F86 0A                    2898 	.db 0x0a
      004F87 0D                    2899 	.db 0x0d
      004F88 00                    2900 	.db 0x00
                                   2901 	.area CSEG    (CODE)
                                   2902 	.area CONST   (CODE)
      004F89                       2903 ___str_9:
      004F89 0A                    2904 	.db 0x0a
      004F8A 0D                    2905 	.db 0x0d
      004F8B 00                    2906 	.db 0x00
                                   2907 	.area CSEG    (CODE)
                                   2908 	.area CONST   (CODE)
      004F8C                       2909 ___str_10:
      004F8C 0A                    2910 	.db 0x0a
      004F8D 0D                    2911 	.db 0x0d
      004F8E 61 73 63 69 69 20 76  2912 	.ascii "ascii value=%d"
             61 6C 75 65 3D 25 64
      004F9C 0A                    2913 	.db 0x0a
      004F9D 0D                    2914 	.db 0x0d
      004F9E 00                    2915 	.db 0x00
                                   2916 	.area CSEG    (CODE)
                                   2917 	.area CONST   (CODE)
      004F9F                       2918 ___str_11:
      004F9F 42 75 66 66 65 72 20  2919 	.ascii "Buffer is full"
             69 73 20 66 75 6C 6C
      004FAD 0A                    2920 	.db 0x0a
      004FAE 0D                    2921 	.db 0x0d
      004FAF 00                    2922 	.db 0x00
                                   2923 	.area CSEG    (CODE)
                                   2924 	.area CONST   (CODE)
      004FB0                       2925 ___str_12:
      004FB0 61 64 64 20 62 75 66  2926 	.ascii "add buffer_%d"
             66 65 72 5F 25 64
      004FBD 00                    2927 	.db 0x00
                                   2928 	.area CSEG    (CODE)
                                   2929 	.area CONST   (CODE)
      004FBE                       2930 ___str_13:
      004FBE 0A                    2931 	.db 0x0a
      004FBF 0D                    2932 	.db 0x0d
      004FC0 62 75 66 66 65 72 5F  2933 	.ascii "buffer_size="
             73 69 7A 65 3D
      004FCC 00                    2934 	.db 0x00
                                   2935 	.area CSEG    (CODE)
                                   2936 	.area CONST   (CODE)
      004FCD                       2937 ___str_14:
      004FCD 0A                    2938 	.db 0x0a
      004FCE 0D                    2939 	.db 0x0d
      004FCF 69 6E 76 61 6C 69 64  2940 	.ascii "invalid size"
             20 73 69 7A 65
      004FDB 00                    2941 	.db 0x00
                                   2942 	.area CSEG    (CODE)
                                   2943 	.area CONST   (CODE)
      004FDC                       2944 ___str_15:
      004FDC 0A                    2945 	.db 0x0a
      004FDD 0D                    2946 	.db 0x0d
      004FDE 76 61 6C 69 64 20 62  2947 	.ascii "valid buffer_size="
             75 66 66 65 72 5F 73
             69 7A 65 3D
      004FF0 00                    2948 	.db 0x00
                                   2949 	.area CSEG    (CODE)
                                   2950 	.area CONST   (CODE)
      004FF1                       2951 ___str_16:
      004FF1 0A                    2952 	.db 0x0a
      004FF2 0D                    2953 	.db 0x0d
      004FF3 61 64 64 72 65 73 73  2954 	.ascii "address of new buffer is=%p"
             20 6F 66 20 6E 65 77
             20 62 75 66 66 65 72
             20 69 73 3D 25 70
      00500E 0A                    2955 	.db 0x0a
      00500F 0D                    2956 	.db 0x0d
      005010 00                    2957 	.db 0x00
                                   2958 	.area CSEG    (CODE)
                                   2959 	.area CONST   (CODE)
      005011                       2960 ___str_17:
      005011 0A                    2961 	.db 0x0a
      005012 0D                    2962 	.db 0x0d
      005013 4E 6F 20 73 70 61 63  2963 	.ascii "No space for addition of more buffers to the heap"
             65 20 66 6F 72 20 61
             64 64 69 74 69 6F 6E
             20 6F 66 20 6D 6F 72
             65 20 62 75 66 66 65
             72 73 20 74 6F 20 74
             68 65 20 68 65 61 70
      005044 0A                    2964 	.db 0x0a
      005045 0D                    2965 	.db 0x0d
      005046 00                    2966 	.db 0x00
                                   2967 	.area CSEG    (CODE)
                                   2968 	.area CONST   (CODE)
      005047                       2969 ___str_18:
      005047 0A                    2970 	.db 0x0a
      005048 0D                    2971 	.db 0x0d
      005049 73 65 6C 65 63 74 20  2972 	.ascii "select a valid buffer= "
             61 20 76 61 6C 69 64
             20 62 75 66 66 65 72
             3D 20
      005060 00                    2973 	.db 0x00
                                   2974 	.area CSEG    (CODE)
                                   2975 	.area CONST   (CODE)
      005061                       2976 ___str_19:
      005061 0A                    2977 	.db 0x0a
      005062 0D                    2978 	.db 0x0d
      005063 42 75 66 66 65 72 20  2979 	.ascii "Buffer does not exist"
             64 6F 65 73 20 6E 6F
             74 20 65 78 69 73 74
      005078 0A                    2980 	.db 0x0a
      005079 0D                    2981 	.db 0x0d
      00507A 00                    2982 	.db 0x00
                                   2983 	.area CSEG    (CODE)
                                   2984 	.area CONST   (CODE)
      00507B                       2985 ___str_20:
      00507B 0A                    2986 	.db 0x0a
      00507C 0D                    2987 	.db 0x0d
      00507D 62 75 66 66 65 72 25  2988 	.ascii "buffer%d freed"
             64 20 66 72 65 65 64
      00508B 0A                    2989 	.db 0x0a
      00508C 0D                    2990 	.db 0x0d
      00508D 00                    2991 	.db 0x00
                                   2992 	.area CSEG    (CODE)
                                   2993 	.area CONST   (CODE)
      00508E                       2994 ___str_21:
      00508E 42 75 66 66 65 72 5F  2995 	.ascii "Buffer_0 cannot be deleted"
             30 20 63 61 6E 6E 6F
             74 20 62 65 20 64 65
             6C 65 74 65 64
      0050A8 00                    2996 	.db 0x00
                                   2997 	.area CSEG    (CODE)
                                   2998 	.area CONST   (CODE)
      0050A9                       2999 ___str_22:
      0050A9 25 70                 3000 	.ascii "%p"
      0050AB 00                    3001 	.db 0x00
                                   3002 	.area CSEG    (CODE)
                                   3003 	.area CONST   (CODE)
      0050AC                       3004 ___str_23:
      0050AC 20 25 78              3005 	.ascii " %x"
      0050AF 00                    3006 	.db 0x00
                                   3007 	.area CSEG    (CODE)
                                   3008 	.area CONST   (CODE)
      0050B0                       3009 ___str_24:
      0050B0 0A                    3010 	.db 0x0a
      0050B1 0D                    3011 	.db 0x0d
      0050B2 66 72 65 65 20 61 6C  3012 	.ascii "free all buffers and allocate new buffer size "
             6C 20 62 75 66 66 65
             72 73 20 61 6E 64 20
             61 6C 6C 6F 63 61 74
             65 20 6E 65 77 20 62
             75 66 66 65 72 20 73
             69 7A 65 20
      0050E0 00                    3013 	.db 0x00
                                   3014 	.area CSEG    (CODE)
                                   3015 	.area CONST   (CODE)
      0050E1                       3016 ___str_25:
      0050E1 0A                    3017 	.db 0x0a
      0050E2 0D                    3018 	.db 0x0d
      0050E3 74 61 6B 65 20 6E 65  3019 	.ascii "take new buffer size"
             77 20 62 75 66 66 65
             72 20 73 69 7A 65
      0050F7 0A                    3020 	.db 0x0a
      0050F8 0D                    3021 	.db 0x0d
      0050F9 00                    3022 	.db 0x00
                                   3023 	.area CSEG    (CODE)
                                   3024 	.area CONST   (CODE)
      0050FA                       3025 ___str_26:
      0050FA 61 64 64 72 65 73 73  3026 	.ascii "address of buffer_0=%p"
             20 6F 66 20 62 75 66
             66 65 72 5F 30 3D 25
             70
      005110 0A                    3027 	.db 0x0a
      005111 0D                    3028 	.db 0x0d
      005112 00                    3029 	.db 0x00
                                   3030 	.area CSEG    (CODE)
                                   3031 	.area CONST   (CODE)
      005113                       3032 ___str_27:
      005113 61 64 64 72 65 73 73  3033 	.ascii "address of buffer_1=%p"
             20 6F 66 20 62 75 66
             66 65 72 5F 31 3D 25
             70
      005129 0A                    3034 	.db 0x0a
      00512A 0D                    3035 	.db 0x0d
      00512B 00                    3036 	.db 0x00
                                   3037 	.area CSEG    (CODE)
                                   3038 	.area CONST   (CODE)
      00512C                       3039 ___str_28:
      00512C 0A                    3040 	.db 0x0a
      00512D 0D                    3041 	.db 0x0d
      00512E 62 75 66 66 65 72 5F  3042 	.ascii "buffer_%d"
             25 64
      005137 00                    3043 	.db 0x00
                                   3044 	.area CSEG    (CODE)
                                   3045 	.area CONST   (CODE)
      005138                       3046 ___str_29:
      005138 0A                    3047 	.db 0x0a
      005139 0D                    3048 	.db 0x0d
      00513A 62 75 66 66 65 72 5F  3049 	.ascii "buffer_number=%d"
             6E 75 6D 62 65 72 3D
             25 64
      00514A 00                    3050 	.db 0x00
                                   3051 	.area CSEG    (CODE)
                                   3052 	.area CONST   (CODE)
      00514B                       3053 ___str_30:
      00514B 0A                    3054 	.db 0x0a
      00514C 0D                    3055 	.db 0x0d
      00514D 62 75 66 66 65 72 5F  3056 	.ascii "buffer_allocated_size=%d"
             61 6C 6C 6F 63 61 74
             65 64 5F 73 69 7A 65
             3D 25 64
      005165 00                    3057 	.db 0x00
                                   3058 	.area CSEG    (CODE)
                                   3059 	.area CONST   (CODE)
      005166                       3060 ___str_31:
      005166 0A                    3061 	.db 0x0a
      005167 0D                    3062 	.db 0x0d
      005168 62 75 66 66 65 72 5F  3063 	.ascii "buffer_space_filled=%d"
             73 70 61 63 65 5F 66
             69 6C 6C 65 64 3D 25
             64
      00517E 00                    3064 	.db 0x00
                                   3065 	.area CSEG    (CODE)
                                   3066 	.area CONST   (CODE)
      00517F                       3067 ___str_32:
      00517F 0A                    3068 	.db 0x0a
      005180 0D                    3069 	.db 0x0d
      005181 62 75 66 66 65 72 5F  3070 	.ascii "buffer_start_add=%p"
             73 74 61 72 74 5F 61
             64 64 3D 25 70
      005194 00                    3071 	.db 0x00
                                   3072 	.area CSEG    (CODE)
                                   3073 	.area CONST   (CODE)
      005195                       3074 ___str_33:
      005195 0A                    3075 	.db 0x0a
      005196 0D                    3076 	.db 0x0d
      005197 62 75 66 66 65 72 5F  3077 	.ascii "buffer_end_add=%p"
             65 6E 64 5F 61 64 64
             3D 25 70
      0051A8 00                    3078 	.db 0x00
                                   3079 	.area CSEG    (CODE)
                                   3080 	.area CONST   (CODE)
      0051A9                       3081 ___str_34:
      0051A9 0A                    3082 	.db 0x0a
      0051AA 0D                    3083 	.db 0x0d
      0051AB 62 75 66 66 65 72 5F  3084 	.ascii "buffer_free_Space=%d"
             66 72 65 65 5F 53 70
             61 63 65 3D 25 64
      0051BF 00                    3085 	.db 0x00
                                   3086 	.area CSEG    (CODE)
                                   3087 	.area CONST   (CODE)
      0051C0                       3088 ___str_35:
      0051C0 0A                    3089 	.db 0x0a
      0051C1 0D                    3090 	.db 0x0d
      0051C2 6E 6F 5F 6F 66 5F 63  3091 	.ascii "no_of_characters=%d"
             68 61 72 61 63 74 65
             72 73 3D 25 64
      0051D5 0A                    3092 	.db 0x0a
      0051D6 0D                    3093 	.db 0x0d
      0051D7 00                    3094 	.db 0x00
                                   3095 	.area CSEG    (CODE)
                                   3096 	.area CONST   (CODE)
      0051D8                       3097 ___str_36:
      0051D8 0A                    3098 	.db 0x0a
      0051D9 0A                    3099 	.db 0x0a
      0051DA 0D                    3100 	.db 0x0d
      0051DB 62 75 66 66 65 72 5F  3101 	.ascii "buffer_%d"
             25 64
      0051E4 00                    3102 	.db 0x00
                                   3103 	.area CSEG    (CODE)
                                   3104 	.area CONST   (CODE)
      0051E5                       3105 ___str_37:
      0051E5 0A                    3106 	.db 0x0a
      0051E6 0A                    3107 	.db 0x0a
      0051E7 0D                    3108 	.db 0x0d
      0051E8 62 75 66 66 65 72 5F  3109 	.ascii "buffer_number=%d"
             6E 75 6D 62 65 72 3D
             25 64
      0051F8 00                    3110 	.db 0x00
                                   3111 	.area CSEG    (CODE)
                                   3112 	.area CONST   (CODE)
      0051F9                       3113 ___str_38:
      0051F9 25 63 20 20           3114 	.ascii "%c  "
      0051FD 00                    3115 	.db 0x00
                                   3116 	.area CSEG    (CODE)
                                   3117 	.area CONST   (CODE)
      0051FE                       3118 ___str_39:
      0051FE 54 68 65 20 76 61 6C  3119 	.ascii "The value entered is %d."
             75 65 20 65 6E 74 65
             72 65 64 20 69 73 20
             25 64 2E
      005216 0A                    3120 	.db 0x0a
      005217 0D                    3121 	.db 0x0d
      005218 00                    3122 	.db 0x00
                                   3123 	.area CSEG    (CODE)
                                   3124 	.area XINIT   (CODE)
      005224                       3125 __xinit__buffer0:
      005224 00 00                 3126 	.byte #0x00, #0x00	; 0
      005226                       3127 __xinit__buffer1:
      005226 01 00                 3128 	.byte #0x01, #0x00	; 1
                                   3129 	.area CABS    (ABS,CODE)
