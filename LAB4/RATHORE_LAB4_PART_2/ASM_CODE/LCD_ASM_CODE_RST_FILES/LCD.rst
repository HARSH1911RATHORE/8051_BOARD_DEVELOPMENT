                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LCD
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _P5_7
                                     87 	.globl _P5_6
                                     88 	.globl _P5_5
                                     89 	.globl _P5_4
                                     90 	.globl _P5_3
                                     91 	.globl _P5_2
                                     92 	.globl _P5_1
                                     93 	.globl _P5_0
                                     94 	.globl _P4_7
                                     95 	.globl _P4_6
                                     96 	.globl _P4_5
                                     97 	.globl _P4_4
                                     98 	.globl _P4_3
                                     99 	.globl _P4_2
                                    100 	.globl _P4_1
                                    101 	.globl _P4_0
                                    102 	.globl _PX0L
                                    103 	.globl _PT0L
                                    104 	.globl _PX1L
                                    105 	.globl _PT1L
                                    106 	.globl _PSL
                                    107 	.globl _PT2L
                                    108 	.globl _PPCL
                                    109 	.globl _EC
                                    110 	.globl _CCF0
                                    111 	.globl _CCF1
                                    112 	.globl _CCF2
                                    113 	.globl _CCF3
                                    114 	.globl _CCF4
                                    115 	.globl _CR
                                    116 	.globl _CF
                                    117 	.globl _TF2
                                    118 	.globl _EXF2
                                    119 	.globl _RCLK
                                    120 	.globl _TCLK
                                    121 	.globl _EXEN2
                                    122 	.globl _TR2
                                    123 	.globl _C_T2
                                    124 	.globl _CP_RL2
                                    125 	.globl _T2CON_7
                                    126 	.globl _T2CON_6
                                    127 	.globl _T2CON_5
                                    128 	.globl _T2CON_4
                                    129 	.globl _T2CON_3
                                    130 	.globl _T2CON_2
                                    131 	.globl _T2CON_1
                                    132 	.globl _T2CON_0
                                    133 	.globl _PT2
                                    134 	.globl _ET2
                                    135 	.globl _B
                                    136 	.globl _ACC
                                    137 	.globl _PSW
                                    138 	.globl _IP
                                    139 	.globl _P3
                                    140 	.globl _IE
                                    141 	.globl _P2
                                    142 	.globl _SBUF
                                    143 	.globl _SCON
                                    144 	.globl _P1
                                    145 	.globl _TH1
                                    146 	.globl _TH0
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TMOD
                                    150 	.globl _TCON
                                    151 	.globl _PCON
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _SP
                                    155 	.globl _P0
                                    156 	.globl _EECON
                                    157 	.globl _KBF
                                    158 	.globl _KBE
                                    159 	.globl _KBLS
                                    160 	.globl _BRL
                                    161 	.globl _BDRCON
                                    162 	.globl _T2MOD
                                    163 	.globl _SPDAT
                                    164 	.globl _SPSTA
                                    165 	.globl _SPCON
                                    166 	.globl _SADEN
                                    167 	.globl _SADDR
                                    168 	.globl _WDTPRG
                                    169 	.globl _WDTRST
                                    170 	.globl _P5
                                    171 	.globl _P4
                                    172 	.globl _IPH1
                                    173 	.globl _IPL1
                                    174 	.globl _IPH0
                                    175 	.globl _IPL0
                                    176 	.globl _IEN1
                                    177 	.globl _IEN0
                                    178 	.globl _CMOD
                                    179 	.globl _CL
                                    180 	.globl _CH
                                    181 	.globl _CCON
                                    182 	.globl _CCAPM4
                                    183 	.globl _CCAPM3
                                    184 	.globl _CCAPM2
                                    185 	.globl _CCAPM1
                                    186 	.globl _CCAPM0
                                    187 	.globl _CCAP4L
                                    188 	.globl _CCAP3L
                                    189 	.globl _CCAP2L
                                    190 	.globl _CCAP1L
                                    191 	.globl _CCAP0L
                                    192 	.globl _CCAP4H
                                    193 	.globl _CCAP3H
                                    194 	.globl _CCAP2H
                                    195 	.globl _CCAP1H
                                    196 	.globl _CCAP0H
                                    197 	.globl _CKCON1
                                    198 	.globl _CKCON0
                                    199 	.globl _CKRL
                                    200 	.globl _AUXR1
                                    201 	.globl _AUXR
                                    202 	.globl _TH2
                                    203 	.globl _TL2
                                    204 	.globl _RCAP2H
                                    205 	.globl _RCAP2L
                                    206 	.globl _T2CON
                                    207 	.globl _column
                                    208 	.globl _row
                                    209 	.globl _count
                                    210 	.globl _input
                                    211 	.globl _address1
                                    212 	.globl _string
                                    213 	.globl _column2
                                    214 	.globl _row2
                                    215 	.globl _ch
                                    216 	.globl _lcdgotoxy_PARM_2
                                    217 	.globl _data_register_read
                                    218 	.globl _busy_flag_read
                                    219 	.globl _data_register_write
                                    220 	.globl _instruction_reg_write
                                    221 	.globl _delay
                                    222 	.globl _lcdbusywait
                                    223 	.globl _lcdinit
                                    224 	.globl _lcd_clear_screen
                                    225 	.globl _lcdgotoaddr
                                    226 	.globl _lcdgotoxy
                                    227 	.globl _lcdputch
                                    228 	.globl _lcdputstr
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           0000C8   234 _T2CON	=	0x00c8
                           0000CA   235 _RCAP2L	=	0x00ca
                           0000CB   236 _RCAP2H	=	0x00cb
                           0000CC   237 _TL2	=	0x00cc
                           0000CD   238 _TH2	=	0x00cd
                           00008E   239 _AUXR	=	0x008e
                           0000A2   240 _AUXR1	=	0x00a2
                           000097   241 _CKRL	=	0x0097
                           00008F   242 _CKCON0	=	0x008f
                           0000AF   243 _CKCON1	=	0x00af
                           0000FA   244 _CCAP0H	=	0x00fa
                           0000FB   245 _CCAP1H	=	0x00fb
                           0000FC   246 _CCAP2H	=	0x00fc
                           0000FD   247 _CCAP3H	=	0x00fd
                           0000FE   248 _CCAP4H	=	0x00fe
                           0000EA   249 _CCAP0L	=	0x00ea
                           0000EB   250 _CCAP1L	=	0x00eb
                           0000EC   251 _CCAP2L	=	0x00ec
                           0000ED   252 _CCAP3L	=	0x00ed
                           0000EE   253 _CCAP4L	=	0x00ee
                           0000DA   254 _CCAPM0	=	0x00da
                           0000DB   255 _CCAPM1	=	0x00db
                           0000DC   256 _CCAPM2	=	0x00dc
                           0000DD   257 _CCAPM3	=	0x00dd
                           0000DE   258 _CCAPM4	=	0x00de
                           0000D8   259 _CCON	=	0x00d8
                           0000F9   260 _CH	=	0x00f9
                           0000E9   261 _CL	=	0x00e9
                           0000D9   262 _CMOD	=	0x00d9
                           0000A8   263 _IEN0	=	0x00a8
                           0000B1   264 _IEN1	=	0x00b1
                           0000B8   265 _IPL0	=	0x00b8
                           0000B7   266 _IPH0	=	0x00b7
                           0000B2   267 _IPL1	=	0x00b2
                           0000B3   268 _IPH1	=	0x00b3
                           0000C0   269 _P4	=	0x00c0
                           0000E8   270 _P5	=	0x00e8
                           0000A6   271 _WDTRST	=	0x00a6
                           0000A7   272 _WDTPRG	=	0x00a7
                           0000A9   273 _SADDR	=	0x00a9
                           0000B9   274 _SADEN	=	0x00b9
                           0000C3   275 _SPCON	=	0x00c3
                           0000C4   276 _SPSTA	=	0x00c4
                           0000C5   277 _SPDAT	=	0x00c5
                           0000C9   278 _T2MOD	=	0x00c9
                           00009B   279 _BDRCON	=	0x009b
                           00009A   280 _BRL	=	0x009a
                           00009C   281 _KBLS	=	0x009c
                           00009D   282 _KBE	=	0x009d
                           00009E   283 _KBF	=	0x009e
                           0000D2   284 _EECON	=	0x00d2
                           000080   285 _P0	=	0x0080
                           000081   286 _SP	=	0x0081
                           000082   287 _DPL	=	0x0082
                           000083   288 _DPH	=	0x0083
                           000087   289 _PCON	=	0x0087
                           000088   290 _TCON	=	0x0088
                           000089   291 _TMOD	=	0x0089
                           00008A   292 _TL0	=	0x008a
                           00008B   293 _TL1	=	0x008b
                           00008C   294 _TH0	=	0x008c
                           00008D   295 _TH1	=	0x008d
                           000090   296 _P1	=	0x0090
                           000098   297 _SCON	=	0x0098
                           000099   298 _SBUF	=	0x0099
                           0000A0   299 _P2	=	0x00a0
                           0000A8   300 _IE	=	0x00a8
                           0000B0   301 _P3	=	0x00b0
                           0000B8   302 _IP	=	0x00b8
                           0000D0   303 _PSW	=	0x00d0
                           0000E0   304 _ACC	=	0x00e0
                           0000F0   305 _B	=	0x00f0
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           0000AD   311 _ET2	=	0x00ad
                           0000BD   312 _PT2	=	0x00bd
                           0000C8   313 _T2CON_0	=	0x00c8
                           0000C9   314 _T2CON_1	=	0x00c9
                           0000CA   315 _T2CON_2	=	0x00ca
                           0000CB   316 _T2CON_3	=	0x00cb
                           0000CC   317 _T2CON_4	=	0x00cc
                           0000CD   318 _T2CON_5	=	0x00cd
                           0000CE   319 _T2CON_6	=	0x00ce
                           0000CF   320 _T2CON_7	=	0x00cf
                           0000C8   321 _CP_RL2	=	0x00c8
                           0000C9   322 _C_T2	=	0x00c9
                           0000CA   323 _TR2	=	0x00ca
                           0000CB   324 _EXEN2	=	0x00cb
                           0000CC   325 _TCLK	=	0x00cc
                           0000CD   326 _RCLK	=	0x00cd
                           0000CE   327 _EXF2	=	0x00ce
                           0000CF   328 _TF2	=	0x00cf
                           0000DF   329 _CF	=	0x00df
                           0000DE   330 _CR	=	0x00de
                           0000DC   331 _CCF4	=	0x00dc
                           0000DB   332 _CCF3	=	0x00db
                           0000DA   333 _CCF2	=	0x00da
                           0000D9   334 _CCF1	=	0x00d9
                           0000D8   335 _CCF0	=	0x00d8
                           0000AE   336 _EC	=	0x00ae
                           0000BE   337 _PPCL	=	0x00be
                           0000BD   338 _PT2L	=	0x00bd
                           0000BC   339 _PSL	=	0x00bc
                           0000BB   340 _PT1L	=	0x00bb
                           0000BA   341 _PX1L	=	0x00ba
                           0000B9   342 _PT0L	=	0x00b9
                           0000B8   343 _PX0L	=	0x00b8
                           0000C0   344 _P4_0	=	0x00c0
                           0000C1   345 _P4_1	=	0x00c1
                           0000C2   346 _P4_2	=	0x00c2
                           0000C3   347 _P4_3	=	0x00c3
                           0000C4   348 _P4_4	=	0x00c4
                           0000C5   349 _P4_5	=	0x00c5
                           0000C6   350 _P4_6	=	0x00c6
                           0000C7   351 _P4_7	=	0x00c7
                           0000E8   352 _P5_0	=	0x00e8
                           0000E9   353 _P5_1	=	0x00e9
                           0000EA   354 _P5_2	=	0x00ea
                           0000EB   355 _P5_3	=	0x00eb
                           0000EC   356 _P5_4	=	0x00ec
                           0000ED   357 _P5_5	=	0x00ed
                           0000EE   358 _P5_6	=	0x00ee
                           0000EF   359 _P5_7	=	0x00ef
                           000080   360 _P0_0	=	0x0080
                           000081   361 _P0_1	=	0x0081
                           000082   362 _P0_2	=	0x0082
                           000083   363 _P0_3	=	0x0083
                           000084   364 _P0_4	=	0x0084
                           000085   365 _P0_5	=	0x0085
                           000086   366 _P0_6	=	0x0086
                           000087   367 _P0_7	=	0x0087
                           000088   368 _IT0	=	0x0088
                           000089   369 _IE0	=	0x0089
                           00008A   370 _IT1	=	0x008a
                           00008B   371 _IE1	=	0x008b
                           00008C   372 _TR0	=	0x008c
                           00008D   373 _TF0	=	0x008d
                           00008E   374 _TR1	=	0x008e
                           00008F   375 _TF1	=	0x008f
                           000090   376 _P1_0	=	0x0090
                           000091   377 _P1_1	=	0x0091
                           000092   378 _P1_2	=	0x0092
                           000093   379 _P1_3	=	0x0093
                           000094   380 _P1_4	=	0x0094
                           000095   381 _P1_5	=	0x0095
                           000096   382 _P1_6	=	0x0096
                           000097   383 _P1_7	=	0x0097
                           000098   384 _RI	=	0x0098
                           000099   385 _TI	=	0x0099
                           00009A   386 _RB8	=	0x009a
                           00009B   387 _TB8	=	0x009b
                           00009C   388 _REN	=	0x009c
                           00009D   389 _SM2	=	0x009d
                           00009E   390 _SM1	=	0x009e
                           00009F   391 _SM0	=	0x009f
                           0000A0   392 _P2_0	=	0x00a0
                           0000A1   393 _P2_1	=	0x00a1
                           0000A2   394 _P2_2	=	0x00a2
                           0000A3   395 _P2_3	=	0x00a3
                           0000A4   396 _P2_4	=	0x00a4
                           0000A5   397 _P2_5	=	0x00a5
                           0000A6   398 _P2_6	=	0x00a6
                           0000A7   399 _P2_7	=	0x00a7
                           0000A8   400 _EX0	=	0x00a8
                           0000A9   401 _ET0	=	0x00a9
                           0000AA   402 _EX1	=	0x00aa
                           0000AB   403 _ET1	=	0x00ab
                           0000AC   404 _ES	=	0x00ac
                           0000AF   405 _EA	=	0x00af
                           0000B0   406 _P3_0	=	0x00b0
                           0000B1   407 _P3_1	=	0x00b1
                           0000B2   408 _P3_2	=	0x00b2
                           0000B3   409 _P3_3	=	0x00b3
                           0000B4   410 _P3_4	=	0x00b4
                           0000B5   411 _P3_5	=	0x00b5
                           0000B6   412 _P3_6	=	0x00b6
                           0000B7   413 _P3_7	=	0x00b7
                           0000B0   414 _RXD	=	0x00b0
                           0000B1   415 _TXD	=	0x00b1
                           0000B2   416 _INT0	=	0x00b2
                           0000B3   417 _INT1	=	0x00b3
                           0000B4   418 _T0	=	0x00b4
                           0000B5   419 _T1	=	0x00b5
                           0000B6   420 _WR	=	0x00b6
                           0000B7   421 _RD	=	0x00b7
                           0000B8   422 _PX0	=	0x00b8
                           0000B9   423 _PT0	=	0x00b9
                           0000BA   424 _PX1	=	0x00ba
                           0000BB   425 _PT1	=	0x00bb
                           0000BC   426 _PS	=	0x00bc
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable register banks
                                    437 ;--------------------------------------------------------
                                    438 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        439 	.ds 8
                                    440 ;--------------------------------------------------------
                                    441 ; internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area DSEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 	.area	OSEG    (OVR,DATA)
      000018                        448 _delay_sloc0_1_0:
      000018                        449 	.ds 4
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
      000001                        475 _delay_n_65536_51:
      000001                        476 	.ds 4
      000005                        477 _lcdgotoaddr_addr_65536_61:
      000005                        478 	.ds 1
      000006                        479 _lcdgotoxy_PARM_2:
      000006                        480 	.ds 1
      000007                        481 _lcdgotoxy_rows_65536_63:
      000007                        482 	.ds 1
      000008                        483 _lcdgotoxy_address_65537_65:
      000008                        484 	.ds 2
      00000A                        485 _lcdputch_cc_65536_66:
      00000A                        486 	.ds 1
      00000B                        487 _lcdputstr_string_65536_68:
      00000B                        488 	.ds 3
                                    489 ;--------------------------------------------------------
                                    490 ; absolute external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XABS    (ABS,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; external initialized ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XISEG   (XDATA)
      000095                        497 _ch::
      000095                        498 	.ds 1
      000096                        499 _row2::
      000096                        500 	.ds 1
      000097                        501 _column2::
      000097                        502 	.ds 1
      000098                        503 _string::
      000098                        504 	.ds 3
      00009B                        505 _address1::
      00009B                        506 	.ds 1
      00009C                        507 _input::
      00009C                        508 	.ds 1
      00009D                        509 _count::
      00009D                        510 	.ds 1
      00009E                        511 _row::
      00009E                        512 	.ds 1
      00009F                        513 _column::
      00009F                        514 	.ds 1
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT0 (CODE)
                                    517 	.area GSINIT1 (CODE)
                                    518 	.area GSINIT2 (CODE)
                                    519 	.area GSINIT3 (CODE)
                                    520 	.area GSINIT4 (CODE)
                                    521 	.area GSINIT5 (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.area GSFINAL (CODE)
                                    524 	.area CSEG    (CODE)
                                    525 ;--------------------------------------------------------
                                    526 ; global & static initialisations
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; Home
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area HOME    (CODE)
                                    537 ;--------------------------------------------------------
                                    538 ; code
                                    539 ;--------------------------------------------------------
                                    540 	.area CSEG    (CODE)
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'delay'
                                    543 ;------------------------------------------------------------
                                    544 ;n                         Allocated with name '_delay_n_65536_51'
                                    545 ;i                         Allocated with name '_delay_i_65536_52'
                                    546 ;j                         Allocated with name '_delay_j_65536_52'
                                    547 ;sloc0                     Allocated with name '_delay_sloc0_1_0'
                                    548 ;------------------------------------------------------------
                                    549 ;	LCD.c:34: void delay(uint32_t n)
                                    550 ;	-----------------------------------------
                                    551 ;	 function delay
                                    552 ;	-----------------------------------------
      00309B                        553 _delay:
                           000007   554 	ar7 = 0x07
                           000006   555 	ar6 = 0x06
                           000005   556 	ar5 = 0x05
                           000004   557 	ar4 = 0x04
                           000003   558 	ar3 = 0x03
                           000002   559 	ar2 = 0x02
                           000001   560 	ar1 = 0x01
                           000000   561 	ar0 = 0x00
      00309B AF 82            [24]  562 	mov	r7,dpl
      00309D AE 83            [24]  563 	mov	r6,dph
      00309F AD F0            [24]  564 	mov	r5,b
      0030A1 FC               [12]  565 	mov	r4,a
      0030A2 90 00 01         [24]  566 	mov	dptr,#_delay_n_65536_51
      0030A5 EF               [12]  567 	mov	a,r7
      0030A6 F0               [24]  568 	movx	@dptr,a
      0030A7 EE               [12]  569 	mov	a,r6
      0030A8 A3               [24]  570 	inc	dptr
      0030A9 F0               [24]  571 	movx	@dptr,a
      0030AA ED               [12]  572 	mov	a,r5
      0030AB A3               [24]  573 	inc	dptr
      0030AC F0               [24]  574 	movx	@dptr,a
      0030AD EC               [12]  575 	mov	a,r4
      0030AE A3               [24]  576 	inc	dptr
      0030AF F0               [24]  577 	movx	@dptr,a
                                    578 ;	LCD.c:38: for(i=0; i<n; i++)
      0030B0 90 00 01         [24]  579 	mov	dptr,#_delay_n_65536_51
      0030B3 E0               [24]  580 	movx	a,@dptr
      0030B4 F5 18            [12]  581 	mov	_delay_sloc0_1_0,a
      0030B6 A3               [24]  582 	inc	dptr
      0030B7 E0               [24]  583 	movx	a,@dptr
      0030B8 F5 19            [12]  584 	mov	(_delay_sloc0_1_0 + 1),a
      0030BA A3               [24]  585 	inc	dptr
      0030BB E0               [24]  586 	movx	a,@dptr
      0030BC F5 1A            [12]  587 	mov	(_delay_sloc0_1_0 + 2),a
      0030BE A3               [24]  588 	inc	dptr
      0030BF E0               [24]  589 	movx	a,@dptr
      0030C0 F5 1B            [12]  590 	mov	(_delay_sloc0_1_0 + 3),a
      0030C2 7A 00            [12]  591 	mov	r2,#0x00
      0030C4 7B 00            [12]  592 	mov	r3,#0x00
      0030C6                        593 00107$:
      0030C6 8A 00            [24]  594 	mov	ar0,r2
      0030C8 EB               [12]  595 	mov	a,r3
      0030C9 F9               [12]  596 	mov	r1,a
      0030CA 33               [12]  597 	rlc	a
      0030CB 95 E0            [12]  598 	subb	a,acc
      0030CD FE               [12]  599 	mov	r6,a
      0030CE FF               [12]  600 	mov	r7,a
      0030CF C3               [12]  601 	clr	c
      0030D0 E8               [12]  602 	mov	a,r0
      0030D1 95 18            [12]  603 	subb	a,_delay_sloc0_1_0
      0030D3 E9               [12]  604 	mov	a,r1
      0030D4 95 19            [12]  605 	subb	a,(_delay_sloc0_1_0 + 1)
      0030D6 EE               [12]  606 	mov	a,r6
      0030D7 95 1A            [12]  607 	subb	a,(_delay_sloc0_1_0 + 2)
      0030D9 EF               [12]  608 	mov	a,r7
      0030DA 95 1B            [12]  609 	subb	a,(_delay_sloc0_1_0 + 3)
      0030DC 50 14            [24]  610 	jnc	00109$
                                    611 ;	LCD.c:40: for(j=0; j<1275; j++)
      0030DE 7E FB            [12]  612 	mov	r6,#0xfb
      0030E0 7F 04            [12]  613 	mov	r7,#0x04
      0030E2                        614 00105$:
      0030E2 1E               [12]  615 	dec	r6
      0030E3 BE FF 01         [24]  616 	cjne	r6,#0xff,00130$
      0030E6 1F               [12]  617 	dec	r7
      0030E7                        618 00130$:
      0030E7 EE               [12]  619 	mov	a,r6
      0030E8 4F               [12]  620 	orl	a,r7
      0030E9 70 F7            [24]  621 	jnz	00105$
                                    622 ;	LCD.c:38: for(i=0; i<n; i++)
      0030EB 0A               [12]  623 	inc	r2
      0030EC BA 00 D7         [24]  624 	cjne	r2,#0x00,00107$
      0030EF 0B               [12]  625 	inc	r3
      0030F0 80 D4            [24]  626 	sjmp	00107$
      0030F2                        627 00109$:
                                    628 ;	LCD.c:45: }
      0030F2 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'lcdbusywait'
                                    632 ;------------------------------------------------------------
                                    633 ;	LCD.c:47: void lcdbusywait()
                                    634 ;	-----------------------------------------
                                    635 ;	 function lcdbusywait
                                    636 ;	-----------------------------------------
      0030F3                        637 _lcdbusywait:
                                    638 ;	LCD.c:49: while(busy_flag_read&0x80);                               ///checking for the busy flag, if it is 1
      0030F3                        639 00101$:
      0030F3 90 F2 00         [24]  640 	mov	dptr,#_busy_flag_read
      0030F6 E0               [24]  641 	movx	a,@dptr
      0030F7 20 E7 F9         [24]  642 	jb	acc.7,00101$
                                    643 ;	LCD.c:50: }
      0030FA 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'lcdinit'
                                    647 ;------------------------------------------------------------
                                    648 ;	LCD.c:52: void lcdinit(void)
                                    649 ;	-----------------------------------------
                                    650 ;	 function lcdinit
                                    651 ;	-----------------------------------------
      0030FB                        652 _lcdinit:
                                    653 ;	LCD.c:54: delay(15);                                    ///15ms delay
      0030FB 90 00 0F         [24]  654 	mov	dptr,#(0x0f&0x00ff)
      0030FE E4               [12]  655 	clr	a
      0030FF F5 F0            [12]  656 	mov	b,a
      003101 12 30 9B         [24]  657 	lcall	_delay
                                    658 ;	LCD.c:55: instruction_reg_write = unlock;
      003104 90 F0 00         [24]  659 	mov	dptr,#_instruction_reg_write
      003107 74 30            [12]  660 	mov	a,#0x30
      003109 F0               [24]  661 	movx	@dptr,a
                                    662 ;	LCD.c:57: delay(4);                                    ///4.1ms delay
      00310A 90 00 04         [24]  663 	mov	dptr,#(0x04&0x00ff)
      00310D E4               [12]  664 	clr	a
      00310E F5 F0            [12]  665 	mov	b,a
      003110 12 30 9B         [24]  666 	lcall	_delay
                                    667 ;	LCD.c:58: instruction_reg_write = unlock;
      003113 90 F0 00         [24]  668 	mov	dptr,#_instruction_reg_write
      003116 74 30            [12]  669 	mov	a,#0x30
      003118 F0               [24]  670 	movx	@dptr,a
                                    671 ;	LCD.c:60: delay(1);                                   ///100uS delay
      003119 90 00 01         [24]  672 	mov	dptr,#(0x01&0x00ff)
      00311C E4               [12]  673 	clr	a
      00311D F5 F0            [12]  674 	mov	b,a
      00311F 12 30 9B         [24]  675 	lcall	_delay
                                    676 ;	LCD.c:61: instruction_reg_write = unlock;
      003122 90 F0 00         [24]  677 	mov	dptr,#_instruction_reg_write
      003125 74 30            [12]  678 	mov	a,#0x30
      003127 F0               [24]  679 	movx	@dptr,a
                                    680 ;	LCD.c:63: lcdbusywait();                                  /// wait for busy flag to clear
      003128 12 30 F3         [24]  681 	lcall	_lcdbusywait
                                    682 ;	LCD.c:65: instruction_reg_write = Function_set;
      00312B 90 F0 00         [24]  683 	mov	dptr,#_instruction_reg_write
      00312E 74 38            [12]  684 	mov	a,#0x38
      003130 F0               [24]  685 	movx	@dptr,a
                                    686 ;	LCD.c:67: lcdbusywait();                                  /// wait for busy flag to clear
      003131 12 30 F3         [24]  687 	lcall	_lcdbusywait
                                    688 ;	LCD.c:69: instruction_reg_write = display_off;
      003134 90 F0 00         [24]  689 	mov	dptr,#_instruction_reg_write
      003137 74 08            [12]  690 	mov	a,#0x08
      003139 F0               [24]  691 	movx	@dptr,a
                                    692 ;	LCD.c:71: lcdbusywait();                                    /// wait for busy flag to clear
      00313A 12 30 F3         [24]  693 	lcall	_lcdbusywait
                                    694 ;	LCD.c:73: instruction_reg_write = display_on;
      00313D 90 F0 00         [24]  695 	mov	dptr,#_instruction_reg_write
      003140 74 0E            [12]  696 	mov	a,#0x0e
      003142 F0               [24]  697 	movx	@dptr,a
                                    698 ;	LCD.c:75: lcdbusywait();                                  /// wait for busy flag to clear
      003143 12 30 F3         [24]  699 	lcall	_lcdbusywait
                                    700 ;	LCD.c:77: instruction_reg_write = entrymode_set;
      003146 90 F0 00         [24]  701 	mov	dptr,#_instruction_reg_write
      003149 74 06            [12]  702 	mov	a,#0x06
      00314B F0               [24]  703 	movx	@dptr,a
                                    704 ;	LCD.c:79: lcdbusywait();                                  /// wait for busy flag to clear
      00314C 12 30 F3         [24]  705 	lcall	_lcdbusywait
                                    706 ;	LCD.c:81: instruction_reg_write = clearscreen;
      00314F 90 F0 00         [24]  707 	mov	dptr,#_instruction_reg_write
      003152 74 01            [12]  708 	mov	a,#0x01
      003154 F0               [24]  709 	movx	@dptr,a
                                    710 ;	LCD.c:82: }
      003155 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'lcd_clear_screen'
                                    714 ;------------------------------------------------------------
                                    715 ;	LCD.c:84: void lcd_clear_screen()
                                    716 ;	-----------------------------------------
                                    717 ;	 function lcd_clear_screen
                                    718 ;	-----------------------------------------
      003156                        719 _lcd_clear_screen:
                                    720 ;	LCD.c:86: instruction_reg_write = clearscreen;         ///function to clear the lcd screen
      003156 90 F0 00         [24]  721 	mov	dptr,#_instruction_reg_write
      003159 74 01            [12]  722 	mov	a,#0x01
      00315B F0               [24]  723 	movx	@dptr,a
                                    724 ;	LCD.c:87: }
      00315C 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    728 ;------------------------------------------------------------
                                    729 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_61'
                                    730 ;------------------------------------------------------------
                                    731 ;	LCD.c:88: void lcdgotoaddr(uint8_t addr)
                                    732 ;	-----------------------------------------
                                    733 ;	 function lcdgotoaddr
                                    734 ;	-----------------------------------------
      00315D                        735 _lcdgotoaddr:
      00315D E5 82            [12]  736 	mov	a,dpl
      00315F 90 00 05         [24]  737 	mov	dptr,#_lcdgotoaddr_addr_65536_61
      003162 F0               [24]  738 	movx	@dptr,a
                                    739 ;	LCD.c:90: instruction_reg_write = addr;               ///function to write to the lcd ddram address
      003163 E0               [24]  740 	movx	a,@dptr
      003164 90 F0 00         [24]  741 	mov	dptr,#_instruction_reg_write
      003167 F0               [24]  742 	movx	@dptr,a
                                    743 ;	LCD.c:92: }
      003168 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'lcdgotoxy'
                                    747 ;------------------------------------------------------------
                                    748 ;columns                   Allocated with name '_lcdgotoxy_PARM_2'
                                    749 ;rows                      Allocated with name '_lcdgotoxy_rows_65536_63'
                                    750 ;address                   Allocated with name '_lcdgotoxy_address_65537_65'
                                    751 ;a                         Allocated with name '_lcdgotoxy_a_65537_65'
                                    752 ;b                         Allocated with name '_lcdgotoxy_b_65537_65'
                                    753 ;c                         Allocated with name '_lcdgotoxy_c_65537_65'
                                    754 ;d                         Allocated with name '_lcdgotoxy_d_65537_65'
                                    755 ;------------------------------------------------------------
                                    756 ;	LCD.c:93: void lcdgotoxy(uint8_t rows, uint8_t columns)
                                    757 ;	-----------------------------------------
                                    758 ;	 function lcdgotoxy
                                    759 ;	-----------------------------------------
      003169                        760 _lcdgotoxy:
      003169 E5 82            [12]  761 	mov	a,dpl
      00316B 90 00 07         [24]  762 	mov	dptr,#_lcdgotoxy_rows_65536_63
      00316E F0               [24]  763 	movx	@dptr,a
                                    764 ;	LCD.c:95: row=rows;
      00316F E0               [24]  765 	movx	a,@dptr
      003170 FF               [12]  766 	mov	r7,a
      003171 90 00 9E         [24]  767 	mov	dptr,#_row
      003174 F0               [24]  768 	movx	@dptr,a
                                    769 ;	LCD.c:96: column=columns;
      003175 90 00 06         [24]  770 	mov	dptr,#_lcdgotoxy_PARM_2
      003178 E0               [24]  771 	movx	a,@dptr
      003179 FE               [12]  772 	mov	r6,a
      00317A 90 00 9F         [24]  773 	mov	dptr,#_column
      00317D F0               [24]  774 	movx	@dptr,a
                                    775 ;	LCD.c:97: int address=0;                           ///function to specify the required location to go to specified by the row and column
      00317E 90 00 08         [24]  776 	mov	dptr,#_lcdgotoxy_address_65537_65
      003181 E4               [12]  777 	clr	a
      003182 F0               [24]  778 	movx	@dptr,a
      003183 A3               [24]  779 	inc	dptr
      003184 F0               [24]  780 	movx	@dptr,a
                                    781 ;	LCD.c:103: if (rows==0)
      003185 EF               [12]  782 	mov	a,r7
                                    783 ;	LCD.c:104: address=a+columns;                  ///increment the value of the address of each row and column address as specified as row and column values
      003186 70 0E            [24]  784 	jnz	00102$
      003188 8E 05            [24]  785 	mov	ar5,r6
      00318A FF               [12]  786 	mov	r7,a
      00318B 90 00 08         [24]  787 	mov	dptr,#_lcdgotoxy_address_65537_65
      00318E 74 80            [12]  788 	mov	a,#0x80
      003190 2D               [12]  789 	add	a,r5
      003191 F0               [24]  790 	movx	@dptr,a
      003192 E4               [12]  791 	clr	a
      003193 3F               [12]  792 	addc	a,r7
      003194 A3               [24]  793 	inc	dptr
      003195 F0               [24]  794 	movx	@dptr,a
      003196                        795 00102$:
                                    796 ;	LCD.c:105: if (rows==1)                            ///for the address
      003196 90 00 07         [24]  797 	mov	dptr,#_lcdgotoxy_rows_65536_63
      003199 E0               [24]  798 	movx	a,@dptr
      00319A FF               [12]  799 	mov	r7,a
      00319B BF 01 0F         [24]  800 	cjne	r7,#0x01,00104$
                                    801 ;	LCD.c:106: address=b+columns;
      00319E 8E 05            [24]  802 	mov	ar5,r6
      0031A0 7F 00            [12]  803 	mov	r7,#0x00
      0031A2 90 00 08         [24]  804 	mov	dptr,#_lcdgotoxy_address_65537_65
      0031A5 74 C0            [12]  805 	mov	a,#0xc0
      0031A7 2D               [12]  806 	add	a,r5
      0031A8 F0               [24]  807 	movx	@dptr,a
      0031A9 E4               [12]  808 	clr	a
      0031AA 3F               [12]  809 	addc	a,r7
      0031AB A3               [24]  810 	inc	dptr
      0031AC F0               [24]  811 	movx	@dptr,a
      0031AD                        812 00104$:
                                    813 ;	LCD.c:107: if (rows==2)
      0031AD 90 00 07         [24]  814 	mov	dptr,#_lcdgotoxy_rows_65536_63
      0031B0 E0               [24]  815 	movx	a,@dptr
      0031B1 FF               [12]  816 	mov	r7,a
      0031B2 BF 02 0F         [24]  817 	cjne	r7,#0x02,00106$
                                    818 ;	LCD.c:108: address=c+columns;
      0031B5 8E 05            [24]  819 	mov	ar5,r6
      0031B7 7F 00            [12]  820 	mov	r7,#0x00
      0031B9 90 00 08         [24]  821 	mov	dptr,#_lcdgotoxy_address_65537_65
      0031BC 74 90            [12]  822 	mov	a,#0x90
      0031BE 2D               [12]  823 	add	a,r5
      0031BF F0               [24]  824 	movx	@dptr,a
      0031C0 E4               [12]  825 	clr	a
      0031C1 3F               [12]  826 	addc	a,r7
      0031C2 A3               [24]  827 	inc	dptr
      0031C3 F0               [24]  828 	movx	@dptr,a
      0031C4                        829 00106$:
                                    830 ;	LCD.c:109: if (rows==3)
      0031C4 90 00 07         [24]  831 	mov	dptr,#_lcdgotoxy_rows_65536_63
      0031C7 E0               [24]  832 	movx	a,@dptr
      0031C8 FF               [12]  833 	mov	r7,a
      0031C9 BF 03 0D         [24]  834 	cjne	r7,#0x03,00108$
                                    835 ;	LCD.c:110: address=d+columns;
      0031CC 7F 00            [12]  836 	mov	r7,#0x00
      0031CE 90 00 08         [24]  837 	mov	dptr,#_lcdgotoxy_address_65537_65
      0031D1 74 D0            [12]  838 	mov	a,#0xd0
      0031D3 2E               [12]  839 	add	a,r6
      0031D4 F0               [24]  840 	movx	@dptr,a
      0031D5 E4               [12]  841 	clr	a
      0031D6 3F               [12]  842 	addc	a,r7
      0031D7 A3               [24]  843 	inc	dptr
      0031D8 F0               [24]  844 	movx	@dptr,a
      0031D9                        845 00108$:
                                    846 ;	LCD.c:111: lcdgotoaddr(address);                ///using lcd go to address to go to a required location
      0031D9 90 00 08         [24]  847 	mov	dptr,#_lcdgotoxy_address_65537_65
      0031DC E0               [24]  848 	movx	a,@dptr
      0031DD FE               [12]  849 	mov	r6,a
      0031DE A3               [24]  850 	inc	dptr
      0031DF E0               [24]  851 	movx	a,@dptr
      0031E0 8E 82            [24]  852 	mov	dpl,r6
                                    853 ;	LCD.c:112: }
      0031E2 02 31 5D         [24]  854 	ljmp	_lcdgotoaddr
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'lcdputch'
                                    857 ;------------------------------------------------------------
                                    858 ;cc                        Allocated with name '_lcdputch_cc_65536_66'
                                    859 ;------------------------------------------------------------
                                    860 ;	LCD.c:114: void lcdputch(char cc)
                                    861 ;	-----------------------------------------
                                    862 ;	 function lcdputch
                                    863 ;	-----------------------------------------
      0031E5                        864 _lcdputch:
      0031E5 E5 82            [12]  865 	mov	a,dpl
      0031E7 90 00 0A         [24]  866 	mov	dptr,#_lcdputch_cc_65536_66
      0031EA F0               [24]  867 	movx	@dptr,a
                                    868 ;	LCD.c:116: data_register_write=cc;            ///putting character on the lcd display at the desired location
      0031EB E0               [24]  869 	movx	a,@dptr
      0031EC 90 F1 00         [24]  870 	mov	dptr,#_data_register_write
      0031EF F0               [24]  871 	movx	@dptr,a
                                    872 ;	LCD.c:117: lcdbusywait();
      0031F0 12 30 F3         [24]  873 	lcall	_lcdbusywait
                                    874 ;	LCD.c:118: delay(10);
      0031F3 90 00 0A         [24]  875 	mov	dptr,#(0x0a&0x00ff)
      0031F6 E4               [12]  876 	clr	a
      0031F7 F5 F0            [12]  877 	mov	b,a
                                    878 ;	LCD.c:120: }
      0031F9 02 30 9B         [24]  879 	ljmp	_delay
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'lcdputstr'
                                    882 ;------------------------------------------------------------
                                    883 ;string                    Allocated with name '_lcdputstr_string_65536_68'
                                    884 ;------------------------------------------------------------
                                    885 ;	LCD.c:121: void lcdputstr(char *string)
                                    886 ;	-----------------------------------------
                                    887 ;	 function lcdputstr
                                    888 ;	-----------------------------------------
      0031FC                        889 _lcdputstr:
      0031FC AF F0            [24]  890 	mov	r7,b
      0031FE AE 83            [24]  891 	mov	r6,dph
      003200 E5 82            [12]  892 	mov	a,dpl
      003202 90 00 0B         [24]  893 	mov	dptr,#_lcdputstr_string_65536_68
      003205 F0               [24]  894 	movx	@dptr,a
      003206 EE               [12]  895 	mov	a,r6
      003207 A3               [24]  896 	inc	dptr
      003208 F0               [24]  897 	movx	@dptr,a
      003209 EF               [12]  898 	mov	a,r7
      00320A A3               [24]  899 	inc	dptr
      00320B F0               [24]  900 	movx	@dptr,a
                                    901 ;	LCD.c:123: count=column;
      00320C 90 00 9F         [24]  902 	mov	dptr,#_column
      00320F E0               [24]  903 	movx	a,@dptr
      003210 90 00 9D         [24]  904 	mov	dptr,#_count
      003213 F0               [24]  905 	movx	@dptr,a
                                    906 ;	LCD.c:124: while(*string!='\0' && (*string!='\n' && *string!='\r'))             ///till string ends keep putting characters on lcd
      003214 90 00 0B         [24]  907 	mov	dptr,#_lcdputstr_string_65536_68
      003217 E0               [24]  908 	movx	a,@dptr
      003218 FD               [12]  909 	mov	r5,a
      003219 A3               [24]  910 	inc	dptr
      00321A E0               [24]  911 	movx	a,@dptr
      00321B FE               [12]  912 	mov	r6,a
      00321C A3               [24]  913 	inc	dptr
      00321D E0               [24]  914 	movx	a,@dptr
      00321E FF               [12]  915 	mov	r7,a
      00321F                        916 00108$:
      00321F 8D 82            [24]  917 	mov	dpl,r5
      003221 8E 83            [24]  918 	mov	dph,r6
      003223 8F F0            [24]  919 	mov	b,r7
      003225 12 4D E3         [24]  920 	lcall	__gptrget
      003228 FC               [12]  921 	mov	r4,a
      003229 70 03            [24]  922 	jnz	00138$
      00322B 02 32 B6         [24]  923 	ljmp	00119$
      00322E                        924 00138$:
      00322E BC 0A 03         [24]  925 	cjne	r4,#0x0a,00139$
      003231 02 32 B6         [24]  926 	ljmp	00119$
      003234                        927 00139$:
      003234 BC 0D 03         [24]  928 	cjne	r4,#0x0d,00140$
      003237 02 32 B6         [24]  929 	ljmp	00119$
      00323A                        930 00140$:
                                    931 ;	LCD.c:126: lcdputch(*string++);            ///send characters one by one
      00323A 0D               [12]  932 	inc	r5
      00323B BD 00 01         [24]  933 	cjne	r5,#0x00,00141$
      00323E 0E               [12]  934 	inc	r6
      00323F                        935 00141$:
      00323F 90 00 0B         [24]  936 	mov	dptr,#_lcdputstr_string_65536_68
      003242 ED               [12]  937 	mov	a,r5
      003243 F0               [24]  938 	movx	@dptr,a
      003244 EE               [12]  939 	mov	a,r6
      003245 A3               [24]  940 	inc	dptr
      003246 F0               [24]  941 	movx	@dptr,a
      003247 EF               [12]  942 	mov	a,r7
      003248 A3               [24]  943 	inc	dptr
      003249 F0               [24]  944 	movx	@dptr,a
      00324A 8C 82            [24]  945 	mov	dpl,r4
      00324C C0 07            [24]  946 	push	ar7
      00324E C0 06            [24]  947 	push	ar6
      003250 C0 05            [24]  948 	push	ar5
      003252 12 31 E5         [24]  949 	lcall	_lcdputch
      003255 D0 05            [24]  950 	pop	ar5
      003257 D0 06            [24]  951 	pop	ar6
      003259 D0 07            [24]  952 	pop	ar7
                                    953 ;	LCD.c:128: count++;
      00325B 90 00 9D         [24]  954 	mov	dptr,#_count
      00325E E0               [24]  955 	movx	a,@dptr
      00325F 04               [12]  956 	inc	a
      003260 F0               [24]  957 	movx	@dptr,a
                                    958 ;	LCD.c:129: if (count==16)                ///check the count of the characters
      003261 E0               [24]  959 	movx	a,@dptr
      003262 FC               [12]  960 	mov	r4,a
      003263 BC 10 B9         [24]  961 	cjne	r4,#0x10,00108$
                                    962 ;	LCD.c:131: row=row+1;
      003266 90 00 9E         [24]  963 	mov	dptr,#_row
      003269 E0               [24]  964 	movx	a,@dptr
      00326A 04               [12]  965 	inc	a
      00326B F0               [24]  966 	movx	@dptr,a
                                    967 ;	LCD.c:132: count=0;
      00326C 90 00 9D         [24]  968 	mov	dptr,#_count
      00326F E4               [12]  969 	clr	a
      003270 F0               [24]  970 	movx	@dptr,a
                                    971 ;	LCD.c:133: if(row==4)                ///if column value is 16 goto the next line and to the next row
      003271 90 00 9E         [24]  972 	mov	dptr,#_row
      003274 E0               [24]  973 	movx	a,@dptr
      003275 FC               [12]  974 	mov	r4,a
      003276 BC 04 1F         [24]  975 	cjne	r4,#0x04,00102$
                                    976 ;	LCD.c:135: lcdgotoxy(0,0);
      003279 90 00 06         [24]  977 	mov	dptr,#_lcdgotoxy_PARM_2
      00327C E4               [12]  978 	clr	a
      00327D F0               [24]  979 	movx	@dptr,a
      00327E 75 82 00         [24]  980 	mov	dpl,#0x00
      003281 C0 07            [24]  981 	push	ar7
      003283 C0 06            [24]  982 	push	ar6
      003285 C0 05            [24]  983 	push	ar5
      003287 12 31 69         [24]  984 	lcall	_lcdgotoxy
      00328A D0 05            [24]  985 	pop	ar5
      00328C D0 06            [24]  986 	pop	ar6
      00328E D0 07            [24]  987 	pop	ar7
                                    988 ;	LCD.c:136: row=0;
      003290 90 00 9E         [24]  989 	mov	dptr,#_row
      003293 E4               [12]  990 	clr	a
      003294 F0               [24]  991 	movx	@dptr,a
      003295 02 32 1F         [24]  992 	ljmp	00108$
      003298                        993 00102$:
                                    994 ;	LCD.c:141: lcdgotoxy(row,0);    ///if reached the last column and last row, jump to the first location
      003298 90 00 9E         [24]  995 	mov	dptr,#_row
      00329B E0               [24]  996 	movx	a,@dptr
      00329C FC               [12]  997 	mov	r4,a
      00329D 90 00 06         [24]  998 	mov	dptr,#_lcdgotoxy_PARM_2
      0032A0 E4               [12]  999 	clr	a
      0032A1 F0               [24] 1000 	movx	@dptr,a
      0032A2 8C 82            [24] 1001 	mov	dpl,r4
      0032A4 C0 07            [24] 1002 	push	ar7
      0032A6 C0 06            [24] 1003 	push	ar6
      0032A8 C0 05            [24] 1004 	push	ar5
      0032AA 12 31 69         [24] 1005 	lcall	_lcdgotoxy
      0032AD D0 05            [24] 1006 	pop	ar5
      0032AF D0 06            [24] 1007 	pop	ar6
      0032B1 D0 07            [24] 1008 	pop	ar7
      0032B3 02 32 1F         [24] 1009 	ljmp	00108$
      0032B6                       1010 00119$:
      0032B6 90 00 0B         [24] 1011 	mov	dptr,#_lcdputstr_string_65536_68
      0032B9 ED               [12] 1012 	mov	a,r5
      0032BA F0               [24] 1013 	movx	@dptr,a
      0032BB EE               [12] 1014 	mov	a,r6
      0032BC A3               [24] 1015 	inc	dptr
      0032BD F0               [24] 1016 	movx	@dptr,a
      0032BE EF               [12] 1017 	mov	a,r7
      0032BF A3               [24] 1018 	inc	dptr
      0032C0 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	LCD.c:145: }
      0032C1 22               [24] 1021 	ret
                                   1022 	.area CSEG    (CODE)
                                   1023 	.area CONST   (CODE)
                                   1024 	.area XINIT   (CODE)
      00533F                       1025 __xinit__ch:
      00533F 00                    1026 	.db #0x00	; 0
      005340                       1027 __xinit__row2:
      005340 00                    1028 	.db #0x00	;  0
      005341                       1029 __xinit__column2:
      005341 00                    1030 	.db #0x00	;  0
      005342                       1031 __xinit__string:
      005342 00 00 00              1032 	.byte #0x00,#0x00,#0x00
      005345                       1033 __xinit__address1:
      005345 00                    1034 	.db #0x00	;  0
      005346                       1035 __xinit__input:
      005346 00                    1036 	.db #0x00	; 0
      005347                       1037 __xinit__count:
      005347 00                    1038 	.db #0x00	; 0
      005348                       1039 __xinit__row:
      005348 00                    1040 	.db #0x00	; 0
      005349                       1041 __xinit__column:
      005349 00                    1042 	.db #0x00	; 0
                                   1043 	.area CABS    (ABS,CODE)
