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
                                     12 	.globl _reset
                                     13 	.globl _Sequence_read
                                     14 	.globl _EEPROM_RdByte
                                     15 	.globl _PAGE_Write
                                     16 	.globl _EEPROM_WrByte
                                     17 	.globl _Delay
                                     18 	.globl _strtol
                                     19 	.globl _printf_tiny
                                     20 	.globl _printf
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _B
                                    146 	.globl _ACC
                                    147 	.globl _PSW
                                    148 	.globl _IP
                                    149 	.globl _P3
                                    150 	.globl _IE
                                    151 	.globl _P2
                                    152 	.globl _SBUF
                                    153 	.globl _SCON
                                    154 	.globl _P1
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TMOD
                                    160 	.globl _TCON
                                    161 	.globl _PCON
                                    162 	.globl _DPH
                                    163 	.globl _DPL
                                    164 	.globl _SP
                                    165 	.globl _P0
                                    166 	.globl _EECON
                                    167 	.globl _KBF
                                    168 	.globl _KBE
                                    169 	.globl _KBLS
                                    170 	.globl _BRL
                                    171 	.globl _BDRCON
                                    172 	.globl _T2MOD
                                    173 	.globl _SPDAT
                                    174 	.globl _SPSTA
                                    175 	.globl _SPCON
                                    176 	.globl _SADEN
                                    177 	.globl _SADDR
                                    178 	.globl _WDTPRG
                                    179 	.globl _WDTRST
                                    180 	.globl _P5
                                    181 	.globl _P4
                                    182 	.globl _IPH1
                                    183 	.globl _IPL1
                                    184 	.globl _IPH0
                                    185 	.globl _IPL0
                                    186 	.globl _IEN1
                                    187 	.globl _IEN0
                                    188 	.globl _CMOD
                                    189 	.globl _CL
                                    190 	.globl _CH
                                    191 	.globl _CCON
                                    192 	.globl _CCAPM4
                                    193 	.globl _CCAPM3
                                    194 	.globl _CCAPM2
                                    195 	.globl _CCAPM1
                                    196 	.globl _CCAPM0
                                    197 	.globl _CCAP4L
                                    198 	.globl _CCAP3L
                                    199 	.globl _CCAP2L
                                    200 	.globl _CCAP1L
                                    201 	.globl _CCAP0L
                                    202 	.globl _CCAP4H
                                    203 	.globl _CCAP3H
                                    204 	.globl _CCAP2H
                                    205 	.globl _CCAP1H
                                    206 	.globl _CCAP0H
                                    207 	.globl _CKCON1
                                    208 	.globl _CKCON0
                                    209 	.globl _CKRL
                                    210 	.globl _AUXR1
                                    211 	.globl _AUXR
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _T2CON
                                    217 	.globl _page_block3
                                    218 	.globl _page_block2
                                    219 	.globl _page_block1
                                    220 	.globl _word_address3
                                    221 	.globl _word_address2
                                    222 	.globl _word_address1
                                    223 	.globl _word_address
                                    224 	.globl _EEPROM_CMD_PAGE
                                    225 	.globl _EEPROM_CMD
                                    226 	.globl _getdata
                                    227 	.globl _getnumber
                                    228 	.globl _putchar
                                    229 	.globl _getchar
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
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable items in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 ;--------------------------------------------------------
                                    449 ; Stack segment in internal ram 
                                    450 ;--------------------------------------------------------
                                    451 	.area	SSEG
      000021                        452 __start__stack:
      000021                        453 	.ds	1
                                    454 
                                    455 ;--------------------------------------------------------
                                    456 ; indirectly addressable internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area ISEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; absolute internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area IABS    (ABS,DATA)
                                    463 	.area IABS    (ABS,DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; bit data
                                    466 ;--------------------------------------------------------
                                    467 	.area BSEG    (BIT)
                                    468 ;--------------------------------------------------------
                                    469 ; paged external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area PSEG    (PAG,XDATA)
                                    472 ;--------------------------------------------------------
                                    473 ; external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XSEG    (XDATA)
      000012                        476 _getdata_a_65536_57:
      000012                        477 	.ds 3
      000015                        478 _getnumber_a_65536_65:
      000015                        479 	.ds 4
      000019                        480 _main_write_address_327682_83:
      000019                        481 	.ds 2
      00001B                        482 _main_data_write_327684_87:
      00001B                        483 	.ds 2
      00001D                        484 _main_read_address_327682_102:
      00001D                        485 	.ds 2
      00001F                        486 _main_hex_start_address_327682_108:
      00001F                        487 	.ds 2
      000021                        488 _main_hex_end_address_327683_111:
      000021                        489 	.ds 2
      000023                        490 _main_page_address_327682_116:
      000023                        491 	.ds 2
      000025                        492 _main_data_to_write_327684_120:
      000025                        493 	.ds 2
      000027                        494 _putchar_c_65536_125:
      000027                        495 	.ds 2
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external initialized ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
      0000A1                        504 _EEPROM_CMD::
      0000A1                        505 	.ds 2
      0000A3                        506 _EEPROM_CMD_PAGE::
      0000A3                        507 	.ds 2
      0000A5                        508 _word_address::
      0000A5                        509 	.ds 2
      0000A7                        510 _word_address1::
      0000A7                        511 	.ds 2
      0000A9                        512 _word_address2::
      0000A9                        513 	.ds 2
      0000AB                        514 _word_address3::
      0000AB                        515 	.ds 2
      0000AD                        516 _page_block1::
      0000AD                        517 	.ds 2
      0000AF                        518 _page_block2::
      0000AF                        519 	.ds 2
      0000B1                        520 _page_block3::
      0000B1                        521 	.ds 2
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT0 (CODE)
                                    524 	.area GSINIT1 (CODE)
                                    525 	.area GSINIT2 (CODE)
                                    526 	.area GSINIT3 (CODE)
                                    527 	.area GSINIT4 (CODE)
                                    528 	.area GSINIT5 (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area CSEG    (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; interrupt vector 
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
      003000                        536 __interrupt_vect:
      003000 02 30 34         [24]  537 	ljmp	__sdcc_gsinit_startup
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.globl __sdcc_gsinit_startup
                                    546 	.globl __sdcc_program_startup
                                    547 	.globl __start__stack
                                    548 	.globl __mcs51_genXINIT
                                    549 	.globl __mcs51_genXRAMCLEAR
                                    550 	.globl __mcs51_genRAMCLEAR
                                    551 	.area GSFINAL (CODE)
      00308D 02 30 03         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      003003                        558 __sdcc_program_startup:
      003003 02 39 DC         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'getdata'
                                    567 ;------------------------------------------------------------
                                    568 ;a                         Allocated with name '_getdata_a_65536_57'
                                    569 ;z                         Allocated with name '_getdata_z_65536_57'
                                    570 ;c                         Allocated with name '_getdata_c_65536_57'
                                    571 ;b                         Allocated with name '_getdata_b_131073_59'
                                    572 ;b                         Allocated with name '_getdata_b_131073_62'
                                    573 ;------------------------------------------------------------
                                    574 ;	main.c:14: int getdata()
                                    575 ;	-----------------------------------------
                                    576 ;	 function getdata
                                    577 ;	-----------------------------------------
      0034D1                        578 _getdata:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
                                    587 ;	main.c:19: while(1)
      0034D1                        588 00105$:
                                    589 ;	main.c:21: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
      0034D1 12 44 D6         [24]  590 	lcall	_getchar
      0034D4 AE 82            [24]  591 	mov	r6,dpl
                                    592 ;	main.c:22: int b=(int)c;
      0034D6 8E 05            [24]  593 	mov	ar5,r6
      0034D8 7F 00            [12]  594 	mov	r7,#0x00
                                    595 ;	main.c:23: if (b==13)          //IF ENTER IS PUT CONTINUE
      0034DA BD 0D 05         [24]  596 	cjne	r5,#0x0d,00345$
      0034DD BF 00 02         [24]  597 	cjne	r7,#0x00,00345$
      0034E0 80 EF            [24]  598 	sjmp	00105$
      0034E2                        599 00345$:
                                    600 ;	main.c:30: a[0]=c;                 //TAKE THE CHARACTER IN ARRAY A[0]
      0034E2 90 00 12         [24]  601 	mov	dptr,#_getdata_a_65536_57
      0034E5 EE               [12]  602 	mov	a,r6
      0034E6 F0               [24]  603 	movx	@dptr,a
                                    604 ;	main.c:31: putchar(a[0]);
      0034E7 8D 82            [24]  605 	mov	dpl,r5
      0034E9 8F 83            [24]  606 	mov	dph,r7
      0034EB 12 44 B9         [24]  607 	lcall	_putchar
                                    608 ;	main.c:33: while(1)
      0034EE                        609 00111$:
                                    610 ;	main.c:35: c=getchar();        //TAKE THE CHARACTER IN VARIABLE
      0034EE 12 44 D6         [24]  611 	lcall	_getchar
      0034F1 AE 82            [24]  612 	mov	r6,dpl
                                    613 ;	main.c:36: int b=(int)c;
      0034F3 8E 05            [24]  614 	mov	ar5,r6
      0034F5 7F 00            [12]  615 	mov	r7,#0x00
                                    616 ;	main.c:37: if (b==13)
      0034F7 BD 0D 05         [24]  617 	cjne	r5,#0x0d,00346$
      0034FA BF 00 02         [24]  618 	cjne	r7,#0x00,00346$
      0034FD 80 EF            [24]  619 	sjmp	00111$
      0034FF                        620 00346$:
                                    621 ;	main.c:44: a[1]=c;                 //TAKE THE CHARACTER IN ARRAY A[1]
      0034FF 90 00 13         [24]  622 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003502 EE               [12]  623 	mov	a,r6
      003503 F0               [24]  624 	movx	@dptr,a
                                    625 ;	main.c:45: putchar(a[1]);
      003504 8D 82            [24]  626 	mov	dpl,r5
      003506 8F 83            [24]  627 	mov	dph,r7
      003508 12 44 B9         [24]  628 	lcall	_putchar
                                    629 ;	main.c:47: if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||
      00350B 90 00 12         [24]  630 	mov	dptr,#_getdata_a_65536_57
      00350E E0               [24]  631 	movx	a,@dptr
      00350F FF               [12]  632 	mov	r7,a
      003510 BF 30 03         [24]  633 	cjne	r7,#0x30,00347$
      003513 02 35 F4         [24]  634 	ljmp	00158$
      003516                        635 00347$:
      003516 90 00 12         [24]  636 	mov	dptr,#_getdata_a_65536_57
      003519 E0               [24]  637 	movx	a,@dptr
      00351A FF               [12]  638 	mov	r7,a
      00351B BF 31 03         [24]  639 	cjne	r7,#0x31,00348$
      00351E 02 35 F4         [24]  640 	ljmp	00158$
      003521                        641 00348$:
      003521 90 00 12         [24]  642 	mov	dptr,#_getdata_a_65536_57
      003524 E0               [24]  643 	movx	a,@dptr
      003525 FF               [12]  644 	mov	r7,a
      003526 BF 32 03         [24]  645 	cjne	r7,#0x32,00349$
      003529 02 35 F4         [24]  646 	ljmp	00158$
      00352C                        647 00349$:
      00352C 90 00 12         [24]  648 	mov	dptr,#_getdata_a_65536_57
      00352F E0               [24]  649 	movx	a,@dptr
      003530 FF               [12]  650 	mov	r7,a
      003531 BF 33 03         [24]  651 	cjne	r7,#0x33,00350$
      003534 02 35 F4         [24]  652 	ljmp	00158$
      003537                        653 00350$:
      003537 90 00 12         [24]  654 	mov	dptr,#_getdata_a_65536_57
      00353A E0               [24]  655 	movx	a,@dptr
      00353B FF               [12]  656 	mov	r7,a
      00353C BF 34 03         [24]  657 	cjne	r7,#0x34,00351$
      00353F 02 35 F4         [24]  658 	ljmp	00158$
      003542                        659 00351$:
      003542 90 00 12         [24]  660 	mov	dptr,#_getdata_a_65536_57
      003545 E0               [24]  661 	movx	a,@dptr
      003546 FF               [12]  662 	mov	r7,a
      003547 BF 35 03         [24]  663 	cjne	r7,#0x35,00352$
      00354A 02 35 F4         [24]  664 	ljmp	00158$
      00354D                        665 00352$:
                                    666 ;	main.c:48: a[0]=='6'||a[0]=='7'||a[0]=='8'||a[0]=='9'||a[0]=='a'||a[0]=='b'||a[0]=='c'||
      00354D 90 00 12         [24]  667 	mov	dptr,#_getdata_a_65536_57
      003550 E0               [24]  668 	movx	a,@dptr
      003551 FF               [12]  669 	mov	r7,a
      003552 BF 36 03         [24]  670 	cjne	r7,#0x36,00353$
      003555 02 35 F4         [24]  671 	ljmp	00158$
      003558                        672 00353$:
      003558 90 00 12         [24]  673 	mov	dptr,#_getdata_a_65536_57
      00355B E0               [24]  674 	movx	a,@dptr
      00355C FF               [12]  675 	mov	r7,a
      00355D BF 37 03         [24]  676 	cjne	r7,#0x37,00354$
      003560 02 35 F4         [24]  677 	ljmp	00158$
      003563                        678 00354$:
      003563 90 00 12         [24]  679 	mov	dptr,#_getdata_a_65536_57
      003566 E0               [24]  680 	movx	a,@dptr
      003567 FF               [12]  681 	mov	r7,a
      003568 BF 38 03         [24]  682 	cjne	r7,#0x38,00355$
      00356B 02 35 F4         [24]  683 	ljmp	00158$
      00356E                        684 00355$:
      00356E 90 00 12         [24]  685 	mov	dptr,#_getdata_a_65536_57
      003571 E0               [24]  686 	movx	a,@dptr
      003572 FF               [12]  687 	mov	r7,a
      003573 BF 39 03         [24]  688 	cjne	r7,#0x39,00356$
      003576 02 35 F4         [24]  689 	ljmp	00158$
      003579                        690 00356$:
      003579 90 00 12         [24]  691 	mov	dptr,#_getdata_a_65536_57
      00357C E0               [24]  692 	movx	a,@dptr
      00357D FF               [12]  693 	mov	r7,a
      00357E BF 61 02         [24]  694 	cjne	r7,#0x61,00357$
      003581 80 71            [24]  695 	sjmp	00158$
      003583                        696 00357$:
      003583 90 00 12         [24]  697 	mov	dptr,#_getdata_a_65536_57
      003586 E0               [24]  698 	movx	a,@dptr
      003587 FF               [12]  699 	mov	r7,a
      003588 BF 62 02         [24]  700 	cjne	r7,#0x62,00358$
      00358B 80 67            [24]  701 	sjmp	00158$
      00358D                        702 00358$:
      00358D 90 00 12         [24]  703 	mov	dptr,#_getdata_a_65536_57
      003590 E0               [24]  704 	movx	a,@dptr
      003591 FF               [12]  705 	mov	r7,a
      003592 BF 63 02         [24]  706 	cjne	r7,#0x63,00359$
      003595 80 5D            [24]  707 	sjmp	00158$
      003597                        708 00359$:
                                    709 ;	main.c:49: a[0]=='d'||a[0]=='e'||a[0]=='f'||a[0]=='A'||a[0]=='B'||a[0]=='C'||a[0]=='D'||
      003597 90 00 12         [24]  710 	mov	dptr,#_getdata_a_65536_57
      00359A E0               [24]  711 	movx	a,@dptr
      00359B FF               [12]  712 	mov	r7,a
      00359C BF 64 02         [24]  713 	cjne	r7,#0x64,00360$
      00359F 80 53            [24]  714 	sjmp	00158$
      0035A1                        715 00360$:
      0035A1 90 00 12         [24]  716 	mov	dptr,#_getdata_a_65536_57
      0035A4 E0               [24]  717 	movx	a,@dptr
      0035A5 FF               [12]  718 	mov	r7,a
      0035A6 BF 65 02         [24]  719 	cjne	r7,#0x65,00361$
      0035A9 80 49            [24]  720 	sjmp	00158$
      0035AB                        721 00361$:
      0035AB 90 00 12         [24]  722 	mov	dptr,#_getdata_a_65536_57
      0035AE E0               [24]  723 	movx	a,@dptr
      0035AF FF               [12]  724 	mov	r7,a
      0035B0 BF 66 02         [24]  725 	cjne	r7,#0x66,00362$
      0035B3 80 3F            [24]  726 	sjmp	00158$
      0035B5                        727 00362$:
      0035B5 90 00 12         [24]  728 	mov	dptr,#_getdata_a_65536_57
      0035B8 E0               [24]  729 	movx	a,@dptr
      0035B9 FF               [12]  730 	mov	r7,a
      0035BA BF 41 02         [24]  731 	cjne	r7,#0x41,00363$
      0035BD 80 35            [24]  732 	sjmp	00158$
      0035BF                        733 00363$:
      0035BF 90 00 12         [24]  734 	mov	dptr,#_getdata_a_65536_57
      0035C2 E0               [24]  735 	movx	a,@dptr
      0035C3 FF               [12]  736 	mov	r7,a
      0035C4 BF 42 02         [24]  737 	cjne	r7,#0x42,00364$
      0035C7 80 2B            [24]  738 	sjmp	00158$
      0035C9                        739 00364$:
      0035C9 90 00 12         [24]  740 	mov	dptr,#_getdata_a_65536_57
      0035CC E0               [24]  741 	movx	a,@dptr
      0035CD FF               [12]  742 	mov	r7,a
      0035CE BF 43 02         [24]  743 	cjne	r7,#0x43,00365$
      0035D1 80 21            [24]  744 	sjmp	00158$
      0035D3                        745 00365$:
      0035D3 90 00 12         [24]  746 	mov	dptr,#_getdata_a_65536_57
      0035D6 E0               [24]  747 	movx	a,@dptr
      0035D7 FF               [12]  748 	mov	r7,a
      0035D8 BF 44 02         [24]  749 	cjne	r7,#0x44,00366$
      0035DB 80 17            [24]  750 	sjmp	00158$
      0035DD                        751 00366$:
                                    752 ;	main.c:50: a[0]=='E'||a[0]=='F')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||
      0035DD 90 00 12         [24]  753 	mov	dptr,#_getdata_a_65536_57
      0035E0 E0               [24]  754 	movx	a,@dptr
      0035E1 FF               [12]  755 	mov	r7,a
      0035E2 BF 45 02         [24]  756 	cjne	r7,#0x45,00367$
      0035E5 80 0D            [24]  757 	sjmp	00158$
      0035E7                        758 00367$:
      0035E7 90 00 12         [24]  759 	mov	dptr,#_getdata_a_65536_57
      0035EA E0               [24]  760 	movx	a,@dptr
      0035EB FF               [12]  761 	mov	r7,a
      0035EC BF 46 02         [24]  762 	cjne	r7,#0x46,00368$
      0035EF 80 03            [24]  763 	sjmp	00369$
      0035F1                        764 00368$:
      0035F1 02 36 F3         [24]  765 	ljmp	00114$
      0035F4                        766 00369$:
      0035F4                        767 00158$:
      0035F4 90 00 13         [24]  768 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0035F7 E0               [24]  769 	movx	a,@dptr
      0035F8 FF               [12]  770 	mov	r7,a
      0035F9 BF 30 03         [24]  771 	cjne	r7,#0x30,00370$
      0035FC 02 36 D8         [24]  772 	ljmp	00113$
      0035FF                        773 00370$:
      0035FF 90 00 13         [24]  774 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003602 E0               [24]  775 	movx	a,@dptr
      003603 FF               [12]  776 	mov	r7,a
      003604 BF 31 03         [24]  777 	cjne	r7,#0x31,00371$
      003607 02 36 D8         [24]  778 	ljmp	00113$
      00360A                        779 00371$:
      00360A 90 00 13         [24]  780 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00360D E0               [24]  781 	movx	a,@dptr
      00360E FF               [12]  782 	mov	r7,a
      00360F BF 32 03         [24]  783 	cjne	r7,#0x32,00372$
      003612 02 36 D8         [24]  784 	ljmp	00113$
      003615                        785 00372$:
      003615 90 00 13         [24]  786 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003618 E0               [24]  787 	movx	a,@dptr
      003619 FF               [12]  788 	mov	r7,a
      00361A BF 33 03         [24]  789 	cjne	r7,#0x33,00373$
      00361D 02 36 D8         [24]  790 	ljmp	00113$
      003620                        791 00373$:
      003620 90 00 13         [24]  792 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003623 E0               [24]  793 	movx	a,@dptr
      003624 FF               [12]  794 	mov	r7,a
      003625 BF 34 03         [24]  795 	cjne	r7,#0x34,00374$
      003628 02 36 D8         [24]  796 	ljmp	00113$
      00362B                        797 00374$:
                                    798 ;	main.c:51: a[1]=='5'||a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||
      00362B 90 00 13         [24]  799 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00362E E0               [24]  800 	movx	a,@dptr
      00362F FF               [12]  801 	mov	r7,a
      003630 BF 35 03         [24]  802 	cjne	r7,#0x35,00375$
      003633 02 36 D8         [24]  803 	ljmp	00113$
      003636                        804 00375$:
      003636 90 00 13         [24]  805 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003639 E0               [24]  806 	movx	a,@dptr
      00363A FF               [12]  807 	mov	r7,a
      00363B BF 36 03         [24]  808 	cjne	r7,#0x36,00376$
      00363E 02 36 D8         [24]  809 	ljmp	00113$
      003641                        810 00376$:
      003641 90 00 13         [24]  811 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003644 E0               [24]  812 	movx	a,@dptr
      003645 FF               [12]  813 	mov	r7,a
      003646 BF 37 03         [24]  814 	cjne	r7,#0x37,00377$
      003649 02 36 D8         [24]  815 	ljmp	00113$
      00364C                        816 00377$:
      00364C 90 00 13         [24]  817 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00364F E0               [24]  818 	movx	a,@dptr
      003650 FF               [12]  819 	mov	r7,a
      003651 BF 38 03         [24]  820 	cjne	r7,#0x38,00378$
      003654 02 36 D8         [24]  821 	ljmp	00113$
      003657                        822 00378$:
      003657 90 00 13         [24]  823 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00365A E0               [24]  824 	movx	a,@dptr
      00365B FF               [12]  825 	mov	r7,a
      00365C BF 39 03         [24]  826 	cjne	r7,#0x39,00379$
      00365F 02 36 D8         [24]  827 	ljmp	00113$
      003662                        828 00379$:
                                    829 ;	main.c:52: a[1]=='a'||a[1]=='b'||a[1]=='c'||a[1]=='d'||a[1]=='e'||
      003662 90 00 13         [24]  830 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003665 E0               [24]  831 	movx	a,@dptr
      003666 FF               [12]  832 	mov	r7,a
      003667 BF 61 02         [24]  833 	cjne	r7,#0x61,00380$
      00366A 80 6C            [24]  834 	sjmp	00113$
      00366C                        835 00380$:
      00366C 90 00 13         [24]  836 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00366F E0               [24]  837 	movx	a,@dptr
      003670 FF               [12]  838 	mov	r7,a
      003671 BF 62 02         [24]  839 	cjne	r7,#0x62,00381$
      003674 80 62            [24]  840 	sjmp	00113$
      003676                        841 00381$:
      003676 90 00 13         [24]  842 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003679 E0               [24]  843 	movx	a,@dptr
      00367A FF               [12]  844 	mov	r7,a
      00367B BF 63 02         [24]  845 	cjne	r7,#0x63,00382$
      00367E 80 58            [24]  846 	sjmp	00113$
      003680                        847 00382$:
      003680 90 00 13         [24]  848 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003683 E0               [24]  849 	movx	a,@dptr
      003684 FF               [12]  850 	mov	r7,a
      003685 BF 64 02         [24]  851 	cjne	r7,#0x64,00383$
      003688 80 4E            [24]  852 	sjmp	00113$
      00368A                        853 00383$:
      00368A 90 00 13         [24]  854 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      00368D E0               [24]  855 	movx	a,@dptr
      00368E FF               [12]  856 	mov	r7,a
      00368F BF 65 02         [24]  857 	cjne	r7,#0x65,00384$
      003692 80 44            [24]  858 	sjmp	00113$
      003694                        859 00384$:
                                    860 ;	main.c:53: a[1]=='f'||a[1]=='A'||a[1]=='B'||a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F'))
      003694 90 00 13         [24]  861 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      003697 E0               [24]  862 	movx	a,@dptr
      003698 FF               [12]  863 	mov	r7,a
      003699 BF 66 02         [24]  864 	cjne	r7,#0x66,00385$
      00369C 80 3A            [24]  865 	sjmp	00113$
      00369E                        866 00385$:
      00369E 90 00 13         [24]  867 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036A1 E0               [24]  868 	movx	a,@dptr
      0036A2 FF               [12]  869 	mov	r7,a
      0036A3 BF 41 02         [24]  870 	cjne	r7,#0x41,00386$
      0036A6 80 30            [24]  871 	sjmp	00113$
      0036A8                        872 00386$:
      0036A8 90 00 13         [24]  873 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036AB E0               [24]  874 	movx	a,@dptr
      0036AC FF               [12]  875 	mov	r7,a
      0036AD BF 42 02         [24]  876 	cjne	r7,#0x42,00387$
      0036B0 80 26            [24]  877 	sjmp	00113$
      0036B2                        878 00387$:
      0036B2 90 00 13         [24]  879 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036B5 E0               [24]  880 	movx	a,@dptr
      0036B6 FF               [12]  881 	mov	r7,a
      0036B7 BF 43 02         [24]  882 	cjne	r7,#0x43,00388$
      0036BA 80 1C            [24]  883 	sjmp	00113$
      0036BC                        884 00388$:
      0036BC 90 00 13         [24]  885 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036BF E0               [24]  886 	movx	a,@dptr
      0036C0 FF               [12]  887 	mov	r7,a
      0036C1 BF 44 02         [24]  888 	cjne	r7,#0x44,00389$
      0036C4 80 12            [24]  889 	sjmp	00113$
      0036C6                        890 00389$:
      0036C6 90 00 13         [24]  891 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036C9 E0               [24]  892 	movx	a,@dptr
      0036CA FF               [12]  893 	mov	r7,a
      0036CB BF 45 02         [24]  894 	cjne	r7,#0x45,00390$
      0036CE 80 08            [24]  895 	sjmp	00113$
      0036D0                        896 00390$:
      0036D0 90 00 13         [24]  897 	mov	dptr,#(_getdata_a_65536_57 + 0x0001)
      0036D3 E0               [24]  898 	movx	a,@dptr
      0036D4 FF               [12]  899 	mov	r7,a
      0036D5 BF 46 1B         [24]  900 	cjne	r7,#0x46,00114$
      0036D8                        901 00113$:
                                    902 ;	main.c:55: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
      0036D8 90 00 29         [24]  903 	mov	dptr,#_strtol_PARM_2
      0036DB E4               [12]  904 	clr	a
      0036DC F0               [24]  905 	movx	@dptr,a
      0036DD A3               [24]  906 	inc	dptr
      0036DE F0               [24]  907 	movx	@dptr,a
      0036DF A3               [24]  908 	inc	dptr
      0036E0 F0               [24]  909 	movx	@dptr,a
      0036E1 90 00 2C         [24]  910 	mov	dptr,#_strtol_PARM_3
      0036E4 74 10            [12]  911 	mov	a,#0x10
      0036E6 F0               [24]  912 	movx	@dptr,a
      0036E7 E4               [12]  913 	clr	a
      0036E8 A3               [24]  914 	inc	dptr
      0036E9 F0               [24]  915 	movx	@dptr,a
      0036EA 90 00 12         [24]  916 	mov	dptr,#_getdata_a_65536_57
      0036ED 75 F0 00         [24]  917 	mov	b,#0x00
                                    918 ;	main.c:56: return (z);
      0036F0 02 44 E4         [24]  919 	ljmp	_strtol
      0036F3                        920 00114$:
                                    921 ;	main.c:59: return(-1);                 //IF VALUES NOT VALID RETURN -1
      0036F3 90 FF FF         [24]  922 	mov	dptr,#0xffff
                                    923 ;	main.c:60: }
      0036F6 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'getnumber'
                                    927 ;------------------------------------------------------------
                                    928 ;a                         Allocated with name '_getnumber_a_65536_65'
                                    929 ;z                         Allocated with name '_getnumber_z_65536_65'
                                    930 ;c                         Allocated with name '_getnumber_c_65536_65'
                                    931 ;b                         Allocated with name '_getnumber_b_131073_67'
                                    932 ;b                         Allocated with name '_getnumber_b_131073_70'
                                    933 ;b                         Allocated with name '_getnumber_b_131073_73'
                                    934 ;------------------------------------------------------------
                                    935 ;	main.c:62: int getnumber()         //FUNCTION TO INPUT VALUES FROM THE USER IN THE FORM OF A CHARACTER AND CONVERTING INTO DECIMAL EQUIVALENT
                                    936 ;	-----------------------------------------
                                    937 ;	 function getnumber
                                    938 ;	-----------------------------------------
      0036F7                        939 _getnumber:
                                    940 ;	main.c:68: while(1)
      0036F7                        941 00105$:
                                    942 ;	main.c:70: c=getchar();     //TAKE THE CHARACTER IN VARIABLE C
      0036F7 12 44 D6         [24]  943 	lcall	_getchar
      0036FA AE 82            [24]  944 	mov	r6,dpl
                                    945 ;	main.c:71: int b=(int)c;
      0036FC 8E 05            [24]  946 	mov	ar5,r6
      0036FE 7F 00            [12]  947 	mov	r7,#0x00
                                    948 ;	main.c:72: if (b==13)
      003700 BD 0D 05         [24]  949 	cjne	r5,#0x0d,00415$
      003703 BF 00 02         [24]  950 	cjne	r7,#0x00,00415$
      003706 80 EF            [24]  951 	sjmp	00105$
      003708                        952 00415$:
                                    953 ;	main.c:79: a[0]=c;
      003708 90 00 15         [24]  954 	mov	dptr,#_getnumber_a_65536_65
      00370B EE               [12]  955 	mov	a,r6
      00370C F0               [24]  956 	movx	@dptr,a
                                    957 ;	main.c:80: putchar(a[0]);
      00370D 8D 82            [24]  958 	mov	dpl,r5
      00370F 8F 83            [24]  959 	mov	dph,r7
      003711 12 44 B9         [24]  960 	lcall	_putchar
                                    961 ;	main.c:82: while(1)
      003714                        962 00111$:
                                    963 ;	main.c:84: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
      003714 12 44 D6         [24]  964 	lcall	_getchar
      003717 AE 82            [24]  965 	mov	r6,dpl
                                    966 ;	main.c:85: int b=(int)c;
      003719 8E 05            [24]  967 	mov	ar5,r6
      00371B 7F 00            [12]  968 	mov	r7,#0x00
                                    969 ;	main.c:86: if (b==13)
      00371D BD 0D 05         [24]  970 	cjne	r5,#0x0d,00416$
      003720 BF 00 02         [24]  971 	cjne	r7,#0x00,00416$
      003723 80 EF            [24]  972 	sjmp	00111$
      003725                        973 00416$:
                                    974 ;	main.c:94: a[1]=c;
      003725 90 00 16         [24]  975 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003728 EE               [12]  976 	mov	a,r6
      003729 F0               [24]  977 	movx	@dptr,a
                                    978 ;	main.c:95: putchar(a[1]);
      00372A 8D 82            [24]  979 	mov	dpl,r5
      00372C 8F 83            [24]  980 	mov	dph,r7
      00372E 12 44 B9         [24]  981 	lcall	_putchar
                                    982 ;	main.c:98: while(1)
      003731                        983 00117$:
                                    984 ;	main.c:100: c=getchar();        //TAKE THE CHARACTER IN VARIABLE C
      003731 12 44 D6         [24]  985 	lcall	_getchar
      003734 AE 82            [24]  986 	mov	r6,dpl
                                    987 ;	main.c:103: int b=(int)c;
      003736 8E 05            [24]  988 	mov	ar5,r6
      003738 7F 00            [12]  989 	mov	r7,#0x00
                                    990 ;	main.c:104: if (b==13)
      00373A BD 0D 05         [24]  991 	cjne	r5,#0x0d,00417$
      00373D BF 00 02         [24]  992 	cjne	r7,#0x00,00417$
      003740 80 EF            [24]  993 	sjmp	00117$
      003742                        994 00417$:
                                    995 ;	main.c:111: a[2]=c;
      003742 90 00 17         [24]  996 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003745 EE               [12]  997 	mov	a,r6
      003746 F0               [24]  998 	movx	@dptr,a
                                    999 ;	main.c:112: putchar(a[2]);
      003747 8D 82            [24] 1000 	mov	dpl,r5
      003749 8F 83            [24] 1001 	mov	dph,r7
      00374B 12 44 B9         [24] 1002 	lcall	_putchar
                                   1003 ;	main.c:115: if ((a[0]=='0'||a[0]=='1'||a[0]=='2'||a[0]=='3'||a[0]=='4'||a[0]=='5'||a[0]=='6'||
      00374E 90 00 15         [24] 1004 	mov	dptr,#_getnumber_a_65536_65
      003751 E0               [24] 1005 	movx	a,@dptr
      003752 FF               [12] 1006 	mov	r7,a
      003753 BF 30 02         [24] 1007 	cjne	r7,#0x30,00418$
      003756 80 49            [24] 1008 	sjmp	00158$
      003758                       1009 00418$:
      003758 90 00 15         [24] 1010 	mov	dptr,#_getnumber_a_65536_65
      00375B E0               [24] 1011 	movx	a,@dptr
      00375C FF               [12] 1012 	mov	r7,a
      00375D BF 31 02         [24] 1013 	cjne	r7,#0x31,00419$
      003760 80 3F            [24] 1014 	sjmp	00158$
      003762                       1015 00419$:
      003762 90 00 15         [24] 1016 	mov	dptr,#_getnumber_a_65536_65
      003765 E0               [24] 1017 	movx	a,@dptr
      003766 FF               [12] 1018 	mov	r7,a
      003767 BF 32 02         [24] 1019 	cjne	r7,#0x32,00420$
      00376A 80 35            [24] 1020 	sjmp	00158$
      00376C                       1021 00420$:
      00376C 90 00 15         [24] 1022 	mov	dptr,#_getnumber_a_65536_65
      00376F E0               [24] 1023 	movx	a,@dptr
      003770 FF               [12] 1024 	mov	r7,a
      003771 BF 33 02         [24] 1025 	cjne	r7,#0x33,00421$
      003774 80 2B            [24] 1026 	sjmp	00158$
      003776                       1027 00421$:
      003776 90 00 15         [24] 1028 	mov	dptr,#_getnumber_a_65536_65
      003779 E0               [24] 1029 	movx	a,@dptr
      00377A FF               [12] 1030 	mov	r7,a
      00377B BF 34 02         [24] 1031 	cjne	r7,#0x34,00422$
      00377E 80 21            [24] 1032 	sjmp	00158$
      003780                       1033 00422$:
      003780 90 00 15         [24] 1034 	mov	dptr,#_getnumber_a_65536_65
      003783 E0               [24] 1035 	movx	a,@dptr
      003784 FF               [12] 1036 	mov	r7,a
      003785 BF 35 02         [24] 1037 	cjne	r7,#0x35,00423$
      003788 80 17            [24] 1038 	sjmp	00158$
      00378A                       1039 00423$:
      00378A 90 00 15         [24] 1040 	mov	dptr,#_getnumber_a_65536_65
      00378D E0               [24] 1041 	movx	a,@dptr
      00378E FF               [12] 1042 	mov	r7,a
      00378F BF 36 02         [24] 1043 	cjne	r7,#0x36,00424$
      003792 80 0D            [24] 1044 	sjmp	00158$
      003794                       1045 00424$:
                                   1046 ;	main.c:116: a[0]=='7')&&(a[1]=='0'||a[1]=='1'||a[1]=='2'||a[1]=='3'||a[1]=='4'||a[1]=='5'||
      003794 90 00 15         [24] 1047 	mov	dptr,#_getnumber_a_65536_65
      003797 E0               [24] 1048 	movx	a,@dptr
      003798 FF               [12] 1049 	mov	r7,a
      003799 BF 37 02         [24] 1050 	cjne	r7,#0x37,00425$
      00379C 80 03            [24] 1051 	sjmp	00426$
      00379E                       1052 00425$:
      00379E 02 39 89         [24] 1053 	ljmp	00128$
      0037A1                       1054 00426$:
      0037A1                       1055 00158$:
      0037A1 90 00 16         [24] 1056 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037A4 E0               [24] 1057 	movx	a,@dptr
      0037A5 FF               [12] 1058 	mov	r7,a
      0037A6 BF 30 03         [24] 1059 	cjne	r7,#0x30,00427$
      0037A9 02 38 8A         [24] 1060 	ljmp	00180$
      0037AC                       1061 00427$:
      0037AC 90 00 16         [24] 1062 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037AF E0               [24] 1063 	movx	a,@dptr
      0037B0 FF               [12] 1064 	mov	r7,a
      0037B1 BF 31 03         [24] 1065 	cjne	r7,#0x31,00428$
      0037B4 02 38 8A         [24] 1066 	ljmp	00180$
      0037B7                       1067 00428$:
      0037B7 90 00 16         [24] 1068 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037BA E0               [24] 1069 	movx	a,@dptr
      0037BB FF               [12] 1070 	mov	r7,a
      0037BC BF 32 03         [24] 1071 	cjne	r7,#0x32,00429$
      0037BF 02 38 8A         [24] 1072 	ljmp	00180$
      0037C2                       1073 00429$:
      0037C2 90 00 16         [24] 1074 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037C5 E0               [24] 1075 	movx	a,@dptr
      0037C6 FF               [12] 1076 	mov	r7,a
      0037C7 BF 33 03         [24] 1077 	cjne	r7,#0x33,00430$
      0037CA 02 38 8A         [24] 1078 	ljmp	00180$
      0037CD                       1079 00430$:
      0037CD 90 00 16         [24] 1080 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037D0 E0               [24] 1081 	movx	a,@dptr
      0037D1 FF               [12] 1082 	mov	r7,a
      0037D2 BF 34 03         [24] 1083 	cjne	r7,#0x34,00431$
      0037D5 02 38 8A         [24] 1084 	ljmp	00180$
      0037D8                       1085 00431$:
      0037D8 90 00 16         [24] 1086 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037DB E0               [24] 1087 	movx	a,@dptr
      0037DC FF               [12] 1088 	mov	r7,a
      0037DD BF 35 03         [24] 1089 	cjne	r7,#0x35,00432$
      0037E0 02 38 8A         [24] 1090 	ljmp	00180$
      0037E3                       1091 00432$:
                                   1092 ;	main.c:117: a[1]=='6'||a[1]=='7'||a[1]=='8'||a[1]=='9'||a[1]=='a'||a[1]=='b'||
      0037E3 90 00 16         [24] 1093 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037E6 E0               [24] 1094 	movx	a,@dptr
      0037E7 FF               [12] 1095 	mov	r7,a
      0037E8 BF 36 03         [24] 1096 	cjne	r7,#0x36,00433$
      0037EB 02 38 8A         [24] 1097 	ljmp	00180$
      0037EE                       1098 00433$:
      0037EE 90 00 16         [24] 1099 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037F1 E0               [24] 1100 	movx	a,@dptr
      0037F2 FF               [12] 1101 	mov	r7,a
      0037F3 BF 37 03         [24] 1102 	cjne	r7,#0x37,00434$
      0037F6 02 38 8A         [24] 1103 	ljmp	00180$
      0037F9                       1104 00434$:
      0037F9 90 00 16         [24] 1105 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0037FC E0               [24] 1106 	movx	a,@dptr
      0037FD FF               [12] 1107 	mov	r7,a
      0037FE BF 38 03         [24] 1108 	cjne	r7,#0x38,00435$
      003801 02 38 8A         [24] 1109 	ljmp	00180$
      003804                       1110 00435$:
      003804 90 00 16         [24] 1111 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003807 E0               [24] 1112 	movx	a,@dptr
      003808 FF               [12] 1113 	mov	r7,a
      003809 BF 39 03         [24] 1114 	cjne	r7,#0x39,00436$
      00380C 02 38 8A         [24] 1115 	ljmp	00180$
      00380F                       1116 00436$:
      00380F 90 00 16         [24] 1117 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003812 E0               [24] 1118 	movx	a,@dptr
      003813 FF               [12] 1119 	mov	r7,a
      003814 BF 61 02         [24] 1120 	cjne	r7,#0x61,00437$
      003817 80 71            [24] 1121 	sjmp	00180$
      003819                       1122 00437$:
      003819 90 00 16         [24] 1123 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      00381C E0               [24] 1124 	movx	a,@dptr
      00381D FF               [12] 1125 	mov	r7,a
      00381E BF 62 02         [24] 1126 	cjne	r7,#0x62,00438$
      003821 80 67            [24] 1127 	sjmp	00180$
      003823                       1128 00438$:
                                   1129 ;	main.c:118: a[1]=='c'||a[1]=='d'||a[1]=='e'||a[1]=='f'||a[1]=='A'||a[1]=='B'||
      003823 90 00 16         [24] 1130 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003826 E0               [24] 1131 	movx	a,@dptr
      003827 FF               [12] 1132 	mov	r7,a
      003828 BF 63 02         [24] 1133 	cjne	r7,#0x63,00439$
      00382B 80 5D            [24] 1134 	sjmp	00180$
      00382D                       1135 00439$:
      00382D 90 00 16         [24] 1136 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003830 E0               [24] 1137 	movx	a,@dptr
      003831 FF               [12] 1138 	mov	r7,a
      003832 BF 64 02         [24] 1139 	cjne	r7,#0x64,00440$
      003835 80 53            [24] 1140 	sjmp	00180$
      003837                       1141 00440$:
      003837 90 00 16         [24] 1142 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      00383A E0               [24] 1143 	movx	a,@dptr
      00383B FF               [12] 1144 	mov	r7,a
      00383C BF 65 02         [24] 1145 	cjne	r7,#0x65,00441$
      00383F 80 49            [24] 1146 	sjmp	00180$
      003841                       1147 00441$:
      003841 90 00 16         [24] 1148 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003844 E0               [24] 1149 	movx	a,@dptr
      003845 FF               [12] 1150 	mov	r7,a
      003846 BF 66 02         [24] 1151 	cjne	r7,#0x66,00442$
      003849 80 3F            [24] 1152 	sjmp	00180$
      00384B                       1153 00442$:
      00384B 90 00 16         [24] 1154 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      00384E E0               [24] 1155 	movx	a,@dptr
      00384F FF               [12] 1156 	mov	r7,a
      003850 BF 41 02         [24] 1157 	cjne	r7,#0x41,00443$
      003853 80 35            [24] 1158 	sjmp	00180$
      003855                       1159 00443$:
      003855 90 00 16         [24] 1160 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003858 E0               [24] 1161 	movx	a,@dptr
      003859 FF               [12] 1162 	mov	r7,a
      00385A BF 42 02         [24] 1163 	cjne	r7,#0x42,00444$
      00385D 80 2B            [24] 1164 	sjmp	00180$
      00385F                       1165 00444$:
                                   1166 ;	main.c:119: a[1]=='C'||a[1]=='D'||a[1]=='E'||a[1]=='F')&&(a[2]=='0'||a[2]=='1'||
      00385F 90 00 16         [24] 1167 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003862 E0               [24] 1168 	movx	a,@dptr
      003863 FF               [12] 1169 	mov	r7,a
      003864 BF 43 02         [24] 1170 	cjne	r7,#0x43,00445$
      003867 80 21            [24] 1171 	sjmp	00180$
      003869                       1172 00445$:
      003869 90 00 16         [24] 1173 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      00386C E0               [24] 1174 	movx	a,@dptr
      00386D FF               [12] 1175 	mov	r7,a
      00386E BF 44 02         [24] 1176 	cjne	r7,#0x44,00446$
      003871 80 17            [24] 1177 	sjmp	00180$
      003873                       1178 00446$:
      003873 90 00 16         [24] 1179 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003876 E0               [24] 1180 	movx	a,@dptr
      003877 FF               [12] 1181 	mov	r7,a
      003878 BF 45 02         [24] 1182 	cjne	r7,#0x45,00447$
      00387B 80 0D            [24] 1183 	sjmp	00180$
      00387D                       1184 00447$:
      00387D 90 00 16         [24] 1185 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      003880 E0               [24] 1186 	movx	a,@dptr
      003881 FF               [12] 1187 	mov	r7,a
      003882 BF 46 02         [24] 1188 	cjne	r7,#0x46,00448$
      003885 80 03            [24] 1189 	sjmp	00449$
      003887                       1190 00448$:
      003887 02 39 89         [24] 1191 	ljmp	00128$
      00388A                       1192 00449$:
      00388A                       1193 00180$:
      00388A 90 00 17         [24] 1194 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      00388D E0               [24] 1195 	movx	a,@dptr
      00388E FF               [12] 1196 	mov	r7,a
      00388F BF 30 03         [24] 1197 	cjne	r7,#0x30,00450$
      003892 02 39 6E         [24] 1198 	ljmp	00127$
      003895                       1199 00450$:
      003895 90 00 17         [24] 1200 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003898 E0               [24] 1201 	movx	a,@dptr
      003899 FF               [12] 1202 	mov	r7,a
      00389A BF 31 03         [24] 1203 	cjne	r7,#0x31,00451$
      00389D 02 39 6E         [24] 1204 	ljmp	00127$
      0038A0                       1205 00451$:
                                   1206 ;	main.c:120: a[2]=='2'||a[2]=='3'||a[2]=='4'||a[2]=='5'||a[2]=='6'||a[2]=='7'||
      0038A0 90 00 17         [24] 1207 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038A3 E0               [24] 1208 	movx	a,@dptr
      0038A4 FF               [12] 1209 	mov	r7,a
      0038A5 BF 32 03         [24] 1210 	cjne	r7,#0x32,00452$
      0038A8 02 39 6E         [24] 1211 	ljmp	00127$
      0038AB                       1212 00452$:
      0038AB 90 00 17         [24] 1213 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038AE E0               [24] 1214 	movx	a,@dptr
      0038AF FF               [12] 1215 	mov	r7,a
      0038B0 BF 33 03         [24] 1216 	cjne	r7,#0x33,00453$
      0038B3 02 39 6E         [24] 1217 	ljmp	00127$
      0038B6                       1218 00453$:
      0038B6 90 00 17         [24] 1219 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038B9 E0               [24] 1220 	movx	a,@dptr
      0038BA FF               [12] 1221 	mov	r7,a
      0038BB BF 34 03         [24] 1222 	cjne	r7,#0x34,00454$
      0038BE 02 39 6E         [24] 1223 	ljmp	00127$
      0038C1                       1224 00454$:
      0038C1 90 00 17         [24] 1225 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038C4 E0               [24] 1226 	movx	a,@dptr
      0038C5 FF               [12] 1227 	mov	r7,a
      0038C6 BF 35 03         [24] 1228 	cjne	r7,#0x35,00455$
      0038C9 02 39 6E         [24] 1229 	ljmp	00127$
      0038CC                       1230 00455$:
      0038CC 90 00 17         [24] 1231 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038CF E0               [24] 1232 	movx	a,@dptr
      0038D0 FF               [12] 1233 	mov	r7,a
      0038D1 BF 36 03         [24] 1234 	cjne	r7,#0x36,00456$
      0038D4 02 39 6E         [24] 1235 	ljmp	00127$
      0038D7                       1236 00456$:
      0038D7 90 00 17         [24] 1237 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038DA E0               [24] 1238 	movx	a,@dptr
      0038DB FF               [12] 1239 	mov	r7,a
      0038DC BF 37 03         [24] 1240 	cjne	r7,#0x37,00457$
      0038DF 02 39 6E         [24] 1241 	ljmp	00127$
      0038E2                       1242 00457$:
                                   1243 ;	main.c:121: a[2]=='8'||a[2]=='9'||a[2]=='A'||a[2]=='B'||a[2]=='C'||a[2]=='D'||
      0038E2 90 00 17         [24] 1244 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038E5 E0               [24] 1245 	movx	a,@dptr
      0038E6 FF               [12] 1246 	mov	r7,a
      0038E7 BF 38 03         [24] 1247 	cjne	r7,#0x38,00458$
      0038EA 02 39 6E         [24] 1248 	ljmp	00127$
      0038ED                       1249 00458$:
      0038ED 90 00 17         [24] 1250 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038F0 E0               [24] 1251 	movx	a,@dptr
      0038F1 FF               [12] 1252 	mov	r7,a
      0038F2 BF 39 03         [24] 1253 	cjne	r7,#0x39,00459$
      0038F5 02 39 6E         [24] 1254 	ljmp	00127$
      0038F8                       1255 00459$:
      0038F8 90 00 17         [24] 1256 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0038FB E0               [24] 1257 	movx	a,@dptr
      0038FC FF               [12] 1258 	mov	r7,a
      0038FD BF 41 02         [24] 1259 	cjne	r7,#0x41,00460$
      003900 80 6C            [24] 1260 	sjmp	00127$
      003902                       1261 00460$:
      003902 90 00 17         [24] 1262 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003905 E0               [24] 1263 	movx	a,@dptr
      003906 FF               [12] 1264 	mov	r7,a
      003907 BF 42 02         [24] 1265 	cjne	r7,#0x42,00461$
      00390A 80 62            [24] 1266 	sjmp	00127$
      00390C                       1267 00461$:
      00390C 90 00 17         [24] 1268 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      00390F E0               [24] 1269 	movx	a,@dptr
      003910 FF               [12] 1270 	mov	r7,a
      003911 BF 43 02         [24] 1271 	cjne	r7,#0x43,00462$
      003914 80 58            [24] 1272 	sjmp	00127$
      003916                       1273 00462$:
      003916 90 00 17         [24] 1274 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003919 E0               [24] 1275 	movx	a,@dptr
      00391A FF               [12] 1276 	mov	r7,a
      00391B BF 44 02         [24] 1277 	cjne	r7,#0x44,00463$
      00391E 80 4E            [24] 1278 	sjmp	00127$
      003920                       1279 00463$:
                                   1280 ;	main.c:122: a[2]=='E'||a[2]=='F'||a[2]=='a'||a[2]=='b'||a[2]=='c'||a[2]=='d'||a[2]=='e'||a[2]=='f'))
      003920 90 00 17         [24] 1281 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003923 E0               [24] 1282 	movx	a,@dptr
      003924 FF               [12] 1283 	mov	r7,a
      003925 BF 45 02         [24] 1284 	cjne	r7,#0x45,00464$
      003928 80 44            [24] 1285 	sjmp	00127$
      00392A                       1286 00464$:
      00392A 90 00 17         [24] 1287 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      00392D E0               [24] 1288 	movx	a,@dptr
      00392E FF               [12] 1289 	mov	r7,a
      00392F BF 46 02         [24] 1290 	cjne	r7,#0x46,00465$
      003932 80 3A            [24] 1291 	sjmp	00127$
      003934                       1292 00465$:
      003934 90 00 17         [24] 1293 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003937 E0               [24] 1294 	movx	a,@dptr
      003938 FF               [12] 1295 	mov	r7,a
      003939 BF 61 02         [24] 1296 	cjne	r7,#0x61,00466$
      00393C 80 30            [24] 1297 	sjmp	00127$
      00393E                       1298 00466$:
      00393E 90 00 17         [24] 1299 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003941 E0               [24] 1300 	movx	a,@dptr
      003942 FF               [12] 1301 	mov	r7,a
      003943 BF 62 02         [24] 1302 	cjne	r7,#0x62,00467$
      003946 80 26            [24] 1303 	sjmp	00127$
      003948                       1304 00467$:
      003948 90 00 17         [24] 1305 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      00394B E0               [24] 1306 	movx	a,@dptr
      00394C FF               [12] 1307 	mov	r7,a
      00394D BF 63 02         [24] 1308 	cjne	r7,#0x63,00468$
      003950 80 1C            [24] 1309 	sjmp	00127$
      003952                       1310 00468$:
      003952 90 00 17         [24] 1311 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003955 E0               [24] 1312 	movx	a,@dptr
      003956 FF               [12] 1313 	mov	r7,a
      003957 BF 64 02         [24] 1314 	cjne	r7,#0x64,00469$
      00395A 80 12            [24] 1315 	sjmp	00127$
      00395C                       1316 00469$:
      00395C 90 00 17         [24] 1317 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      00395F E0               [24] 1318 	movx	a,@dptr
      003960 FF               [12] 1319 	mov	r7,a
      003961 BF 65 02         [24] 1320 	cjne	r7,#0x65,00470$
      003964 80 08            [24] 1321 	sjmp	00127$
      003966                       1322 00470$:
      003966 90 00 17         [24] 1323 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      003969 E0               [24] 1324 	movx	a,@dptr
      00396A FF               [12] 1325 	mov	r7,a
      00396B BF 66 1B         [24] 1326 	cjne	r7,#0x66,00128$
      00396E                       1327 00127$:
                                   1328 ;	main.c:124: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
      00396E 90 00 29         [24] 1329 	mov	dptr,#_strtol_PARM_2
      003971 E4               [12] 1330 	clr	a
      003972 F0               [24] 1331 	movx	@dptr,a
      003973 A3               [24] 1332 	inc	dptr
      003974 F0               [24] 1333 	movx	@dptr,a
      003975 A3               [24] 1334 	inc	dptr
      003976 F0               [24] 1335 	movx	@dptr,a
      003977 90 00 2C         [24] 1336 	mov	dptr,#_strtol_PARM_3
      00397A 74 10            [12] 1337 	mov	a,#0x10
      00397C F0               [24] 1338 	movx	@dptr,a
      00397D E4               [12] 1339 	clr	a
      00397E A3               [24] 1340 	inc	dptr
      00397F F0               [24] 1341 	movx	@dptr,a
      003980 90 00 15         [24] 1342 	mov	dptr,#_getnumber_a_65536_65
      003983 75 F0 00         [24] 1343 	mov	b,#0x00
                                   1344 ;	main.c:125: return (z);
      003986 02 44 E4         [24] 1345 	ljmp	_strtol
      003989                       1346 00128$:
                                   1347 ;	main.c:127: else if ((a[0]=='\n'&&a[0]=='\r')||(a[1]=='\n'&&a[1]=='\r')||(a[2]=='\n'&&a[2]=='\r'))
      003989 90 00 15         [24] 1348 	mov	dptr,#_getnumber_a_65536_65
      00398C E0               [24] 1349 	movx	a,@dptr
      00398D FF               [12] 1350 	mov	r7,a
      00398E BF 0A 0A         [24] 1351 	cjne	r7,#0x0a,00124$
      003991 90 00 15         [24] 1352 	mov	dptr,#_getnumber_a_65536_65
      003994 E0               [24] 1353 	movx	a,@dptr
      003995 FF               [12] 1354 	mov	r7,a
      003996 BF 0D 02         [24] 1355 	cjne	r7,#0x0d,00475$
      003999 80 22            [24] 1356 	sjmp	00119$
      00399B                       1357 00475$:
      00399B                       1358 00124$:
      00399B 90 00 16         [24] 1359 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      00399E E0               [24] 1360 	movx	a,@dptr
      00399F FF               [12] 1361 	mov	r7,a
      0039A0 BF 0A 0A         [24] 1362 	cjne	r7,#0x0a,00126$
      0039A3 90 00 16         [24] 1363 	mov	dptr,#(_getnumber_a_65536_65 + 0x0001)
      0039A6 E0               [24] 1364 	movx	a,@dptr
      0039A7 FF               [12] 1365 	mov	r7,a
      0039A8 BF 0D 02         [24] 1366 	cjne	r7,#0x0d,00478$
      0039AB 80 10            [24] 1367 	sjmp	00119$
      0039AD                       1368 00478$:
      0039AD                       1369 00126$:
      0039AD 90 00 17         [24] 1370 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0039B0 E0               [24] 1371 	movx	a,@dptr
      0039B1 FF               [12] 1372 	mov	r7,a
      0039B2 BF 0A 23         [24] 1373 	cjne	r7,#0x0a,00120$
      0039B5 90 00 17         [24] 1374 	mov	dptr,#(_getnumber_a_65536_65 + 0x0002)
      0039B8 E0               [24] 1375 	movx	a,@dptr
      0039B9 FF               [12] 1376 	mov	r7,a
      0039BA BF 0D 1B         [24] 1377 	cjne	r7,#0x0d,00120$
      0039BD                       1378 00119$:
                                   1379 ;	main.c:129: z=(int)strtol(a,NULL,16);   //FUNCTION TO CONVERT CHARACTER HEX STRING TO DECIMAL/HEX EQUIVALENT
      0039BD 90 00 29         [24] 1380 	mov	dptr,#_strtol_PARM_2
      0039C0 E4               [12] 1381 	clr	a
      0039C1 F0               [24] 1382 	movx	@dptr,a
      0039C2 A3               [24] 1383 	inc	dptr
      0039C3 F0               [24] 1384 	movx	@dptr,a
      0039C4 A3               [24] 1385 	inc	dptr
      0039C5 F0               [24] 1386 	movx	@dptr,a
      0039C6 90 00 2C         [24] 1387 	mov	dptr,#_strtol_PARM_3
      0039C9 74 10            [12] 1388 	mov	a,#0x10
      0039CB F0               [24] 1389 	movx	@dptr,a
      0039CC E4               [12] 1390 	clr	a
      0039CD A3               [24] 1391 	inc	dptr
      0039CE F0               [24] 1392 	movx	@dptr,a
      0039CF 90 00 15         [24] 1393 	mov	dptr,#_getnumber_a_65536_65
      0039D2 75 F0 00         [24] 1394 	mov	b,#0x00
                                   1395 ;	main.c:130: return (z);
      0039D5 02 44 E4         [24] 1396 	ljmp	_strtol
      0039D8                       1397 00120$:
                                   1398 ;	main.c:133: return(-1);
      0039D8 90 FF FF         [24] 1399 	mov	dptr,#0xffff
                                   1400 ;	main.c:134: }
      0039DB 22               [24] 1401 	ret
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'main'
                                   1404 ;------------------------------------------------------------
                                   1405 ;input                     Allocated with name '_main_input_131073_79'
                                   1406 ;write_address             Allocated with name '_main_write_address_327682_83'
                                   1407 ;internal_address          Allocated with name '_main_internal_address_327683_86'
                                   1408 ;page_selection_bits       Allocated with name '_main_page_selection_bits_327683_86'
                                   1409 ;page_block                Allocated with name '_main_page_block_327683_86'
                                   1410 ;data_write                Allocated with name '_main_data_write_327684_87'
                                   1411 ;i                         Allocated with name '_main_i_327685_90'
                                   1412 ;read_address              Allocated with name '_main_read_address_327682_102'
                                   1413 ;internal_address          Allocated with name '_main_internal_address_327683_105'
                                   1414 ;page_selection_bits       Allocated with name '_main_page_selection_bits_327683_105'
                                   1415 ;page_block                Allocated with name '_main_page_block_327683_105'
                                   1416 ;x1                        Allocated with name '_main_x1_327684_106'
                                   1417 ;hex_start_address         Allocated with name '_main_hex_start_address_327682_108'
                                   1418 ;hex_end_address           Allocated with name '_main_hex_end_address_327683_111'
                                   1419 ;page_address              Allocated with name '_main_page_address_327682_116'
                                   1420 ;internal_address3         Allocated with name '_main_internal_address3_327683_119'
                                   1421 ;page_selection_bits3      Allocated with name '_main_page_selection_bits3_327683_119'
                                   1422 ;data_to_write             Allocated with name '_main_data_to_write_327684_120'
                                   1423 ;------------------------------------------------------------
                                   1424 ;	main.c:138: void main()
                                   1425 ;	-----------------------------------------
                                   1426 ;	 function main
                                   1427 ;	-----------------------------------------
      0039DC                       1428 _main:
                                   1429 ;	main.c:140: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");    //PRINT STATEMENTS FOR THE USER INTERFACE
      0039DC 74 73            [12] 1430 	mov	a,#___str_0
      0039DE C0 E0            [24] 1431 	push	acc
      0039E0 74 59            [12] 1432 	mov	a,#(___str_0 >> 8)
      0039E2 C0 E0            [24] 1433 	push	acc
      0039E4 12 47 2C         [24] 1434 	lcall	_printf_tiny
      0039E7 15 81            [12] 1435 	dec	sp
      0039E9 15 81            [12] 1436 	dec	sp
                                   1437 ;	main.c:141: printf_tiny("\n\r~~~~~~~~~~~~~~~~~I2C~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
      0039EB 74 A8            [12] 1438 	mov	a,#___str_1
      0039ED C0 E0            [24] 1439 	push	acc
      0039EF 74 59            [12] 1440 	mov	a,#(___str_1 >> 8)
      0039F1 C0 E0            [24] 1441 	push	acc
      0039F3 12 47 2C         [24] 1442 	lcall	_printf_tiny
      0039F6 15 81            [12] 1443 	dec	sp
      0039F8 15 81            [12] 1444 	dec	sp
                                   1445 ;	main.c:142: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
      0039FA 74 73            [12] 1446 	mov	a,#___str_0
      0039FC C0 E0            [24] 1447 	push	acc
      0039FE 74 59            [12] 1448 	mov	a,#(___str_0 >> 8)
      003A00 C0 E0            [24] 1449 	push	acc
      003A02 12 47 2C         [24] 1450 	lcall	_printf_tiny
      003A05 15 81            [12] 1451 	dec	sp
      003A07 15 81            [12] 1452 	dec	sp
                                   1453 ;	main.c:143: printf_tiny("\n\rThe following commands will be performed \n\r");
      003A09 74 DD            [12] 1454 	mov	a,#___str_2
      003A0B C0 E0            [24] 1455 	push	acc
      003A0D 74 59            [12] 1456 	mov	a,#(___str_2 >> 8)
      003A0F C0 E0            [24] 1457 	push	acc
      003A11 12 47 2C         [24] 1458 	lcall	_printf_tiny
      003A14 15 81            [12] 1459 	dec	sp
      003A16 15 81            [12] 1460 	dec	sp
                                   1461 ;	main.c:144: printf_tiny("\n\rW-Write Byte \n\r");
      003A18 74 0B            [12] 1462 	mov	a,#___str_3
      003A1A C0 E0            [24] 1463 	push	acc
      003A1C 74 5A            [12] 1464 	mov	a,#(___str_3 >> 8)
      003A1E C0 E0            [24] 1465 	push	acc
      003A20 12 47 2C         [24] 1466 	lcall	_printf_tiny
      003A23 15 81            [12] 1467 	dec	sp
      003A25 15 81            [12] 1468 	dec	sp
                                   1469 ;	main.c:145: printf_tiny("\n\rR-Read Byte \n\r");
      003A27 74 1D            [12] 1470 	mov	a,#___str_4
      003A29 C0 E0            [24] 1471 	push	acc
      003A2B 74 5A            [12] 1472 	mov	a,#(___str_4 >> 8)
      003A2D C0 E0            [24] 1473 	push	acc
      003A2F 12 47 2C         [24] 1474 	lcall	_printf_tiny
      003A32 15 81            [12] 1475 	dec	sp
      003A34 15 81            [12] 1476 	dec	sp
                                   1477 ;	main.c:146: printf_tiny("\n\rH-Hex Dump \n\r");
      003A36 74 2E            [12] 1478 	mov	a,#___str_5
      003A38 C0 E0            [24] 1479 	push	acc
      003A3A 74 5A            [12] 1480 	mov	a,#(___str_5 >> 8)
      003A3C C0 E0            [24] 1481 	push	acc
      003A3E 12 47 2C         [24] 1482 	lcall	_printf_tiny
      003A41 15 81            [12] 1483 	dec	sp
      003A43 15 81            [12] 1484 	dec	sp
                                   1485 ;	main.c:147: printf_tiny("\n\rP-Page Write \n\r");
      003A45 74 3E            [12] 1486 	mov	a,#___str_6
      003A47 C0 E0            [24] 1487 	push	acc
      003A49 74 5A            [12] 1488 	mov	a,#(___str_6 >> 8)
      003A4B C0 E0            [24] 1489 	push	acc
      003A4D 12 47 2C         [24] 1490 	lcall	_printf_tiny
      003A50 15 81            [12] 1491 	dec	sp
      003A52 15 81            [12] 1492 	dec	sp
                                   1493 ;	main.c:148: printf_tiny("\n\rE-Reset Eeprom \n\r");
      003A54 74 50            [12] 1494 	mov	a,#___str_7
      003A56 C0 E0            [24] 1495 	push	acc
      003A58 74 5A            [12] 1496 	mov	a,#(___str_7 >> 8)
      003A5A C0 E0            [24] 1497 	push	acc
      003A5C 12 47 2C         [24] 1498 	lcall	_printf_tiny
      003A5F 15 81            [12] 1499 	dec	sp
      003A61 15 81            [12] 1500 	dec	sp
                                   1501 ;	main.c:150: while(1)
      003A63                       1502 00189$:
                                   1503 ;	main.c:152: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r"); //PRINT STATEMENTS FOR THE SELECTING THE KEY
      003A63 74 73            [12] 1504 	mov	a,#___str_0
      003A65 C0 E0            [24] 1505 	push	acc
      003A67 74 59            [12] 1506 	mov	a,#(___str_0 >> 8)
      003A69 C0 E0            [24] 1507 	push	acc
      003A6B 12 47 2C         [24] 1508 	lcall	_printf_tiny
      003A6E 15 81            [12] 1509 	dec	sp
      003A70 15 81            [12] 1510 	dec	sp
                                   1511 ;	main.c:153: printf_tiny("\n\rEnter The Key\n\r ");
      003A72 74 64            [12] 1512 	mov	a,#___str_8
      003A74 C0 E0            [24] 1513 	push	acc
      003A76 74 5A            [12] 1514 	mov	a,#(___str_8 >> 8)
      003A78 C0 E0            [24] 1515 	push	acc
      003A7A 12 47 2C         [24] 1516 	lcall	_printf_tiny
      003A7D 15 81            [12] 1517 	dec	sp
      003A7F 15 81            [12] 1518 	dec	sp
                                   1519 ;	main.c:154: printf_tiny("\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\r");
      003A81 74 73            [12] 1520 	mov	a,#___str_0
      003A83 C0 E0            [24] 1521 	push	acc
      003A85 74 59            [12] 1522 	mov	a,#(___str_0 >> 8)
      003A87 C0 E0            [24] 1523 	push	acc
      003A89 12 47 2C         [24] 1524 	lcall	_printf_tiny
      003A8C 15 81            [12] 1525 	dec	sp
      003A8E 15 81            [12] 1526 	dec	sp
                                   1527 ;	main.c:156: input=getchar();                          //TAKE INPUT IN FORM A CHARACTER FORM USER
      003A90 12 44 D6         [24] 1528 	lcall	_getchar
      003A93 AE 82            [24] 1529 	mov	r6,dpl
                                   1530 ;	main.c:157: putchar(input);
      003A95 8E 05            [24] 1531 	mov	ar5,r6
      003A97 7F 00            [12] 1532 	mov	r7,#0x00
      003A99 8D 82            [24] 1533 	mov	dpl,r5
      003A9B 8F 83            [24] 1534 	mov	dph,r7
      003A9D C0 06            [24] 1535 	push	ar6
      003A9F 12 44 B9         [24] 1536 	lcall	_putchar
      003AA2 D0 06            [24] 1537 	pop	ar6
                                   1538 ;	main.c:159: if(input!='\n' && input!='\r')
      003AA4 BE 0A 02         [24] 1539 	cjne	r6,#0x0a,00457$
      003AA7 80 BA            [24] 1540 	sjmp	00189$
      003AA9                       1541 00457$:
      003AA9 BE 0D 02         [24] 1542 	cjne	r6,#0x0d,00458$
      003AAC 80 B5            [24] 1543 	sjmp	00189$
      003AAE                       1544 00458$:
                                   1545 ;	main.c:161: switch(input)
      003AAE BE 45 03         [24] 1546 	cjne	r6,#0x45,00459$
      003AB1 02 44 6E         [24] 1547 	ljmp	00182$
      003AB4                       1548 00459$:
      003AB4 BE 48 03         [24] 1549 	cjne	r6,#0x48,00460$
      003AB7 02 3F 67         [24] 1550 	ljmp	00138$
      003ABA                       1551 00460$:
      003ABA BE 50 03         [24] 1552 	cjne	r6,#0x50,00461$
      003ABD 02 41 FC         [24] 1553 	ljmp	00161$
      003AC0                       1554 00461$:
      003AC0 BE 52 03         [24] 1555 	cjne	r6,#0x52,00462$
      003AC3 02 3D DB         [24] 1556 	ljmp	00127$
      003AC6                       1557 00462$:
      003AC6 BE 57 02         [24] 1558 	cjne	r6,#0x57,00463$
      003AC9 80 03            [24] 1559 	sjmp	00464$
      003ACB                       1560 00463$:
      003ACB 02 44 A1         [24] 1561 	ljmp	00183$
      003ACE                       1562 00464$:
                                   1563 ;	main.c:165: printf_tiny("\n\r********************************************* \n\r");
      003ACE 74 77            [12] 1564 	mov	a,#___str_9
      003AD0 C0 E0            [24] 1565 	push	acc
      003AD2 74 5A            [12] 1566 	mov	a,#(___str_9 >> 8)
      003AD4 C0 E0            [24] 1567 	push	acc
      003AD6 12 47 2C         [24] 1568 	lcall	_printf_tiny
      003AD9 15 81            [12] 1569 	dec	sp
      003ADB 15 81            [12] 1570 	dec	sp
                                   1571 ;	main.c:166: printf_tiny("\n\r\t\tWRITE BYTE\n\r ");
      003ADD 74 AA            [12] 1572 	mov	a,#___str_10
      003ADF C0 E0            [24] 1573 	push	acc
      003AE1 74 5A            [12] 1574 	mov	a,#(___str_10 >> 8)
      003AE3 C0 E0            [24] 1575 	push	acc
      003AE5 12 47 2C         [24] 1576 	lcall	_printf_tiny
      003AE8 15 81            [12] 1577 	dec	sp
      003AEA 15 81            [12] 1578 	dec	sp
                                   1579 ;	main.c:167: printf_tiny("\n\r********************************************* \n\r");
      003AEC 74 77            [12] 1580 	mov	a,#___str_9
      003AEE C0 E0            [24] 1581 	push	acc
      003AF0 74 5A            [12] 1582 	mov	a,#(___str_9 >> 8)
      003AF2 C0 E0            [24] 1583 	push	acc
      003AF4 12 47 2C         [24] 1584 	lcall	_printf_tiny
      003AF7 15 81            [12] 1585 	dec	sp
      003AF9 15 81            [12] 1586 	dec	sp
                                   1587 ;	main.c:168: printf_tiny("\n\rEnter the 3 Digit Write Address\n\r");
      003AFB 74 BC            [12] 1588 	mov	a,#___str_11
      003AFD C0 E0            [24] 1589 	push	acc
      003AFF 74 5A            [12] 1590 	mov	a,#(___str_11 >> 8)
      003B01 C0 E0            [24] 1591 	push	acc
      003B03 12 47 2C         [24] 1592 	lcall	_printf_tiny
      003B06 15 81            [12] 1593 	dec	sp
      003B08 15 81            [12] 1594 	dec	sp
                                   1595 ;	main.c:169: int write_address=getnumber();                                  //ACCEPTING THE WRITE ADDRESS
      003B0A 12 36 F7         [24] 1596 	lcall	_getnumber
      003B0D E5 82            [12] 1597 	mov	a,dpl
      003B0F 85 83 F0         [24] 1598 	mov	b,dph
      003B12 90 00 19         [24] 1599 	mov	dptr,#_main_write_address_327682_83
      003B15 F0               [24] 1600 	movx	@dptr,a
      003B16 E5 F0            [12] 1601 	mov	a,b
      003B18 A3               [24] 1602 	inc	dptr
      003B19 F0               [24] 1603 	movx	@dptr,a
                                   1604 ;	main.c:170: while (write_address==-1)                                       //PRINT WRITE ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      003B1A                       1605 00102$:
      003B1A 90 00 19         [24] 1606 	mov	dptr,#_main_write_address_327682_83
      003B1D E0               [24] 1607 	movx	a,@dptr
      003B1E FE               [12] 1608 	mov	r6,a
      003B1F A3               [24] 1609 	inc	dptr
      003B20 E0               [24] 1610 	movx	a,@dptr
      003B21 FF               [12] 1611 	mov	r7,a
      003B22 BE FF 47         [24] 1612 	cjne	r6,#0xff,00109$
      003B25 BF FF 44         [24] 1613 	cjne	r7,#0xff,00109$
                                   1614 ;	main.c:172: printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
      003B28 C0 07            [24] 1615 	push	ar7
      003B2A C0 06            [24] 1616 	push	ar6
      003B2C C0 06            [24] 1617 	push	ar6
      003B2E C0 07            [24] 1618 	push	ar7
      003B30 74 E0            [12] 1619 	mov	a,#___str_12
      003B32 C0 E0            [24] 1620 	push	acc
      003B34 74 5A            [12] 1621 	mov	a,#(___str_12 >> 8)
      003B36 C0 E0            [24] 1622 	push	acc
      003B38 12 47 2C         [24] 1623 	lcall	_printf_tiny
      003B3B E5 81            [12] 1624 	mov	a,sp
      003B3D 24 FC            [12] 1625 	add	a,#0xfc
      003B3F F5 81            [12] 1626 	mov	sp,a
      003B41 D0 06            [24] 1627 	pop	ar6
      003B43 D0 07            [24] 1628 	pop	ar7
                                   1629 ;	main.c:173: printf_tiny ("\n\rEnter a New Address\n\r",write_address);
      003B45 C0 06            [24] 1630 	push	ar6
      003B47 C0 07            [24] 1631 	push	ar7
      003B49 74 09            [12] 1632 	mov	a,#___str_13
      003B4B C0 E0            [24] 1633 	push	acc
      003B4D 74 5B            [12] 1634 	mov	a,#(___str_13 >> 8)
      003B4F C0 E0            [24] 1635 	push	acc
      003B51 12 47 2C         [24] 1636 	lcall	_printf_tiny
      003B54 E5 81            [12] 1637 	mov	a,sp
      003B56 24 FC            [12] 1638 	add	a,#0xfc
      003B58 F5 81            [12] 1639 	mov	sp,a
                                   1640 ;	main.c:174: write_address=getnumber();
      003B5A 12 36 F7         [24] 1641 	lcall	_getnumber
      003B5D E5 82            [12] 1642 	mov	a,dpl
      003B5F 85 83 F0         [24] 1643 	mov	b,dph
      003B62 90 00 19         [24] 1644 	mov	dptr,#_main_write_address_327682_83
      003B65 F0               [24] 1645 	movx	@dptr,a
      003B66 E5 F0            [12] 1646 	mov	a,b
      003B68 A3               [24] 1647 	inc	dptr
      003B69 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	main.c:176: while(!(write_address>=0 && write_address<=2047))              // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
      003B6A 80 AE            [24] 1650 	sjmp	00102$
      003B6C                       1651 00109$:
      003B6C 90 00 19         [24] 1652 	mov	dptr,#_main_write_address_327682_83
      003B6F E0               [24] 1653 	movx	a,@dptr
      003B70 FE               [12] 1654 	mov	r6,a
      003B71 A3               [24] 1655 	inc	dptr
      003B72 E0               [24] 1656 	movx	a,@dptr
      003B73 FF               [12] 1657 	mov	r7,a
      003B74 20 E7 0F         [24] 1658 	jb	acc.7,00110$
      003B77 C3               [12] 1659 	clr	c
      003B78 74 FF            [12] 1660 	mov	a,#0xff
      003B7A 9E               [12] 1661 	subb	a,r6
      003B7B 74 87            [12] 1662 	mov	a,#(0x07 ^ 0x80)
      003B7D 8F F0            [24] 1663 	mov	b,r7
      003B7F 63 F0 80         [24] 1664 	xrl	b,#0x80
      003B82 95 F0            [12] 1665 	subb	a,b
      003B84 50 6C            [24] 1666 	jnc	00111$
      003B86                       1667 00110$:
                                   1668 ;	main.c:178: printf_tiny ("\n\rThe Write Address Entered is INVALID\n\r",write_address);
      003B86 90 00 19         [24] 1669 	mov	dptr,#_main_write_address_327682_83
      003B89 E0               [24] 1670 	movx	a,@dptr
      003B8A FC               [12] 1671 	mov	r4,a
      003B8B A3               [24] 1672 	inc	dptr
      003B8C E0               [24] 1673 	movx	a,@dptr
      003B8D FD               [12] 1674 	mov	r5,a
      003B8E C0 05            [24] 1675 	push	ar5
      003B90 C0 04            [24] 1676 	push	ar4
      003B92 C0 04            [24] 1677 	push	ar4
      003B94 C0 05            [24] 1678 	push	ar5
      003B96 74 E0            [12] 1679 	mov	a,#___str_12
      003B98 C0 E0            [24] 1680 	push	acc
      003B9A 74 5A            [12] 1681 	mov	a,#(___str_12 >> 8)
      003B9C C0 E0            [24] 1682 	push	acc
      003B9E 12 47 2C         [24] 1683 	lcall	_printf_tiny
      003BA1 E5 81            [12] 1684 	mov	a,sp
      003BA3 24 FC            [12] 1685 	add	a,#0xfc
      003BA5 F5 81            [12] 1686 	mov	sp,a
      003BA7 D0 04            [24] 1687 	pop	ar4
      003BA9 D0 05            [24] 1688 	pop	ar5
                                   1689 ;	main.c:179: printf_tiny ("\n\rEnter a New Address\n\r",write_address);
      003BAB C0 04            [24] 1690 	push	ar4
      003BAD C0 05            [24] 1691 	push	ar5
      003BAF 74 09            [12] 1692 	mov	a,#___str_13
      003BB1 C0 E0            [24] 1693 	push	acc
      003BB3 74 5B            [12] 1694 	mov	a,#(___str_13 >> 8)
      003BB5 C0 E0            [24] 1695 	push	acc
      003BB7 12 47 2C         [24] 1696 	lcall	_printf_tiny
      003BBA E5 81            [12] 1697 	mov	a,sp
      003BBC 24 FC            [12] 1698 	add	a,#0xfc
      003BBE F5 81            [12] 1699 	mov	sp,a
                                   1700 ;	main.c:180: write_address=getnumber();                                //IF NOT TAKE IT AGAIN
      003BC0 12 36 F7         [24] 1701 	lcall	_getnumber
      003BC3 AC 82            [24] 1702 	mov	r4,dpl
      003BC5 AD 83            [24] 1703 	mov	r5,dph
      003BC7 90 00 19         [24] 1704 	mov	dptr,#_main_write_address_327682_83
      003BCA EC               [12] 1705 	mov	a,r4
      003BCB F0               [24] 1706 	movx	@dptr,a
      003BCC ED               [12] 1707 	mov	a,r5
      003BCD A3               [24] 1708 	inc	dptr
      003BCE F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	main.c:181: if(write_address!='\n' && write_address!='\r')
      003BCF BC 0A 05         [24] 1711 	cjne	r4,#0x0a,00469$
      003BD2 BD 00 02         [24] 1712 	cjne	r5,#0x00,00469$
      003BD5 80 95            [24] 1713 	sjmp	00109$
      003BD7                       1714 00469$:
      003BD7 BC 0D 05         [24] 1715 	cjne	r4,#0x0d,00470$
      003BDA BD 00 02         [24] 1716 	cjne	r5,#0x00,00470$
      003BDD 80 8D            [24] 1717 	sjmp	00109$
      003BDF                       1718 00470$:
                                   1719 ;	main.c:182: write_address=getnumber();
      003BDF 12 36 F7         [24] 1720 	lcall	_getnumber
      003BE2 E5 82            [12] 1721 	mov	a,dpl
      003BE4 85 83 F0         [24] 1722 	mov	b,dph
      003BE7 90 00 19         [24] 1723 	mov	dptr,#_main_write_address_327682_83
      003BEA F0               [24] 1724 	movx	@dptr,a
      003BEB E5 F0            [12] 1725 	mov	a,b
      003BED A3               [24] 1726 	inc	dptr
      003BEE F0               [24] 1727 	movx	@dptr,a
      003BEF 02 3B 6C         [24] 1728 	ljmp	00109$
      003BF2                       1729 00111$:
                                   1730 ;	main.c:185: printf_tiny ("\n\rThe Address for Write Operation is %x.\n\r",write_address);
      003BF2 C0 07            [24] 1731 	push	ar7
      003BF4 C0 06            [24] 1732 	push	ar6
      003BF6 C0 06            [24] 1733 	push	ar6
      003BF8 C0 07            [24] 1734 	push	ar7
      003BFA 74 21            [12] 1735 	mov	a,#___str_14
      003BFC C0 E0            [24] 1736 	push	acc
      003BFE 74 5B            [12] 1737 	mov	a,#(___str_14 >> 8)
      003C00 C0 E0            [24] 1738 	push	acc
      003C02 12 47 2C         [24] 1739 	lcall	_printf_tiny
      003C05 E5 81            [12] 1740 	mov	a,sp
      003C07 24 FC            [12] 1741 	add	a,#0xfc
      003C09 F5 81            [12] 1742 	mov	sp,a
      003C0B D0 06            [24] 1743 	pop	ar6
      003C0D D0 07            [24] 1744 	pop	ar7
                                   1745 ;	main.c:188: int page_selection_bits=write_address&0x700;            //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
      003C0F 7C 00            [12] 1746 	mov	r4,#0x00
      003C11 74 07            [12] 1747 	mov	a,#0x07
      003C13 5F               [12] 1748 	anl	a,r7
                                   1749 ;	main.c:189: int page_block=page_selection_bits>>7;
      003C14 A2 E7            [12] 1750 	mov	c,acc.7
      003C16 CC               [12] 1751 	xch	a,r4
      003C17 33               [12] 1752 	rlc	a
      003C18 CC               [12] 1753 	xch	a,r4
      003C19 33               [12] 1754 	rlc	a
      003C1A CC               [12] 1755 	xch	a,r4
      003C1B 54 01            [12] 1756 	anl	a,#0x01
      003C1D 30 E0 02         [24] 1757 	jnb	acc.0,00471$
      003C20 44 FE            [12] 1758 	orl	a,#0xfe
      003C22                       1759 00471$:
      003C22 FD               [12] 1760 	mov	r5,a
                                   1761 ;	main.c:190: EEPROM_CMD=0xA0|page_block;                             //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
      003C23 90 00 A1         [24] 1762 	mov	dptr,#_EEPROM_CMD
      003C26 74 A0            [12] 1763 	mov	a,#0xa0
      003C28 4C               [12] 1764 	orl	a,r4
      003C29 F0               [24] 1765 	movx	@dptr,a
      003C2A ED               [12] 1766 	mov	a,r5
      003C2B A3               [24] 1767 	inc	dptr
      003C2C F0               [24] 1768 	movx	@dptr,a
                                   1769 ;	main.c:191: word_address=internal_address&0x0FF;                    //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME
      003C2D 90 00 A5         [24] 1770 	mov	dptr,#_word_address
      003C30 EE               [12] 1771 	mov	a,r6
      003C31 F0               [24] 1772 	movx	@dptr,a
      003C32 E4               [12] 1773 	clr	a
      003C33 A3               [24] 1774 	inc	dptr
      003C34 F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	main.c:192: printf_tiny("\n\rEnter the 2 Digit Data value to be Written\n\r");
      003C35 74 4C            [12] 1777 	mov	a,#___str_15
      003C37 C0 E0            [24] 1778 	push	acc
      003C39 74 5B            [12] 1779 	mov	a,#(___str_15 >> 8)
      003C3B C0 E0            [24] 1780 	push	acc
      003C3D 12 47 2C         [24] 1781 	lcall	_printf_tiny
      003C40 15 81            [12] 1782 	dec	sp
      003C42 15 81            [12] 1783 	dec	sp
                                   1784 ;	main.c:193: int data_write=getdata();                               //ACCEPTING THE WRITE BYTE
      003C44 12 34 D1         [24] 1785 	lcall	_getdata
      003C47 E5 82            [12] 1786 	mov	a,dpl
      003C49 85 83 F0         [24] 1787 	mov	b,dph
      003C4C 90 00 1B         [24] 1788 	mov	dptr,#_main_data_write_327684_87
      003C4F F0               [24] 1789 	movx	@dptr,a
      003C50 E5 F0            [12] 1790 	mov	a,b
      003C52 A3               [24] 1791 	inc	dptr
      003C53 F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	main.c:195: while (data_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
      003C54                       1794 00112$:
      003C54 90 00 1B         [24] 1795 	mov	dptr,#_main_data_write_327684_87
      003C57 E0               [24] 1796 	movx	a,@dptr
      003C58 FE               [12] 1797 	mov	r6,a
      003C59 A3               [24] 1798 	inc	dptr
      003C5A E0               [24] 1799 	movx	a,@dptr
      003C5B FF               [12] 1800 	mov	r7,a
      003C5C BE FF 47         [24] 1801 	cjne	r6,#0xff,00119$
      003C5F BF FF 44         [24] 1802 	cjne	r7,#0xff,00119$
                                   1803 ;	main.c:197: printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
      003C62 C0 07            [24] 1804 	push	ar7
      003C64 C0 06            [24] 1805 	push	ar6
      003C66 C0 06            [24] 1806 	push	ar6
      003C68 C0 07            [24] 1807 	push	ar7
      003C6A 74 7B            [12] 1808 	mov	a,#___str_16
      003C6C C0 E0            [24] 1809 	push	acc
      003C6E 74 5B            [12] 1810 	mov	a,#(___str_16 >> 8)
      003C70 C0 E0            [24] 1811 	push	acc
      003C72 12 47 2C         [24] 1812 	lcall	_printf_tiny
      003C75 E5 81            [12] 1813 	mov	a,sp
      003C77 24 FC            [12] 1814 	add	a,#0xfc
      003C79 F5 81            [12] 1815 	mov	sp,a
      003C7B D0 06            [24] 1816 	pop	ar6
      003C7D D0 07            [24] 1817 	pop	ar7
                                   1818 ;	main.c:198: printf_tiny ("\n\rEnter a New Data\n\r",data_write);
      003C7F C0 06            [24] 1819 	push	ar6
      003C81 C0 07            [24] 1820 	push	ar7
      003C83 74 97            [12] 1821 	mov	a,#___str_17
      003C85 C0 E0            [24] 1822 	push	acc
      003C87 74 5B            [12] 1823 	mov	a,#(___str_17 >> 8)
      003C89 C0 E0            [24] 1824 	push	acc
      003C8B 12 47 2C         [24] 1825 	lcall	_printf_tiny
      003C8E E5 81            [12] 1826 	mov	a,sp
      003C90 24 FC            [12] 1827 	add	a,#0xfc
      003C92 F5 81            [12] 1828 	mov	sp,a
                                   1829 ;	main.c:200: data_write=getdata();
      003C94 12 34 D1         [24] 1830 	lcall	_getdata
      003C97 E5 82            [12] 1831 	mov	a,dpl
      003C99 85 83 F0         [24] 1832 	mov	b,dph
      003C9C 90 00 1B         [24] 1833 	mov	dptr,#_main_data_write_327684_87
      003C9F F0               [24] 1834 	movx	@dptr,a
      003CA0 E5 F0            [12] 1835 	mov	a,b
      003CA2 A3               [24] 1836 	inc	dptr
      003CA3 F0               [24] 1837 	movx	@dptr,a
                                   1838 ;	main.c:202: while(!(data_write>=0 && data_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
      003CA4 80 AE            [24] 1839 	sjmp	00112$
      003CA6                       1840 00119$:
      003CA6 90 00 1B         [24] 1841 	mov	dptr,#_main_data_write_327684_87
      003CA9 E0               [24] 1842 	movx	a,@dptr
      003CAA FE               [12] 1843 	mov	r6,a
      003CAB A3               [24] 1844 	inc	dptr
      003CAC E0               [24] 1845 	movx	a,@dptr
      003CAD FF               [12] 1846 	mov	r7,a
      003CAE 20 E7 0F         [24] 1847 	jb	acc.7,00120$
      003CB1 C3               [12] 1848 	clr	c
      003CB2 74 FF            [12] 1849 	mov	a,#0xff
      003CB4 9E               [12] 1850 	subb	a,r6
      003CB5 74 80            [12] 1851 	mov	a,#(0x00 ^ 0x80)
      003CB7 8F F0            [24] 1852 	mov	b,r7
      003CB9 63 F0 80         [24] 1853 	xrl	b,#0x80
      003CBC 95 F0            [12] 1854 	subb	a,b
      003CBE 50 6C            [24] 1855 	jnc	00121$
      003CC0                       1856 00120$:
                                   1857 ;	main.c:204: printf_tiny ("\n\rData Entered is INVALID\n\r",data_write);
      003CC0 90 00 1B         [24] 1858 	mov	dptr,#_main_data_write_327684_87
      003CC3 E0               [24] 1859 	movx	a,@dptr
      003CC4 FC               [12] 1860 	mov	r4,a
      003CC5 A3               [24] 1861 	inc	dptr
      003CC6 E0               [24] 1862 	movx	a,@dptr
      003CC7 FD               [12] 1863 	mov	r5,a
      003CC8 C0 05            [24] 1864 	push	ar5
      003CCA C0 04            [24] 1865 	push	ar4
      003CCC C0 04            [24] 1866 	push	ar4
      003CCE C0 05            [24] 1867 	push	ar5
      003CD0 74 7B            [12] 1868 	mov	a,#___str_16
      003CD2 C0 E0            [24] 1869 	push	acc
      003CD4 74 5B            [12] 1870 	mov	a,#(___str_16 >> 8)
      003CD6 C0 E0            [24] 1871 	push	acc
      003CD8 12 47 2C         [24] 1872 	lcall	_printf_tiny
      003CDB E5 81            [12] 1873 	mov	a,sp
      003CDD 24 FC            [12] 1874 	add	a,#0xfc
      003CDF F5 81            [12] 1875 	mov	sp,a
      003CE1 D0 04            [24] 1876 	pop	ar4
      003CE3 D0 05            [24] 1877 	pop	ar5
                                   1878 ;	main.c:205: printf_tiny ("\n\rEnter a New Data\n\r",data_write);
      003CE5 C0 04            [24] 1879 	push	ar4
      003CE7 C0 05            [24] 1880 	push	ar5
      003CE9 74 97            [12] 1881 	mov	a,#___str_17
      003CEB C0 E0            [24] 1882 	push	acc
      003CED 74 5B            [12] 1883 	mov	a,#(___str_17 >> 8)
      003CEF C0 E0            [24] 1884 	push	acc
      003CF1 12 47 2C         [24] 1885 	lcall	_printf_tiny
      003CF4 E5 81            [12] 1886 	mov	a,sp
      003CF6 24 FC            [12] 1887 	add	a,#0xfc
      003CF8 F5 81            [12] 1888 	mov	sp,a
                                   1889 ;	main.c:206: data_write=getdata();
      003CFA 12 34 D1         [24] 1890 	lcall	_getdata
      003CFD AC 82            [24] 1891 	mov	r4,dpl
      003CFF AD 83            [24] 1892 	mov	r5,dph
      003D01 90 00 1B         [24] 1893 	mov	dptr,#_main_data_write_327684_87
      003D04 EC               [12] 1894 	mov	a,r4
      003D05 F0               [24] 1895 	movx	@dptr,a
      003D06 ED               [12] 1896 	mov	a,r5
      003D07 A3               [24] 1897 	inc	dptr
      003D08 F0               [24] 1898 	movx	@dptr,a
                                   1899 ;	main.c:207: if(data_write!='\n' && data_write!='\r')
      003D09 BC 0A 05         [24] 1900 	cjne	r4,#0x0a,00476$
      003D0C BD 00 02         [24] 1901 	cjne	r5,#0x00,00476$
      003D0F 80 95            [24] 1902 	sjmp	00119$
      003D11                       1903 00476$:
      003D11 BC 0D 05         [24] 1904 	cjne	r4,#0x0d,00477$
      003D14 BD 00 02         [24] 1905 	cjne	r5,#0x00,00477$
      003D17 80 8D            [24] 1906 	sjmp	00119$
      003D19                       1907 00477$:
                                   1908 ;	main.c:208: data_write=getdata();                           //IF NOT TAKE IT AGAIN
      003D19 12 34 D1         [24] 1909 	lcall	_getdata
      003D1C E5 82            [12] 1910 	mov	a,dpl
      003D1E 85 83 F0         [24] 1911 	mov	b,dph
      003D21 90 00 1B         [24] 1912 	mov	dptr,#_main_data_write_327684_87
      003D24 F0               [24] 1913 	movx	@dptr,a
      003D25 E5 F0            [12] 1914 	mov	a,b
      003D27 A3               [24] 1915 	inc	dptr
      003D28 F0               [24] 1916 	movx	@dptr,a
      003D29 02 3C A6         [24] 1917 	ljmp	00119$
      003D2C                       1918 00121$:
                                   1919 ;	main.c:210: printf ("\n\rData Value to be Written is %x.\n\r",data_write);
      003D2C C0 07            [24] 1920 	push	ar7
      003D2E C0 06            [24] 1921 	push	ar6
      003D30 C0 06            [24] 1922 	push	ar6
      003D32 C0 07            [24] 1923 	push	ar7
      003D34 74 AC            [12] 1924 	mov	a,#___str_18
      003D36 C0 E0            [24] 1925 	push	acc
      003D38 74 5B            [12] 1926 	mov	a,#(___str_18 >> 8)
      003D3A C0 E0            [24] 1927 	push	acc
      003D3C 74 80            [12] 1928 	mov	a,#0x80
      003D3E C0 E0            [24] 1929 	push	acc
      003D40 12 4E 96         [24] 1930 	lcall	_printf
      003D43 E5 81            [12] 1931 	mov	a,sp
      003D45 24 FB            [12] 1932 	add	a,#0xfb
      003D47 F5 81            [12] 1933 	mov	sp,a
      003D49 D0 06            [24] 1934 	pop	ar6
      003D4B D0 07            [24] 1935 	pop	ar7
                                   1936 ;	main.c:211: EEPROM_WrByte(word_address, data_write);                //CALLING THE FUNCTION TO WRITE BYTE AT A GIVEN LOCATION
      003D4D 90 00 A5         [24] 1937 	mov	dptr,#_word_address
      003D50 E0               [24] 1938 	movx	a,@dptr
      003D51 FC               [12] 1939 	mov	r4,a
      003D52 A3               [24] 1940 	inc	dptr
      003D53 E0               [24] 1941 	movx	a,@dptr
      003D54 FD               [12] 1942 	mov	r5,a
      003D55 90 00 04         [24] 1943 	mov	dptr,#_EEPROM_WrByte_PARM_2
      003D58 EE               [12] 1944 	mov	a,r6
      003D59 F0               [24] 1945 	movx	@dptr,a
      003D5A EF               [12] 1946 	mov	a,r7
      003D5B A3               [24] 1947 	inc	dptr
      003D5C F0               [24] 1948 	movx	@dptr,a
      003D5D 8C 82            [24] 1949 	mov	dpl,r4
      003D5F 8D 83            [24] 1950 	mov	dph,r5
      003D61 12 31 CC         [24] 1951 	lcall	_EEPROM_WrByte
                                   1952 ;	main.c:214: for (i=0; i<100; i++)
      003D64 7E 64            [12] 1953 	mov	r6,#0x64
      003D66 7F 00            [12] 1954 	mov	r7,#0x00
      003D68                       1955 00193$:
                                   1956 ;	main.c:216: Delay();
      003D68 C0 07            [24] 1957 	push	ar7
      003D6A C0 06            [24] 1958 	push	ar6
      003D6C 12 30 90         [24] 1959 	lcall	_Delay
      003D6F D0 06            [24] 1960 	pop	ar6
      003D71 D0 07            [24] 1961 	pop	ar7
      003D73 1E               [12] 1962 	dec	r6
      003D74 BE FF 01         [24] 1963 	cjne	r6,#0xff,00478$
      003D77 1F               [12] 1964 	dec	r7
      003D78                       1965 00478$:
                                   1966 ;	main.c:214: for (i=0; i<100; i++)
      003D78 EE               [12] 1967 	mov	a,r6
      003D79 4F               [12] 1968 	orl	a,r7
                                   1969 ;	main.c:218: for (i=0; i<100; i++)
      003D7A 70 EC            [24] 1970 	jnz	00193$
      003D7C 7E 64            [12] 1971 	mov	r6,#0x64
      003D7E FF               [12] 1972 	mov	r7,a
      003D7F                       1973 00196$:
                                   1974 ;	main.c:220: Delay();
      003D7F C0 07            [24] 1975 	push	ar7
      003D81 C0 06            [24] 1976 	push	ar6
      003D83 12 30 90         [24] 1977 	lcall	_Delay
      003D86 D0 06            [24] 1978 	pop	ar6
      003D88 D0 07            [24] 1979 	pop	ar7
      003D8A 1E               [12] 1980 	dec	r6
      003D8B BE FF 01         [24] 1981 	cjne	r6,#0xff,00480$
      003D8E 1F               [12] 1982 	dec	r7
      003D8F                       1983 00480$:
                                   1984 ;	main.c:218: for (i=0; i<100; i++)
      003D8F EE               [12] 1985 	mov	a,r6
      003D90 4F               [12] 1986 	orl	a,r7
                                   1987 ;	main.c:222: for (i=0; i<100; i++)
      003D91 70 EC            [24] 1988 	jnz	00196$
      003D93 7E 64            [12] 1989 	mov	r6,#0x64
      003D95 FF               [12] 1990 	mov	r7,a
      003D96                       1991 00199$:
                                   1992 ;	main.c:224: Delay();
      003D96 C0 07            [24] 1993 	push	ar7
      003D98 C0 06            [24] 1994 	push	ar6
      003D9A 12 30 90         [24] 1995 	lcall	_Delay
      003D9D D0 06            [24] 1996 	pop	ar6
      003D9F D0 07            [24] 1997 	pop	ar7
      003DA1 1E               [12] 1998 	dec	r6
      003DA2 BE FF 01         [24] 1999 	cjne	r6,#0xff,00482$
      003DA5 1F               [12] 2000 	dec	r7
      003DA6                       2001 00482$:
                                   2002 ;	main.c:222: for (i=0; i<100; i++)
      003DA6 EE               [12] 2003 	mov	a,r6
      003DA7 4F               [12] 2004 	orl	a,r7
                                   2005 ;	main.c:226: for (i=0; i<100; i++)
      003DA8 70 EC            [24] 2006 	jnz	00199$
      003DAA 7E 64            [12] 2007 	mov	r6,#0x64
      003DAC FF               [12] 2008 	mov	r7,a
      003DAD                       2009 00202$:
                                   2010 ;	main.c:228: Delay();
      003DAD C0 07            [24] 2011 	push	ar7
      003DAF C0 06            [24] 2012 	push	ar6
      003DB1 12 30 90         [24] 2013 	lcall	_Delay
      003DB4 D0 06            [24] 2014 	pop	ar6
      003DB6 D0 07            [24] 2015 	pop	ar7
      003DB8 1E               [12] 2016 	dec	r6
      003DB9 BE FF 01         [24] 2017 	cjne	r6,#0xff,00484$
      003DBC 1F               [12] 2018 	dec	r7
      003DBD                       2019 00484$:
                                   2020 ;	main.c:226: for (i=0; i<100; i++)
      003DBD EE               [12] 2021 	mov	a,r6
      003DBE 4F               [12] 2022 	orl	a,r7
                                   2023 ;	main.c:231: for (i=0; i<100; i++)
      003DBF 70 EC            [24] 2024 	jnz	00202$
      003DC1 7E 64            [12] 2025 	mov	r6,#0x64
      003DC3 FF               [12] 2026 	mov	r7,a
      003DC4                       2027 00205$:
                                   2028 ;	main.c:233: Delay();
      003DC4 C0 07            [24] 2029 	push	ar7
      003DC6 C0 06            [24] 2030 	push	ar6
      003DC8 12 30 90         [24] 2031 	lcall	_Delay
      003DCB D0 06            [24] 2032 	pop	ar6
      003DCD D0 07            [24] 2033 	pop	ar7
      003DCF 1E               [12] 2034 	dec	r6
      003DD0 BE FF 01         [24] 2035 	cjne	r6,#0xff,00486$
      003DD3 1F               [12] 2036 	dec	r7
      003DD4                       2037 00486$:
                                   2038 ;	main.c:231: for (i=0; i<100; i++)
      003DD4 EE               [12] 2039 	mov	a,r6
      003DD5 4F               [12] 2040 	orl	a,r7
      003DD6 70 EC            [24] 2041 	jnz	00205$
                                   2042 ;	main.c:236: break;
      003DD8 02 3A 63         [24] 2043 	ljmp	00189$
                                   2044 ;	main.c:238: case('R'):                                                                  //READ OPERATION
      003DDB                       2045 00127$:
                                   2046 ;	main.c:240: printf_tiny("\n\r********************************************* \n\r");
      003DDB 74 77            [12] 2047 	mov	a,#___str_9
      003DDD C0 E0            [24] 2048 	push	acc
      003DDF 74 5A            [12] 2049 	mov	a,#(___str_9 >> 8)
      003DE1 C0 E0            [24] 2050 	push	acc
      003DE3 12 47 2C         [24] 2051 	lcall	_printf_tiny
      003DE6 15 81            [12] 2052 	dec	sp
      003DE8 15 81            [12] 2053 	dec	sp
                                   2054 ;	main.c:241: printf_tiny("\n\r\t\tREAD BYTE\n\r ");
      003DEA 74 D0            [12] 2055 	mov	a,#___str_19
      003DEC C0 E0            [24] 2056 	push	acc
      003DEE 74 5B            [12] 2057 	mov	a,#(___str_19 >> 8)
      003DF0 C0 E0            [24] 2058 	push	acc
      003DF2 12 47 2C         [24] 2059 	lcall	_printf_tiny
      003DF5 15 81            [12] 2060 	dec	sp
      003DF7 15 81            [12] 2061 	dec	sp
                                   2062 ;	main.c:242: printf_tiny("\n\r********************************************* \n\r");
      003DF9 74 77            [12] 2063 	mov	a,#___str_9
      003DFB C0 E0            [24] 2064 	push	acc
      003DFD 74 5A            [12] 2065 	mov	a,#(___str_9 >> 8)
      003DFF C0 E0            [24] 2066 	push	acc
      003E01 12 47 2C         [24] 2067 	lcall	_printf_tiny
      003E04 15 81            [12] 2068 	dec	sp
      003E06 15 81            [12] 2069 	dec	sp
                                   2070 ;	main.c:243: printf_tiny("\n\rEnter the 3 Digit Read Address\n\r");
      003E08 74 E1            [12] 2071 	mov	a,#___str_20
      003E0A C0 E0            [24] 2072 	push	acc
      003E0C 74 5B            [12] 2073 	mov	a,#(___str_20 >> 8)
      003E0E C0 E0            [24] 2074 	push	acc
      003E10 12 47 2C         [24] 2075 	lcall	_printf_tiny
      003E13 15 81            [12] 2076 	dec	sp
      003E15 15 81            [12] 2077 	dec	sp
                                   2078 ;	main.c:244: int read_address=getnumber();                                           //ACCEPTING THE READ ADDRESS
      003E17 12 36 F7         [24] 2079 	lcall	_getnumber
      003E1A E5 82            [12] 2080 	mov	a,dpl
      003E1C 85 83 F0         [24] 2081 	mov	b,dph
      003E1F 90 00 1D         [24] 2082 	mov	dptr,#_main_read_address_327682_102
      003E22 F0               [24] 2083 	movx	@dptr,a
      003E23 E5 F0            [12] 2084 	mov	a,b
      003E25 A3               [24] 2085 	inc	dptr
      003E26 F0               [24] 2086 	movx	@dptr,a
                                   2087 ;	main.c:245: while (read_address==-1)                                                //PRINT READ ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      003E27                       2088 00128$:
      003E27 90 00 1D         [24] 2089 	mov	dptr,#_main_read_address_327682_102
      003E2A E0               [24] 2090 	movx	a,@dptr
      003E2B FE               [12] 2091 	mov	r6,a
      003E2C A3               [24] 2092 	inc	dptr
      003E2D E0               [24] 2093 	movx	a,@dptr
      003E2E FF               [12] 2094 	mov	r7,a
      003E2F BE FF 47         [24] 2095 	cjne	r6,#0xff,00135$
      003E32 BF FF 44         [24] 2096 	cjne	r7,#0xff,00135$
                                   2097 ;	main.c:247: printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
      003E35 C0 07            [24] 2098 	push	ar7
      003E37 C0 06            [24] 2099 	push	ar6
      003E39 C0 06            [24] 2100 	push	ar6
      003E3B C0 07            [24] 2101 	push	ar7
      003E3D 74 04            [12] 2102 	mov	a,#___str_21
      003E3F C0 E0            [24] 2103 	push	acc
      003E41 74 5C            [12] 2104 	mov	a,#(___str_21 >> 8)
      003E43 C0 E0            [24] 2105 	push	acc
      003E45 12 47 2C         [24] 2106 	lcall	_printf_tiny
      003E48 E5 81            [12] 2107 	mov	a,sp
      003E4A 24 FC            [12] 2108 	add	a,#0xfc
      003E4C F5 81            [12] 2109 	mov	sp,a
      003E4E D0 06            [24] 2110 	pop	ar6
      003E50 D0 07            [24] 2111 	pop	ar7
                                   2112 ;	main.c:248: printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);
      003E52 C0 06            [24] 2113 	push	ar6
      003E54 C0 07            [24] 2114 	push	ar7
      003E56 74 28            [12] 2115 	mov	a,#___str_22
      003E58 C0 E0            [24] 2116 	push	acc
      003E5A 74 5C            [12] 2117 	mov	a,#(___str_22 >> 8)
      003E5C C0 E0            [24] 2118 	push	acc
      003E5E 12 47 2C         [24] 2119 	lcall	_printf_tiny
      003E61 E5 81            [12] 2120 	mov	a,sp
      003E63 24 FC            [12] 2121 	add	a,#0xfc
      003E65 F5 81            [12] 2122 	mov	sp,a
                                   2123 ;	main.c:250: read_address=getnumber();
      003E67 12 36 F7         [24] 2124 	lcall	_getnumber
      003E6A E5 82            [12] 2125 	mov	a,dpl
      003E6C 85 83 F0         [24] 2126 	mov	b,dph
      003E6F 90 00 1D         [24] 2127 	mov	dptr,#_main_read_address_327682_102
      003E72 F0               [24] 2128 	movx	@dptr,a
      003E73 E5 F0            [12] 2129 	mov	a,b
      003E75 A3               [24] 2130 	inc	dptr
      003E76 F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	main.c:252: while(!(read_address>=0 && read_address<=2047))                         // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
      003E77 80 AE            [24] 2133 	sjmp	00128$
      003E79                       2134 00135$:
      003E79 90 00 1D         [24] 2135 	mov	dptr,#_main_read_address_327682_102
      003E7C E0               [24] 2136 	movx	a,@dptr
      003E7D FE               [12] 2137 	mov	r6,a
      003E7E A3               [24] 2138 	inc	dptr
      003E7F E0               [24] 2139 	movx	a,@dptr
      003E80 FF               [12] 2140 	mov	r7,a
      003E81 20 E7 0F         [24] 2141 	jb	acc.7,00136$
      003E84 C3               [12] 2142 	clr	c
      003E85 74 FF            [12] 2143 	mov	a,#0xff
      003E87 9E               [12] 2144 	subb	a,r6
      003E88 74 87            [12] 2145 	mov	a,#(0x07 ^ 0x80)
      003E8A 8F F0            [24] 2146 	mov	b,r7
      003E8C 63 F0 80         [24] 2147 	xrl	b,#0x80
      003E8F 95 F0            [12] 2148 	subb	a,b
      003E91 50 6C            [24] 2149 	jnc	00137$
      003E93                       2150 00136$:
                                   2151 ;	main.c:254: printf_tiny ("\n\rRead Address entered is INVALID\n\r",read_address);
      003E93 90 00 1D         [24] 2152 	mov	dptr,#_main_read_address_327682_102
      003E96 E0               [24] 2153 	movx	a,@dptr
      003E97 FC               [12] 2154 	mov	r4,a
      003E98 A3               [24] 2155 	inc	dptr
      003E99 E0               [24] 2156 	movx	a,@dptr
      003E9A FD               [12] 2157 	mov	r5,a
      003E9B C0 05            [24] 2158 	push	ar5
      003E9D C0 04            [24] 2159 	push	ar4
      003E9F C0 04            [24] 2160 	push	ar4
      003EA1 C0 05            [24] 2161 	push	ar5
      003EA3 74 04            [12] 2162 	mov	a,#___str_21
      003EA5 C0 E0            [24] 2163 	push	acc
      003EA7 74 5C            [12] 2164 	mov	a,#(___str_21 >> 8)
      003EA9 C0 E0            [24] 2165 	push	acc
      003EAB 12 47 2C         [24] 2166 	lcall	_printf_tiny
      003EAE E5 81            [12] 2167 	mov	a,sp
      003EB0 24 FC            [12] 2168 	add	a,#0xfc
      003EB2 F5 81            [12] 2169 	mov	sp,a
      003EB4 D0 04            [24] 2170 	pop	ar4
      003EB6 D0 05            [24] 2171 	pop	ar5
                                   2172 ;	main.c:255: printf_tiny ("\n\rEnter a New Read Address\n\r",read_address);
      003EB8 C0 04            [24] 2173 	push	ar4
      003EBA C0 05            [24] 2174 	push	ar5
      003EBC 74 28            [12] 2175 	mov	a,#___str_22
      003EBE C0 E0            [24] 2176 	push	acc
      003EC0 74 5C            [12] 2177 	mov	a,#(___str_22 >> 8)
      003EC2 C0 E0            [24] 2178 	push	acc
      003EC4 12 47 2C         [24] 2179 	lcall	_printf_tiny
      003EC7 E5 81            [12] 2180 	mov	a,sp
      003EC9 24 FC            [12] 2181 	add	a,#0xfc
      003ECB F5 81            [12] 2182 	mov	sp,a
                                   2183 ;	main.c:256: read_address=getnumber();                                           //IF NOT TAKE IT AGAIN
      003ECD 12 36 F7         [24] 2184 	lcall	_getnumber
      003ED0 AC 82            [24] 2185 	mov	r4,dpl
      003ED2 AD 83            [24] 2186 	mov	r5,dph
      003ED4 90 00 1D         [24] 2187 	mov	dptr,#_main_read_address_327682_102
      003ED7 EC               [12] 2188 	mov	a,r4
      003ED8 F0               [24] 2189 	movx	@dptr,a
      003ED9 ED               [12] 2190 	mov	a,r5
      003EDA A3               [24] 2191 	inc	dptr
      003EDB F0               [24] 2192 	movx	@dptr,a
                                   2193 ;	main.c:257: if(read_address!='\n' && read_address!='\r')
      003EDC BC 0A 05         [24] 2194 	cjne	r4,#0x0a,00492$
      003EDF BD 00 02         [24] 2195 	cjne	r5,#0x00,00492$
      003EE2 80 95            [24] 2196 	sjmp	00135$
      003EE4                       2197 00492$:
      003EE4 BC 0D 05         [24] 2198 	cjne	r4,#0x0d,00493$
      003EE7 BD 00 02         [24] 2199 	cjne	r5,#0x00,00493$
      003EEA 80 8D            [24] 2200 	sjmp	00135$
      003EEC                       2201 00493$:
                                   2202 ;	main.c:258: read_address=getnumber();
      003EEC 12 36 F7         [24] 2203 	lcall	_getnumber
      003EEF E5 82            [12] 2204 	mov	a,dpl
      003EF1 85 83 F0         [24] 2205 	mov	b,dph
      003EF4 90 00 1D         [24] 2206 	mov	dptr,#_main_read_address_327682_102
      003EF7 F0               [24] 2207 	movx	@dptr,a
      003EF8 E5 F0            [12] 2208 	mov	a,b
      003EFA A3               [24] 2209 	inc	dptr
      003EFB F0               [24] 2210 	movx	@dptr,a
      003EFC 02 3E 79         [24] 2211 	ljmp	00135$
      003EFF                       2212 00137$:
                                   2213 ;	main.c:260: printf_tiny ("\n\rThe Read Byte Address is %x.\n\r",read_address);
      003EFF C0 07            [24] 2214 	push	ar7
      003F01 C0 06            [24] 2215 	push	ar6
      003F03 C0 06            [24] 2216 	push	ar6
      003F05 C0 07            [24] 2217 	push	ar7
      003F07 74 45            [12] 2218 	mov	a,#___str_23
      003F09 C0 E0            [24] 2219 	push	acc
      003F0B 74 5C            [12] 2220 	mov	a,#(___str_23 >> 8)
      003F0D C0 E0            [24] 2221 	push	acc
      003F0F 12 47 2C         [24] 2222 	lcall	_printf_tiny
      003F12 E5 81            [12] 2223 	mov	a,sp
      003F14 24 FC            [12] 2224 	add	a,#0xfc
      003F16 F5 81            [12] 2225 	mov	sp,a
      003F18 D0 06            [24] 2226 	pop	ar6
      003F1A D0 07            [24] 2227 	pop	ar7
                                   2228 ;	main.c:263: int page_selection_bits=read_address&0x700;                             //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
      003F1C 7C 00            [12] 2229 	mov	r4,#0x00
      003F1E 74 07            [12] 2230 	mov	a,#0x07
      003F20 5F               [12] 2231 	anl	a,r7
                                   2232 ;	main.c:264: int page_block=page_selection_bits>>7;
      003F21 A2 E7            [12] 2233 	mov	c,acc.7
      003F23 CC               [12] 2234 	xch	a,r4
      003F24 33               [12] 2235 	rlc	a
      003F25 CC               [12] 2236 	xch	a,r4
      003F26 33               [12] 2237 	rlc	a
      003F27 CC               [12] 2238 	xch	a,r4
      003F28 54 01            [12] 2239 	anl	a,#0x01
      003F2A 30 E0 02         [24] 2240 	jnb	acc.0,00494$
      003F2D 44 FE            [12] 2241 	orl	a,#0xfe
      003F2F                       2242 00494$:
      003F2F FD               [12] 2243 	mov	r5,a
                                   2244 ;	main.c:265: EEPROM_CMD=0xA0|page_block;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
      003F30 90 00 A1         [24] 2245 	mov	dptr,#_EEPROM_CMD
      003F33 74 A0            [12] 2246 	mov	a,#0xa0
      003F35 4C               [12] 2247 	orl	a,r4
      003F36 F0               [24] 2248 	movx	@dptr,a
      003F37 ED               [12] 2249 	mov	a,r5
      003F38 A3               [24] 2250 	inc	dptr
      003F39 F0               [24] 2251 	movx	@dptr,a
                                   2252 ;	main.c:266: word_address1=internal_address&0x0FF;             //USING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SCHEME
      003F3A 7F 00            [12] 2253 	mov	r7,#0x00
      003F3C 90 00 A7         [24] 2254 	mov	dptr,#_word_address1
      003F3F EE               [12] 2255 	mov	a,r6
      003F40 F0               [24] 2256 	movx	@dptr,a
      003F41 EF               [12] 2257 	mov	a,r7
      003F42 A3               [24] 2258 	inc	dptr
      003F43 F0               [24] 2259 	movx	@dptr,a
                                   2260 ;	main.c:268: unsigned char x1 = EEPROM_RdByte(word_address1);
      003F44 8E 82            [24] 2261 	mov	dpl,r6
      003F46 8F 83            [24] 2262 	mov	dph,r7
      003F48 12 32 A8         [24] 2263 	lcall	_EEPROM_RdByte
      003F4B AF 82            [24] 2264 	mov	r7,dpl
                                   2265 ;	main.c:270: printf_tiny("\n\n\n\r The Data Present at the Read Address is %x\n\r",x1);
      003F4D 7E 00            [12] 2266 	mov	r6,#0x00
      003F4F C0 07            [24] 2267 	push	ar7
      003F51 C0 06            [24] 2268 	push	ar6
      003F53 74 66            [12] 2269 	mov	a,#___str_24
      003F55 C0 E0            [24] 2270 	push	acc
      003F57 74 5C            [12] 2271 	mov	a,#(___str_24 >> 8)
      003F59 C0 E0            [24] 2272 	push	acc
      003F5B 12 47 2C         [24] 2273 	lcall	_printf_tiny
      003F5E E5 81            [12] 2274 	mov	a,sp
      003F60 24 FC            [12] 2275 	add	a,#0xfc
      003F62 F5 81            [12] 2276 	mov	sp,a
                                   2277 ;	main.c:271: break;
      003F64 02 3A 63         [24] 2278 	ljmp	00189$
                                   2279 ;	main.c:273: case('H'):                                                                  //HEX DUMP OPERATION
      003F67                       2280 00138$:
                                   2281 ;	main.c:275: printf_tiny("\n\r********************************************* \n\r");
      003F67 74 77            [12] 2282 	mov	a,#___str_9
      003F69 C0 E0            [24] 2283 	push	acc
      003F6B 74 5A            [12] 2284 	mov	a,#(___str_9 >> 8)
      003F6D C0 E0            [24] 2285 	push	acc
      003F6F 12 47 2C         [24] 2286 	lcall	_printf_tiny
      003F72 15 81            [12] 2287 	dec	sp
      003F74 15 81            [12] 2288 	dec	sp
                                   2289 ;	main.c:276: printf_tiny("\n\r\t\tHEX DUMP\n\r ");
      003F76 74 98            [12] 2290 	mov	a,#___str_25
      003F78 C0 E0            [24] 2291 	push	acc
      003F7A 74 5C            [12] 2292 	mov	a,#(___str_25 >> 8)
      003F7C C0 E0            [24] 2293 	push	acc
      003F7E 12 47 2C         [24] 2294 	lcall	_printf_tiny
      003F81 15 81            [12] 2295 	dec	sp
      003F83 15 81            [12] 2296 	dec	sp
                                   2297 ;	main.c:277: printf_tiny("\n\r********************************************* \n\r");
      003F85 74 77            [12] 2298 	mov	a,#___str_9
      003F87 C0 E0            [24] 2299 	push	acc
      003F89 74 5A            [12] 2300 	mov	a,#(___str_9 >> 8)
      003F8B C0 E0            [24] 2301 	push	acc
      003F8D 12 47 2C         [24] 2302 	lcall	_printf_tiny
      003F90 15 81            [12] 2303 	dec	sp
      003F92 15 81            [12] 2304 	dec	sp
                                   2305 ;	main.c:278: printf_tiny("\n\rEnter the 3 Digit Starting Address for Hex Dump\n\r");
      003F94 74 A8            [12] 2306 	mov	a,#___str_26
      003F96 C0 E0            [24] 2307 	push	acc
      003F98 74 5C            [12] 2308 	mov	a,#(___str_26 >> 8)
      003F9A C0 E0            [24] 2309 	push	acc
      003F9C 12 47 2C         [24] 2310 	lcall	_printf_tiny
      003F9F 15 81            [12] 2311 	dec	sp
      003FA1 15 81            [12] 2312 	dec	sp
                                   2313 ;	main.c:279: int hex_start_address=getnumber();                                           //ACCEPTING THE HEX DUMP START ADDRESS
      003FA3 12 36 F7         [24] 2314 	lcall	_getnumber
      003FA6 E5 82            [12] 2315 	mov	a,dpl
      003FA8 85 83 F0         [24] 2316 	mov	b,dph
      003FAB 90 00 1F         [24] 2317 	mov	dptr,#_main_hex_start_address_327682_108
      003FAE F0               [24] 2318 	movx	@dptr,a
      003FAF E5 F0            [12] 2319 	mov	a,b
      003FB1 A3               [24] 2320 	inc	dptr
      003FB2 F0               [24] 2321 	movx	@dptr,a
                                   2322 ;	main.c:280: while (hex_start_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      003FB3                       2323 00139$:
      003FB3 90 00 1F         [24] 2324 	mov	dptr,#_main_hex_start_address_327682_108
      003FB6 E0               [24] 2325 	movx	a,@dptr
      003FB7 FE               [12] 2326 	mov	r6,a
      003FB8 A3               [24] 2327 	inc	dptr
      003FB9 E0               [24] 2328 	movx	a,@dptr
      003FBA FF               [12] 2329 	mov	r7,a
      003FBB BE FF 47         [24] 2330 	cjne	r6,#0xff,00146$
      003FBE BF FF 44         [24] 2331 	cjne	r7,#0xff,00146$
                                   2332 ;	main.c:282: printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
      003FC1 C0 07            [24] 2333 	push	ar7
      003FC3 C0 06            [24] 2334 	push	ar6
      003FC5 C0 06            [24] 2335 	push	ar6
      003FC7 C0 07            [24] 2336 	push	ar7
      003FC9 74 DC            [12] 2337 	mov	a,#___str_27
      003FCB C0 E0            [24] 2338 	push	acc
      003FCD 74 5C            [12] 2339 	mov	a,#(___str_27 >> 8)
      003FCF C0 E0            [24] 2340 	push	acc
      003FD1 12 47 2C         [24] 2341 	lcall	_printf_tiny
      003FD4 E5 81            [12] 2342 	mov	a,sp
      003FD6 24 FC            [12] 2343 	add	a,#0xfc
      003FD8 F5 81            [12] 2344 	mov	sp,a
      003FDA D0 06            [24] 2345 	pop	ar6
      003FDC D0 07            [24] 2346 	pop	ar7
                                   2347 ;	main.c:283: printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
      003FDE C0 06            [24] 2348 	push	ar6
      003FE0 C0 07            [24] 2349 	push	ar7
      003FE2 74 05            [12] 2350 	mov	a,#___str_28
      003FE4 C0 E0            [24] 2351 	push	acc
      003FE6 74 5D            [12] 2352 	mov	a,#(___str_28 >> 8)
      003FE8 C0 E0            [24] 2353 	push	acc
      003FEA 12 47 2C         [24] 2354 	lcall	_printf_tiny
      003FED E5 81            [12] 2355 	mov	a,sp
      003FEF 24 FC            [12] 2356 	add	a,#0xfc
      003FF1 F5 81            [12] 2357 	mov	sp,a
                                   2358 ;	main.c:284: hex_start_address=getnumber();                                          //TAKING THE ADDRESS AGAIN
      003FF3 12 36 F7         [24] 2359 	lcall	_getnumber
      003FF6 E5 82            [12] 2360 	mov	a,dpl
      003FF8 85 83 F0         [24] 2361 	mov	b,dph
      003FFB 90 00 1F         [24] 2362 	mov	dptr,#_main_hex_start_address_327682_108
      003FFE F0               [24] 2363 	movx	@dptr,a
      003FFF E5 F0            [12] 2364 	mov	a,b
      004001 A3               [24] 2365 	inc	dptr
      004002 F0               [24] 2366 	movx	@dptr,a
                                   2367 ;	main.c:286: while(!(hex_start_address>=0 && hex_start_address<=2047))                   //CHECK IF VALUE FALLS IN RANGE
      004003 80 AE            [24] 2368 	sjmp	00139$
      004005                       2369 00146$:
      004005 90 00 1F         [24] 2370 	mov	dptr,#_main_hex_start_address_327682_108
      004008 E0               [24] 2371 	movx	a,@dptr
      004009 FE               [12] 2372 	mov	r6,a
      00400A A3               [24] 2373 	inc	dptr
      00400B E0               [24] 2374 	movx	a,@dptr
      00400C FF               [12] 2375 	mov	r7,a
      00400D 20 E7 0F         [24] 2376 	jb	acc.7,00147$
      004010 C3               [12] 2377 	clr	c
      004011 74 FF            [12] 2378 	mov	a,#0xff
      004013 9E               [12] 2379 	subb	a,r6
      004014 74 87            [12] 2380 	mov	a,#(0x07 ^ 0x80)
      004016 8F F0            [24] 2381 	mov	b,r7
      004018 63 F0 80         [24] 2382 	xrl	b,#0x80
      00401B 95 F0            [12] 2383 	subb	a,b
      00401D 50 6C            [24] 2384 	jnc	00148$
      00401F                       2385 00147$:
                                   2386 ;	main.c:288: printf_tiny ("\n\rHex Dump Starting Address is INVALID\n\r",hex_start_address);
      00401F 90 00 1F         [24] 2387 	mov	dptr,#_main_hex_start_address_327682_108
      004022 E0               [24] 2388 	movx	a,@dptr
      004023 FC               [12] 2389 	mov	r4,a
      004024 A3               [24] 2390 	inc	dptr
      004025 E0               [24] 2391 	movx	a,@dptr
      004026 FD               [12] 2392 	mov	r5,a
      004027 C0 05            [24] 2393 	push	ar5
      004029 C0 04            [24] 2394 	push	ar4
      00402B C0 04            [24] 2395 	push	ar4
      00402D C0 05            [24] 2396 	push	ar5
      00402F 74 DC            [12] 2397 	mov	a,#___str_27
      004031 C0 E0            [24] 2398 	push	acc
      004033 74 5C            [12] 2399 	mov	a,#(___str_27 >> 8)
      004035 C0 E0            [24] 2400 	push	acc
      004037 12 47 2C         [24] 2401 	lcall	_printf_tiny
      00403A E5 81            [12] 2402 	mov	a,sp
      00403C 24 FC            [12] 2403 	add	a,#0xfc
      00403E F5 81            [12] 2404 	mov	sp,a
      004040 D0 04            [24] 2405 	pop	ar4
      004042 D0 05            [24] 2406 	pop	ar5
                                   2407 ;	main.c:289: printf_tiny ("\n\rEnter a New Hex Dump Starting Address\n\r",hex_start_address);
      004044 C0 04            [24] 2408 	push	ar4
      004046 C0 05            [24] 2409 	push	ar5
      004048 74 05            [12] 2410 	mov	a,#___str_28
      00404A C0 E0            [24] 2411 	push	acc
      00404C 74 5D            [12] 2412 	mov	a,#(___str_28 >> 8)
      00404E C0 E0            [24] 2413 	push	acc
      004050 12 47 2C         [24] 2414 	lcall	_printf_tiny
      004053 E5 81            [12] 2415 	mov	a,sp
      004055 24 FC            [12] 2416 	add	a,#0xfc
      004057 F5 81            [12] 2417 	mov	sp,a
                                   2418 ;	main.c:290: hex_start_address=getnumber();                                          //IF NOT TAKE IT AGAIN
      004059 12 36 F7         [24] 2419 	lcall	_getnumber
      00405C AC 82            [24] 2420 	mov	r4,dpl
      00405E AD 83            [24] 2421 	mov	r5,dph
      004060 90 00 1F         [24] 2422 	mov	dptr,#_main_hex_start_address_327682_108
      004063 EC               [12] 2423 	mov	a,r4
      004064 F0               [24] 2424 	movx	@dptr,a
      004065 ED               [12] 2425 	mov	a,r5
      004066 A3               [24] 2426 	inc	dptr
      004067 F0               [24] 2427 	movx	@dptr,a
                                   2428 ;	main.c:291: if(hex_start_address!='\n' && hex_start_address!='\r')
      004068 BC 0A 05         [24] 2429 	cjne	r4,#0x0a,00499$
      00406B BD 00 02         [24] 2430 	cjne	r5,#0x00,00499$
      00406E 80 95            [24] 2431 	sjmp	00146$
      004070                       2432 00499$:
      004070 BC 0D 05         [24] 2433 	cjne	r4,#0x0d,00500$
      004073 BD 00 02         [24] 2434 	cjne	r5,#0x00,00500$
      004076 80 8D            [24] 2435 	sjmp	00146$
      004078                       2436 00500$:
                                   2437 ;	main.c:292: hex_start_address=getnumber();
      004078 12 36 F7         [24] 2438 	lcall	_getnumber
      00407B E5 82            [12] 2439 	mov	a,dpl
      00407D 85 83 F0         [24] 2440 	mov	b,dph
      004080 90 00 1F         [24] 2441 	mov	dptr,#_main_hex_start_address_327682_108
      004083 F0               [24] 2442 	movx	@dptr,a
      004084 E5 F0            [12] 2443 	mov	a,b
      004086 A3               [24] 2444 	inc	dptr
      004087 F0               [24] 2445 	movx	@dptr,a
      004088 02 40 05         [24] 2446 	ljmp	00146$
      00408B                       2447 00148$:
                                   2448 ;	main.c:294: printf_tiny ("\n\rHex Dump Starting Address entered is %x.\n\r",hex_start_address);
      00408B C0 06            [24] 2449 	push	ar6
      00408D C0 07            [24] 2450 	push	ar7
      00408F 74 2F            [12] 2451 	mov	a,#___str_29
      004091 C0 E0            [24] 2452 	push	acc
      004093 74 5D            [12] 2453 	mov	a,#(___str_29 >> 8)
      004095 C0 E0            [24] 2454 	push	acc
      004097 12 47 2C         [24] 2455 	lcall	_printf_tiny
      00409A E5 81            [12] 2456 	mov	a,sp
      00409C 24 FC            [12] 2457 	add	a,#0xfc
      00409E F5 81            [12] 2458 	mov	sp,a
                                   2459 ;	main.c:296: printf_tiny("\n\rEnter the 3 Digit Ending Address for Hex Dump\n\r");
      0040A0 74 5C            [12] 2460 	mov	a,#___str_30
      0040A2 C0 E0            [24] 2461 	push	acc
      0040A4 74 5D            [12] 2462 	mov	a,#(___str_30 >> 8)
      0040A6 C0 E0            [24] 2463 	push	acc
      0040A8 12 47 2C         [24] 2464 	lcall	_printf_tiny
      0040AB 15 81            [12] 2465 	dec	sp
      0040AD 15 81            [12] 2466 	dec	sp
                                   2467 ;	main.c:298: int hex_end_address=getnumber();                                                //ACCEPTING THE HEX DUMP END ADDRESS
      0040AF 12 36 F7         [24] 2468 	lcall	_getnumber
      0040B2 E5 82            [12] 2469 	mov	a,dpl
      0040B4 85 83 F0         [24] 2470 	mov	b,dph
      0040B7 90 00 21         [24] 2471 	mov	dptr,#_main_hex_end_address_327683_111
      0040BA F0               [24] 2472 	movx	@dptr,a
      0040BB E5 F0            [12] 2473 	mov	a,b
      0040BD A3               [24] 2474 	inc	dptr
      0040BE F0               [24] 2475 	movx	@dptr,a
                                   2476 ;	main.c:299: while (hex_end_address==-1)                                                    //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      0040BF                       2477 00149$:
      0040BF 90 00 21         [24] 2478 	mov	dptr,#_main_hex_end_address_327683_111
      0040C2 E0               [24] 2479 	movx	a,@dptr
      0040C3 FE               [12] 2480 	mov	r6,a
      0040C4 A3               [24] 2481 	inc	dptr
      0040C5 E0               [24] 2482 	movx	a,@dptr
      0040C6 FF               [12] 2483 	mov	r7,a
      0040C7 BE FF 47         [24] 2484 	cjne	r6,#0xff,00156$
      0040CA BF FF 44         [24] 2485 	cjne	r7,#0xff,00156$
                                   2486 ;	main.c:301: printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
      0040CD C0 07            [24] 2487 	push	ar7
      0040CF C0 06            [24] 2488 	push	ar6
      0040D1 C0 06            [24] 2489 	push	ar6
      0040D3 C0 07            [24] 2490 	push	ar7
      0040D5 74 8E            [12] 2491 	mov	a,#___str_31
      0040D7 C0 E0            [24] 2492 	push	acc
      0040D9 74 5D            [12] 2493 	mov	a,#(___str_31 >> 8)
      0040DB C0 E0            [24] 2494 	push	acc
      0040DD 12 47 2C         [24] 2495 	lcall	_printf_tiny
      0040E0 E5 81            [12] 2496 	mov	a,sp
      0040E2 24 FC            [12] 2497 	add	a,#0xfc
      0040E4 F5 81            [12] 2498 	mov	sp,a
      0040E6 D0 06            [24] 2499 	pop	ar6
      0040E8 D0 07            [24] 2500 	pop	ar7
                                   2501 ;	main.c:302: printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);
      0040EA C0 06            [24] 2502 	push	ar6
      0040EC C0 07            [24] 2503 	push	ar7
      0040EE 74 B5            [12] 2504 	mov	a,#___str_32
      0040F0 C0 E0            [24] 2505 	push	acc
      0040F2 74 5D            [12] 2506 	mov	a,#(___str_32 >> 8)
      0040F4 C0 E0            [24] 2507 	push	acc
      0040F6 12 47 2C         [24] 2508 	lcall	_printf_tiny
      0040F9 E5 81            [12] 2509 	mov	a,sp
      0040FB 24 FC            [12] 2510 	add	a,#0xfc
      0040FD F5 81            [12] 2511 	mov	sp,a
                                   2512 ;	main.c:304: hex_end_address=getnumber();                                                //TAKING THE ADDRESS AGAIN
      0040FF 12 36 F7         [24] 2513 	lcall	_getnumber
      004102 E5 82            [12] 2514 	mov	a,dpl
      004104 85 83 F0         [24] 2515 	mov	b,dph
      004107 90 00 21         [24] 2516 	mov	dptr,#_main_hex_end_address_327683_111
      00410A F0               [24] 2517 	movx	@dptr,a
      00410B E5 F0            [12] 2518 	mov	a,b
      00410D A3               [24] 2519 	inc	dptr
      00410E F0               [24] 2520 	movx	@dptr,a
                                   2521 ;	main.c:306: while(!(hex_end_address>=0 && hex_end_address<=2047))                           //CHECK IF VALUE FALLS IN RANGE
      00410F 80 AE            [24] 2522 	sjmp	00149$
      004111                       2523 00156$:
      004111 90 00 21         [24] 2524 	mov	dptr,#_main_hex_end_address_327683_111
      004114 E0               [24] 2525 	movx	a,@dptr
      004115 FE               [12] 2526 	mov	r6,a
      004116 A3               [24] 2527 	inc	dptr
      004117 E0               [24] 2528 	movx	a,@dptr
      004118 FF               [12] 2529 	mov	r7,a
      004119 20 E7 0F         [24] 2530 	jb	acc.7,00157$
      00411C C3               [12] 2531 	clr	c
      00411D 74 FF            [12] 2532 	mov	a,#0xff
      00411F 9E               [12] 2533 	subb	a,r6
      004120 74 87            [12] 2534 	mov	a,#(0x07 ^ 0x80)
      004122 8F F0            [24] 2535 	mov	b,r7
      004124 63 F0 80         [24] 2536 	xrl	b,#0x80
      004127 95 F0            [12] 2537 	subb	a,b
      004129 50 6C            [24] 2538 	jnc	00158$
      00412B                       2539 00157$:
                                   2540 ;	main.c:308: printf_tiny ("\n\rHex Dump Ending Address is INVALID\n\r",hex_end_address);
      00412B 90 00 21         [24] 2541 	mov	dptr,#_main_hex_end_address_327683_111
      00412E E0               [24] 2542 	movx	a,@dptr
      00412F FC               [12] 2543 	mov	r4,a
      004130 A3               [24] 2544 	inc	dptr
      004131 E0               [24] 2545 	movx	a,@dptr
      004132 FD               [12] 2546 	mov	r5,a
      004133 C0 05            [24] 2547 	push	ar5
      004135 C0 04            [24] 2548 	push	ar4
      004137 C0 04            [24] 2549 	push	ar4
      004139 C0 05            [24] 2550 	push	ar5
      00413B 74 8E            [12] 2551 	mov	a,#___str_31
      00413D C0 E0            [24] 2552 	push	acc
      00413F 74 5D            [12] 2553 	mov	a,#(___str_31 >> 8)
      004141 C0 E0            [24] 2554 	push	acc
      004143 12 47 2C         [24] 2555 	lcall	_printf_tiny
      004146 E5 81            [12] 2556 	mov	a,sp
      004148 24 FC            [12] 2557 	add	a,#0xfc
      00414A F5 81            [12] 2558 	mov	sp,a
      00414C D0 04            [24] 2559 	pop	ar4
      00414E D0 05            [24] 2560 	pop	ar5
                                   2561 ;	main.c:309: printf_tiny ("\n\rEnter a New Hex Dump Ending Address\n\r",hex_end_address);
      004150 C0 04            [24] 2562 	push	ar4
      004152 C0 05            [24] 2563 	push	ar5
      004154 74 B5            [12] 2564 	mov	a,#___str_32
      004156 C0 E0            [24] 2565 	push	acc
      004158 74 5D            [12] 2566 	mov	a,#(___str_32 >> 8)
      00415A C0 E0            [24] 2567 	push	acc
      00415C 12 47 2C         [24] 2568 	lcall	_printf_tiny
      00415F E5 81            [12] 2569 	mov	a,sp
      004161 24 FC            [12] 2570 	add	a,#0xfc
      004163 F5 81            [12] 2571 	mov	sp,a
                                   2572 ;	main.c:310: hex_end_address=getnumber();
      004165 12 36 F7         [24] 2573 	lcall	_getnumber
      004168 AC 82            [24] 2574 	mov	r4,dpl
      00416A AD 83            [24] 2575 	mov	r5,dph
      00416C 90 00 21         [24] 2576 	mov	dptr,#_main_hex_end_address_327683_111
      00416F EC               [12] 2577 	mov	a,r4
      004170 F0               [24] 2578 	movx	@dptr,a
      004171 ED               [12] 2579 	mov	a,r5
      004172 A3               [24] 2580 	inc	dptr
      004173 F0               [24] 2581 	movx	@dptr,a
                                   2582 ;	main.c:311: if(hex_end_address!='\n' && hex_end_address!='\r')                          //IF NOT, TAKE IT AGAIN
      004174 BC 0A 05         [24] 2583 	cjne	r4,#0x0a,00505$
      004177 BD 00 02         [24] 2584 	cjne	r5,#0x00,00505$
      00417A 80 95            [24] 2585 	sjmp	00156$
      00417C                       2586 00505$:
      00417C BC 0D 05         [24] 2587 	cjne	r4,#0x0d,00506$
      00417F BD 00 02         [24] 2588 	cjne	r5,#0x00,00506$
      004182 80 8D            [24] 2589 	sjmp	00156$
      004184                       2590 00506$:
                                   2591 ;	main.c:312: hex_end_address=getnumber();
      004184 12 36 F7         [24] 2592 	lcall	_getnumber
      004187 E5 82            [12] 2593 	mov	a,dpl
      004189 85 83 F0         [24] 2594 	mov	b,dph
      00418C 90 00 21         [24] 2595 	mov	dptr,#_main_hex_end_address_327683_111
      00418F F0               [24] 2596 	movx	@dptr,a
      004190 E5 F0            [12] 2597 	mov	a,b
      004192 A3               [24] 2598 	inc	dptr
      004193 F0               [24] 2599 	movx	@dptr,a
      004194 02 41 11         [24] 2600 	ljmp	00156$
      004197                       2601 00158$:
                                   2602 ;	main.c:314: printf_tiny ("\n\rHex Dump Ending Address entered is %x.\n\r",hex_end_address);
      004197 C0 07            [24] 2603 	push	ar7
      004199 C0 06            [24] 2604 	push	ar6
      00419B C0 06            [24] 2605 	push	ar6
      00419D C0 07            [24] 2606 	push	ar7
      00419F 74 DD            [12] 2607 	mov	a,#___str_33
      0041A1 C0 E0            [24] 2608 	push	acc
      0041A3 74 5D            [12] 2609 	mov	a,#(___str_33 >> 8)
      0041A5 C0 E0            [24] 2610 	push	acc
      0041A7 12 47 2C         [24] 2611 	lcall	_printf_tiny
      0041AA E5 81            [12] 2612 	mov	a,sp
      0041AC 24 FC            [12] 2613 	add	a,#0xfc
      0041AE F5 81            [12] 2614 	mov	sp,a
      0041B0 D0 06            [24] 2615 	pop	ar6
      0041B2 D0 07            [24] 2616 	pop	ar7
                                   2617 ;	main.c:316: if(hex_start_address>hex_end_address)                                           //ERROR IF END ADDRESS <START ADDRESS
      0041B4 90 00 1F         [24] 2618 	mov	dptr,#_main_hex_start_address_327682_108
      0041B7 E0               [24] 2619 	movx	a,@dptr
      0041B8 FC               [12] 2620 	mov	r4,a
      0041B9 A3               [24] 2621 	inc	dptr
      0041BA E0               [24] 2622 	movx	a,@dptr
      0041BB FD               [12] 2623 	mov	r5,a
      0041BC C3               [12] 2624 	clr	c
      0041BD EE               [12] 2625 	mov	a,r6
      0041BE 9C               [12] 2626 	subb	a,r4
      0041BF EF               [12] 2627 	mov	a,r7
      0041C0 64 80            [12] 2628 	xrl	a,#0x80
      0041C2 8D F0            [24] 2629 	mov	b,r5
      0041C4 63 F0 80         [24] 2630 	xrl	b,#0x80
      0041C7 95 F0            [12] 2631 	subb	a,b
      0041C9 50 0F            [24] 2632 	jnc	00160$
                                   2633 ;	main.c:318: printf_tiny("\n\rERROR:  The value of Hex Start Address was less than the Hex End Address\n\r");
      0041CB 74 08            [12] 2634 	mov	a,#___str_34
      0041CD C0 E0            [24] 2635 	push	acc
      0041CF 74 5E            [12] 2636 	mov	a,#(___str_34 >> 8)
      0041D1 C0 E0            [24] 2637 	push	acc
      0041D3 12 47 2C         [24] 2638 	lcall	_printf_tiny
      0041D6 15 81            [12] 2639 	dec	sp
      0041D8 15 81            [12] 2640 	dec	sp
      0041DA                       2641 00160$:
                                   2642 ;	main.c:320: Sequence_read(hex_start_address,hex_end_address);
      0041DA 90 00 1F         [24] 2643 	mov	dptr,#_main_hex_start_address_327682_108
      0041DD E0               [24] 2644 	movx	a,@dptr
      0041DE FE               [12] 2645 	mov	r6,a
      0041DF A3               [24] 2646 	inc	dptr
      0041E0 E0               [24] 2647 	movx	a,@dptr
      0041E1 FF               [12] 2648 	mov	r7,a
      0041E2 90 00 21         [24] 2649 	mov	dptr,#_main_hex_end_address_327683_111
      0041E5 E0               [24] 2650 	movx	a,@dptr
      0041E6 FC               [12] 2651 	mov	r4,a
      0041E7 A3               [24] 2652 	inc	dptr
      0041E8 E0               [24] 2653 	movx	a,@dptr
      0041E9 FD               [12] 2654 	mov	r5,a
      0041EA 90 00 0E         [24] 2655 	mov	dptr,#_Sequence_read_PARM_2
      0041ED EC               [12] 2656 	mov	a,r4
      0041EE F0               [24] 2657 	movx	@dptr,a
      0041EF ED               [12] 2658 	mov	a,r5
      0041F0 A3               [24] 2659 	inc	dptr
      0041F1 F0               [24] 2660 	movx	@dptr,a
      0041F2 8E 82            [24] 2661 	mov	dpl,r6
      0041F4 8F 83            [24] 2662 	mov	dph,r7
      0041F6 12 33 12         [24] 2663 	lcall	_Sequence_read
                                   2664 ;	main.c:321: break;
      0041F9 02 3A 63         [24] 2665 	ljmp	00189$
                                   2666 ;	main.c:323: case('P'):                                                              //PAGE WRITE OPERATION
      0041FC                       2667 00161$:
                                   2668 ;	main.c:325: printf_tiny("\n\r********************************************* \n\r");
      0041FC 74 77            [12] 2669 	mov	a,#___str_9
      0041FE C0 E0            [24] 2670 	push	acc
      004200 74 5A            [12] 2671 	mov	a,#(___str_9 >> 8)
      004202 C0 E0            [24] 2672 	push	acc
      004204 12 47 2C         [24] 2673 	lcall	_printf_tiny
      004207 15 81            [12] 2674 	dec	sp
      004209 15 81            [12] 2675 	dec	sp
                                   2676 ;	main.c:326: printf_tiny("\n\r\t\tPAGE WRITE\n\r ");
      00420B 74 55            [12] 2677 	mov	a,#___str_35
      00420D C0 E0            [24] 2678 	push	acc
      00420F 74 5E            [12] 2679 	mov	a,#(___str_35 >> 8)
      004211 C0 E0            [24] 2680 	push	acc
      004213 12 47 2C         [24] 2681 	lcall	_printf_tiny
      004216 15 81            [12] 2682 	dec	sp
      004218 15 81            [12] 2683 	dec	sp
                                   2684 ;	main.c:327: printf_tiny("\n\r********************************************* \n\r");
      00421A 74 77            [12] 2685 	mov	a,#___str_9
      00421C C0 E0            [24] 2686 	push	acc
      00421E 74 5A            [12] 2687 	mov	a,#(___str_9 >> 8)
      004220 C0 E0            [24] 2688 	push	acc
      004222 12 47 2C         [24] 2689 	lcall	_printf_tiny
      004225 15 81            [12] 2690 	dec	sp
      004227 15 81            [12] 2691 	dec	sp
                                   2692 ;	main.c:328: printf_tiny("\n\rEnter the Page Address \n\r");
      004229 74 67            [12] 2693 	mov	a,#___str_36
      00422B C0 E0            [24] 2694 	push	acc
      00422D 74 5E            [12] 2695 	mov	a,#(___str_36 >> 8)
      00422F C0 E0            [24] 2696 	push	acc
      004231 12 47 2C         [24] 2697 	lcall	_printf_tiny
      004234 15 81            [12] 2698 	dec	sp
      004236 15 81            [12] 2699 	dec	sp
                                   2700 ;	main.c:329: int page_address=getnumber();
      004238 12 36 F7         [24] 2701 	lcall	_getnumber
      00423B E5 82            [12] 2702 	mov	a,dpl
      00423D 85 83 F0         [24] 2703 	mov	b,dph
      004240 90 00 23         [24] 2704 	mov	dptr,#_main_page_address_327682_116
      004243 F0               [24] 2705 	movx	@dptr,a
      004244 E5 F0            [12] 2706 	mov	a,b
      004246 A3               [24] 2707 	inc	dptr
      004247 F0               [24] 2708 	movx	@dptr,a
                                   2709 ;	main.c:331: while (page_address==-1)                                                //PRINT ADDRESS IS INVALID FOR INVALID CHARACTERS ENTERED
      004248                       2710 00162$:
      004248 90 00 23         [24] 2711 	mov	dptr,#_main_page_address_327682_116
      00424B E0               [24] 2712 	movx	a,@dptr
      00424C FE               [12] 2713 	mov	r6,a
      00424D A3               [24] 2714 	inc	dptr
      00424E E0               [24] 2715 	movx	a,@dptr
      00424F FF               [12] 2716 	mov	r7,a
      004250 BE FF 47         [24] 2717 	cjne	r6,#0xff,00169$
      004253 BF FF 44         [24] 2718 	cjne	r7,#0xff,00169$
                                   2719 ;	main.c:333: printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
      004256 C0 07            [24] 2720 	push	ar7
      004258 C0 06            [24] 2721 	push	ar6
      00425A C0 06            [24] 2722 	push	ar6
      00425C C0 07            [24] 2723 	push	ar7
      00425E 74 83            [12] 2724 	mov	a,#___str_37
      004260 C0 E0            [24] 2725 	push	acc
      004262 74 5E            [12] 2726 	mov	a,#(___str_37 >> 8)
      004264 C0 E0            [24] 2727 	push	acc
      004266 12 47 2C         [24] 2728 	lcall	_printf_tiny
      004269 E5 81            [12] 2729 	mov	a,sp
      00426B 24 FC            [12] 2730 	add	a,#0xfc
      00426D F5 81            [12] 2731 	mov	sp,a
      00426F D0 06            [24] 2732 	pop	ar6
      004271 D0 07            [24] 2733 	pop	ar7
                                   2734 ;	main.c:334: printf_tiny ("\n\rEnter a new page starting address\n\r",page_address);
      004273 C0 06            [24] 2735 	push	ar6
      004275 C0 07            [24] 2736 	push	ar7
      004277 74 B4            [12] 2737 	mov	a,#___str_38
      004279 C0 E0            [24] 2738 	push	acc
      00427B 74 5E            [12] 2739 	mov	a,#(___str_38 >> 8)
      00427D C0 E0            [24] 2740 	push	acc
      00427F 12 47 2C         [24] 2741 	lcall	_printf_tiny
      004282 E5 81            [12] 2742 	mov	a,sp
      004284 24 FC            [12] 2743 	add	a,#0xfc
      004286 F5 81            [12] 2744 	mov	sp,a
                                   2745 ;	main.c:336: page_address=getnumber();                                           //TAKING THE ADDRESS AGAIN
      004288 12 36 F7         [24] 2746 	lcall	_getnumber
      00428B E5 82            [12] 2747 	mov	a,dpl
      00428D 85 83 F0         [24] 2748 	mov	b,dph
      004290 90 00 23         [24] 2749 	mov	dptr,#_main_page_address_327682_116
      004293 F0               [24] 2750 	movx	@dptr,a
      004294 E5 F0            [12] 2751 	mov	a,b
      004296 A3               [24] 2752 	inc	dptr
      004297 F0               [24] 2753 	movx	@dptr,a
                                   2754 ;	main.c:338: while(!(page_address>=0 && page_address<=2047))                         //CHECK IF VALUE FALLS IN RANGE
      004298 80 AE            [24] 2755 	sjmp	00162$
      00429A                       2756 00169$:
      00429A 90 00 23         [24] 2757 	mov	dptr,#_main_page_address_327682_116
      00429D E0               [24] 2758 	movx	a,@dptr
      00429E FE               [12] 2759 	mov	r6,a
      00429F A3               [24] 2760 	inc	dptr
      0042A0 E0               [24] 2761 	movx	a,@dptr
      0042A1 FF               [12] 2762 	mov	r7,a
      0042A2 20 E7 0F         [24] 2763 	jb	acc.7,00170$
      0042A5 C3               [12] 2764 	clr	c
      0042A6 74 FF            [12] 2765 	mov	a,#0xff
      0042A8 9E               [12] 2766 	subb	a,r6
      0042A9 74 87            [12] 2767 	mov	a,#(0x07 ^ 0x80)
      0042AB 8F F0            [24] 2768 	mov	b,r7
      0042AD 63 F0 80         [24] 2769 	xrl	b,#0x80
      0042B0 95 F0            [12] 2770 	subb	a,b
      0042B2 50 6C            [24] 2771 	jnc	00171$
      0042B4                       2772 00170$:
                                   2773 ;	main.c:340: printf_tiny ("\n\rThe value of page address entered is invalid\n\r",page_address);
      0042B4 90 00 23         [24] 2774 	mov	dptr,#_main_page_address_327682_116
      0042B7 E0               [24] 2775 	movx	a,@dptr
      0042B8 FC               [12] 2776 	mov	r4,a
      0042B9 A3               [24] 2777 	inc	dptr
      0042BA E0               [24] 2778 	movx	a,@dptr
      0042BB FD               [12] 2779 	mov	r5,a
      0042BC C0 05            [24] 2780 	push	ar5
      0042BE C0 04            [24] 2781 	push	ar4
      0042C0 C0 04            [24] 2782 	push	ar4
      0042C2 C0 05            [24] 2783 	push	ar5
      0042C4 74 83            [12] 2784 	mov	a,#___str_37
      0042C6 C0 E0            [24] 2785 	push	acc
      0042C8 74 5E            [12] 2786 	mov	a,#(___str_37 >> 8)
      0042CA C0 E0            [24] 2787 	push	acc
      0042CC 12 47 2C         [24] 2788 	lcall	_printf_tiny
      0042CF E5 81            [12] 2789 	mov	a,sp
      0042D1 24 FC            [12] 2790 	add	a,#0xfc
      0042D3 F5 81            [12] 2791 	mov	sp,a
      0042D5 D0 04            [24] 2792 	pop	ar4
      0042D7 D0 05            [24] 2793 	pop	ar5
                                   2794 ;	main.c:341: printf_tiny ("\n\rEnter a new page address\n\r",page_address);
      0042D9 C0 04            [24] 2795 	push	ar4
      0042DB C0 05            [24] 2796 	push	ar5
      0042DD 74 DA            [12] 2797 	mov	a,#___str_39
      0042DF C0 E0            [24] 2798 	push	acc
      0042E1 74 5E            [12] 2799 	mov	a,#(___str_39 >> 8)
      0042E3 C0 E0            [24] 2800 	push	acc
      0042E5 12 47 2C         [24] 2801 	lcall	_printf_tiny
      0042E8 E5 81            [12] 2802 	mov	a,sp
      0042EA 24 FC            [12] 2803 	add	a,#0xfc
      0042EC F5 81            [12] 2804 	mov	sp,a
                                   2805 ;	main.c:342: page_address=getnumber();
      0042EE 12 36 F7         [24] 2806 	lcall	_getnumber
      0042F1 AC 82            [24] 2807 	mov	r4,dpl
      0042F3 AD 83            [24] 2808 	mov	r5,dph
      0042F5 90 00 23         [24] 2809 	mov	dptr,#_main_page_address_327682_116
      0042F8 EC               [12] 2810 	mov	a,r4
      0042F9 F0               [24] 2811 	movx	@dptr,a
      0042FA ED               [12] 2812 	mov	a,r5
      0042FB A3               [24] 2813 	inc	dptr
      0042FC F0               [24] 2814 	movx	@dptr,a
                                   2815 ;	main.c:343: if(page_address!='\n' && page_address!='\r')
      0042FD BC 0A 05         [24] 2816 	cjne	r4,#0x0a,00512$
      004300 BD 00 02         [24] 2817 	cjne	r5,#0x00,00512$
      004303 80 95            [24] 2818 	sjmp	00169$
      004305                       2819 00512$:
      004305 BC 0D 05         [24] 2820 	cjne	r4,#0x0d,00513$
      004308 BD 00 02         [24] 2821 	cjne	r5,#0x00,00513$
      00430B 80 8D            [24] 2822 	sjmp	00169$
      00430D                       2823 00513$:
                                   2824 ;	main.c:344: page_address=getnumber();
      00430D 12 36 F7         [24] 2825 	lcall	_getnumber
      004310 E5 82            [12] 2826 	mov	a,dpl
      004312 85 83 F0         [24] 2827 	mov	b,dph
      004315 90 00 23         [24] 2828 	mov	dptr,#_main_page_address_327682_116
      004318 F0               [24] 2829 	movx	@dptr,a
      004319 E5 F0            [12] 2830 	mov	a,b
      00431B A3               [24] 2831 	inc	dptr
      00431C F0               [24] 2832 	movx	@dptr,a
      00431D 02 42 9A         [24] 2833 	ljmp	00169$
      004320                       2834 00171$:
                                   2835 ;	main.c:346: printf_tiny ("\n\rThe value of page address entered is %x.\n\r",page_address);
      004320 C0 07            [24] 2836 	push	ar7
      004322 C0 06            [24] 2837 	push	ar6
      004324 C0 06            [24] 2838 	push	ar6
      004326 C0 07            [24] 2839 	push	ar7
      004328 74 F7            [12] 2840 	mov	a,#___str_40
      00432A C0 E0            [24] 2841 	push	acc
      00432C 74 5E            [12] 2842 	mov	a,#(___str_40 >> 8)
      00432E C0 E0            [24] 2843 	push	acc
      004330 12 47 2C         [24] 2844 	lcall	_printf_tiny
      004333 E5 81            [12] 2845 	mov	a,sp
      004335 24 FC            [12] 2846 	add	a,#0xfc
      004337 F5 81            [12] 2847 	mov	sp,a
      004339 D0 06            [24] 2848 	pop	ar6
      00433B D0 07            [24] 2849 	pop	ar7
                                   2850 ;	main.c:349: int page_selection_bits3=page_address&0x700;
      00433D 7C 00            [12] 2851 	mov	r4,#0x00
      00433F 74 07            [12] 2852 	mov	a,#0x07
      004341 5F               [12] 2853 	anl	a,r7
                                   2854 ;	main.c:350: page_block3=page_selection_bits3>>7;
      004342 A2 E7            [12] 2855 	mov	c,acc.7
      004344 CC               [12] 2856 	xch	a,r4
      004345 33               [12] 2857 	rlc	a
      004346 CC               [12] 2858 	xch	a,r4
      004347 33               [12] 2859 	rlc	a
      004348 CC               [12] 2860 	xch	a,r4
      004349 54 01            [12] 2861 	anl	a,#0x01
      00434B 30 E0 02         [24] 2862 	jnb	acc.0,00514$
      00434E 44 FE            [12] 2863 	orl	a,#0xfe
      004350                       2864 00514$:
      004350 FD               [12] 2865 	mov	r5,a
      004351 90 00 B1         [24] 2866 	mov	dptr,#_page_block3
      004354 EC               [12] 2867 	mov	a,r4
      004355 F0               [24] 2868 	movx	@dptr,a
      004356 ED               [12] 2869 	mov	a,r5
      004357 A3               [24] 2870 	inc	dptr
      004358 F0               [24] 2871 	movx	@dptr,a
                                   2872 ;	main.c:351: EEPROM_CMD_PAGE=0xA0|page_block3;
      004359 90 00 A3         [24] 2873 	mov	dptr,#_EEPROM_CMD_PAGE
      00435C 74 A0            [12] 2874 	mov	a,#0xa0
      00435E 4C               [12] 2875 	orl	a,r4
      00435F F0               [24] 2876 	movx	@dptr,a
      004360 ED               [12] 2877 	mov	a,r5
      004361 A3               [24] 2878 	inc	dptr
      004362 F0               [24] 2879 	movx	@dptr,a
                                   2880 ;	main.c:352: word_address3=internal_address3&0x0FF;
      004363 90 00 AB         [24] 2881 	mov	dptr,#_word_address3
      004366 EE               [12] 2882 	mov	a,r6
      004367 F0               [24] 2883 	movx	@dptr,a
      004368 E4               [12] 2884 	clr	a
      004369 A3               [24] 2885 	inc	dptr
      00436A F0               [24] 2886 	movx	@dptr,a
                                   2887 ;	main.c:353: printf_tiny("\n\rEnter the data to page write \n\r");
      00436B 74 24            [12] 2888 	mov	a,#___str_41
      00436D C0 E0            [24] 2889 	push	acc
      00436F 74 5F            [12] 2890 	mov	a,#(___str_41 >> 8)
      004371 C0 E0            [24] 2891 	push	acc
      004373 12 47 2C         [24] 2892 	lcall	_printf_tiny
      004376 15 81            [12] 2893 	dec	sp
      004378 15 81            [12] 2894 	dec	sp
                                   2895 ;	main.c:356: data_to_write=getdata();
      00437A 12 34 D1         [24] 2896 	lcall	_getdata
      00437D E5 82            [12] 2897 	mov	a,dpl
      00437F 85 83 F0         [24] 2898 	mov	b,dph
      004382 90 00 25         [24] 2899 	mov	dptr,#_main_data_to_write_327684_120
      004385 F0               [24] 2900 	movx	@dptr,a
      004386 E5 F0            [12] 2901 	mov	a,b
      004388 A3               [24] 2902 	inc	dptr
      004389 F0               [24] 2903 	movx	@dptr,a
                                   2904 ;	main.c:357: while (data_to_write==-1)                                  //PRINT WRITE DATA IS INVALID FOR INVALID CHARACTERS ENTERED
      00438A                       2905 00172$:
      00438A 90 00 25         [24] 2906 	mov	dptr,#_main_data_to_write_327684_120
      00438D E0               [24] 2907 	movx	a,@dptr
      00438E FE               [12] 2908 	mov	r6,a
      00438F A3               [24] 2909 	inc	dptr
      004390 E0               [24] 2910 	movx	a,@dptr
      004391 FF               [12] 2911 	mov	r7,a
      004392 BE FF 33         [24] 2912 	cjne	r6,#0xff,00179$
      004395 BF FF 30         [24] 2913 	cjne	r7,#0xff,00179$
                                   2914 ;	main.c:359: printf_tiny ("\n\rData Entered is INVALID\n\r");
      004398 74 7B            [12] 2915 	mov	a,#___str_16
      00439A C0 E0            [24] 2916 	push	acc
      00439C 74 5B            [12] 2917 	mov	a,#(___str_16 >> 8)
      00439E C0 E0            [24] 2918 	push	acc
      0043A0 12 47 2C         [24] 2919 	lcall	_printf_tiny
      0043A3 15 81            [12] 2920 	dec	sp
      0043A5 15 81            [12] 2921 	dec	sp
                                   2922 ;	main.c:360: printf_tiny ("\n\rEnter a New Data\n\r");
      0043A7 74 97            [12] 2923 	mov	a,#___str_17
      0043A9 C0 E0            [24] 2924 	push	acc
      0043AB 74 5B            [12] 2925 	mov	a,#(___str_17 >> 8)
      0043AD C0 E0            [24] 2926 	push	acc
      0043AF 12 47 2C         [24] 2927 	lcall	_printf_tiny
      0043B2 15 81            [12] 2928 	dec	sp
      0043B4 15 81            [12] 2929 	dec	sp
                                   2930 ;	main.c:361: data_to_write=getdata();
      0043B6 12 34 D1         [24] 2931 	lcall	_getdata
      0043B9 E5 82            [12] 2932 	mov	a,dpl
      0043BB 85 83 F0         [24] 2933 	mov	b,dph
      0043BE 90 00 25         [24] 2934 	mov	dptr,#_main_data_to_write_327684_120
      0043C1 F0               [24] 2935 	movx	@dptr,a
      0043C2 E5 F0            [12] 2936 	mov	a,b
      0043C4 A3               [24] 2937 	inc	dptr
      0043C5 F0               [24] 2938 	movx	@dptr,a
                                   2939 ;	main.c:363: while(!(data_to_write>=0 && data_to_write<=255))               // CHECKING IF VALUE FALLS IN THE REQUIRED RANGE
      0043C6 80 C2            [24] 2940 	sjmp	00172$
      0043C8                       2941 00179$:
      0043C8 90 00 25         [24] 2942 	mov	dptr,#_main_data_to_write_327684_120
      0043CB E0               [24] 2943 	movx	a,@dptr
      0043CC FE               [12] 2944 	mov	r6,a
      0043CD A3               [24] 2945 	inc	dptr
      0043CE E0               [24] 2946 	movx	a,@dptr
      0043CF FF               [12] 2947 	mov	r7,a
      0043D0 20 E7 0F         [24] 2948 	jb	acc.7,00180$
      0043D3 C3               [12] 2949 	clr	c
      0043D4 74 FF            [12] 2950 	mov	a,#0xff
      0043D6 9E               [12] 2951 	subb	a,r6
      0043D7 74 80            [12] 2952 	mov	a,#(0x00 ^ 0x80)
      0043D9 8F F0            [24] 2953 	mov	b,r7
      0043DB 63 F0 80         [24] 2954 	xrl	b,#0x80
      0043DE 95 F0            [12] 2955 	subb	a,b
      0043E0 50 4F            [24] 2956 	jnc	00181$
      0043E2                       2957 00180$:
                                   2958 ;	main.c:365: printf_tiny ("\n\rData Entered is INVALID\n\r");
      0043E2 74 7B            [12] 2959 	mov	a,#___str_16
      0043E4 C0 E0            [24] 2960 	push	acc
      0043E6 74 5B            [12] 2961 	mov	a,#(___str_16 >> 8)
      0043E8 C0 E0            [24] 2962 	push	acc
      0043EA 12 47 2C         [24] 2963 	lcall	_printf_tiny
      0043ED 15 81            [12] 2964 	dec	sp
      0043EF 15 81            [12] 2965 	dec	sp
                                   2966 ;	main.c:366: printf_tiny ("\n\rEnter a New Data\n\r");
      0043F1 74 97            [12] 2967 	mov	a,#___str_17
      0043F3 C0 E0            [24] 2968 	push	acc
      0043F5 74 5B            [12] 2969 	mov	a,#(___str_17 >> 8)
      0043F7 C0 E0            [24] 2970 	push	acc
      0043F9 12 47 2C         [24] 2971 	lcall	_printf_tiny
      0043FC 15 81            [12] 2972 	dec	sp
      0043FE 15 81            [12] 2973 	dec	sp
                                   2974 ;	main.c:367: data_to_write=getdata();
      004400 12 34 D1         [24] 2975 	lcall	_getdata
      004403 AC 82            [24] 2976 	mov	r4,dpl
      004405 AD 83            [24] 2977 	mov	r5,dph
      004407 90 00 25         [24] 2978 	mov	dptr,#_main_data_to_write_327684_120
      00440A EC               [12] 2979 	mov	a,r4
      00440B F0               [24] 2980 	movx	@dptr,a
      00440C ED               [12] 2981 	mov	a,r5
      00440D A3               [24] 2982 	inc	dptr
      00440E F0               [24] 2983 	movx	@dptr,a
                                   2984 ;	main.c:368: if(data_to_write!='\n' && data_to_write!='\r')
      00440F BC 0A 05         [24] 2985 	cjne	r4,#0x0a,00519$
      004412 BD 00 02         [24] 2986 	cjne	r5,#0x00,00519$
      004415 80 B1            [24] 2987 	sjmp	00179$
      004417                       2988 00519$:
      004417 BC 0D 05         [24] 2989 	cjne	r4,#0x0d,00520$
      00441A BD 00 02         [24] 2990 	cjne	r5,#0x00,00520$
      00441D 80 A9            [24] 2991 	sjmp	00179$
      00441F                       2992 00520$:
                                   2993 ;	main.c:369: data_to_write=getdata();                           //IF NOT TAKE IT AGAIN
      00441F 12 34 D1         [24] 2994 	lcall	_getdata
      004422 E5 82            [12] 2995 	mov	a,dpl
      004424 85 83 F0         [24] 2996 	mov	b,dph
      004427 90 00 25         [24] 2997 	mov	dptr,#_main_data_to_write_327684_120
      00442A F0               [24] 2998 	movx	@dptr,a
      00442B E5 F0            [12] 2999 	mov	a,b
      00442D A3               [24] 3000 	inc	dptr
      00442E F0               [24] 3001 	movx	@dptr,a
      00442F 80 97            [24] 3002 	sjmp	00179$
      004431                       3003 00181$:
                                   3004 ;	main.c:371: printf ("\n\rData Value to be Written is %x.\n\r",data_to_write);
      004431 C0 07            [24] 3005 	push	ar7
      004433 C0 06            [24] 3006 	push	ar6
      004435 C0 06            [24] 3007 	push	ar6
      004437 C0 07            [24] 3008 	push	ar7
      004439 74 AC            [12] 3009 	mov	a,#___str_18
      00443B C0 E0            [24] 3010 	push	acc
      00443D 74 5B            [12] 3011 	mov	a,#(___str_18 >> 8)
      00443F C0 E0            [24] 3012 	push	acc
      004441 74 80            [12] 3013 	mov	a,#0x80
      004443 C0 E0            [24] 3014 	push	acc
      004445 12 4E 96         [24] 3015 	lcall	_printf
      004448 E5 81            [12] 3016 	mov	a,sp
      00444A 24 FB            [12] 3017 	add	a,#0xfb
      00444C F5 81            [12] 3018 	mov	sp,a
      00444E D0 06            [24] 3019 	pop	ar6
      004450 D0 07            [24] 3020 	pop	ar7
                                   3021 ;	main.c:372: SDA=HIGH;
                                   3022 ;	assignBit
      004452 D2 95            [12] 3023 	setb	_P1_5
                                   3024 ;	main.c:373: PAGE_Write(word_address3,data_to_write);
      004454 90 00 AB         [24] 3025 	mov	dptr,#_word_address3
      004457 E0               [24] 3026 	movx	a,@dptr
      004458 FC               [12] 3027 	mov	r4,a
      004459 A3               [24] 3028 	inc	dptr
      00445A E0               [24] 3029 	movx	a,@dptr
      00445B FD               [12] 3030 	mov	r5,a
      00445C 90 00 08         [24] 3031 	mov	dptr,#_PAGE_Write_PARM_2
      00445F EE               [12] 3032 	mov	a,r6
      004460 F0               [24] 3033 	movx	@dptr,a
      004461 EF               [12] 3034 	mov	a,r7
      004462 A3               [24] 3035 	inc	dptr
      004463 F0               [24] 3036 	movx	@dptr,a
      004464 8C 82            [24] 3037 	mov	dpl,r4
      004466 8D 83            [24] 3038 	mov	dph,r5
      004468 12 32 23         [24] 3039 	lcall	_PAGE_Write
                                   3040 ;	main.c:374: break;
      00446B 02 3A 63         [24] 3041 	ljmp	00189$
                                   3042 ;	main.c:376: case('E'):                                                  //RESET SIGNAL
      00446E                       3043 00182$:
                                   3044 ;	main.c:378: printf_tiny("\n\r********************************************* \n\r");
      00446E 74 77            [12] 3045 	mov	a,#___str_9
      004470 C0 E0            [24] 3046 	push	acc
      004472 74 5A            [12] 3047 	mov	a,#(___str_9 >> 8)
      004474 C0 E0            [24] 3048 	push	acc
      004476 12 47 2C         [24] 3049 	lcall	_printf_tiny
      004479 15 81            [12] 3050 	dec	sp
      00447B 15 81            [12] 3051 	dec	sp
                                   3052 ;	main.c:379: printf_tiny("\n\r\t\t\tRESET I2C\n\r ");
      00447D 74 46            [12] 3053 	mov	a,#___str_42
      00447F C0 E0            [24] 3054 	push	acc
      004481 74 5F            [12] 3055 	mov	a,#(___str_42 >> 8)
      004483 C0 E0            [24] 3056 	push	acc
      004485 12 47 2C         [24] 3057 	lcall	_printf_tiny
      004488 15 81            [12] 3058 	dec	sp
      00448A 15 81            [12] 3059 	dec	sp
                                   3060 ;	main.c:380: printf_tiny("\n\r********************************************* \n\r");
      00448C 74 77            [12] 3061 	mov	a,#___str_9
      00448E C0 E0            [24] 3062 	push	acc
      004490 74 5A            [12] 3063 	mov	a,#(___str_9 >> 8)
      004492 C0 E0            [24] 3064 	push	acc
      004494 12 47 2C         [24] 3065 	lcall	_printf_tiny
      004497 15 81            [12] 3066 	dec	sp
      004499 15 81            [12] 3067 	dec	sp
                                   3068 ;	main.c:381: reset();
      00449B 12 34 B0         [24] 3069 	lcall	_reset
                                   3070 ;	main.c:382: break;
      00449E 02 3A 63         [24] 3071 	ljmp	00189$
                                   3072 ;	main.c:384: default:                                                    //INVALID INPUT
      0044A1                       3073 00183$:
                                   3074 ;	main.c:386: printf("\n\rINVALID INPUT: PLS ENTER THE CORRECT KEY\n\r");
      0044A1 74 58            [12] 3075 	mov	a,#___str_43
      0044A3 C0 E0            [24] 3076 	push	acc
      0044A5 74 5F            [12] 3077 	mov	a,#(___str_43 >> 8)
      0044A7 C0 E0            [24] 3078 	push	acc
      0044A9 74 80            [12] 3079 	mov	a,#0x80
      0044AB C0 E0            [24] 3080 	push	acc
      0044AD 12 4E 96         [24] 3081 	lcall	_printf
      0044B0 15 81            [12] 3082 	dec	sp
      0044B2 15 81            [12] 3083 	dec	sp
      0044B4 15 81            [12] 3084 	dec	sp
                                   3085 ;	main.c:389: }
                                   3086 ;	main.c:392: }
      0044B6 02 3A 63         [24] 3087 	ljmp	00189$
                                   3088 ;------------------------------------------------------------
                                   3089 ;Allocation info for local variables in function 'putchar'
                                   3090 ;------------------------------------------------------------
                                   3091 ;c                         Allocated with name '_putchar_c_65536_125'
                                   3092 ;------------------------------------------------------------
                                   3093 ;	main.c:394: int putchar (int c)
                                   3094 ;	-----------------------------------------
                                   3095 ;	 function putchar
                                   3096 ;	-----------------------------------------
      0044B9                       3097 _putchar:
      0044B9 AF 83            [24] 3098 	mov	r7,dph
      0044BB E5 82            [12] 3099 	mov	a,dpl
      0044BD 90 00 27         [24] 3100 	mov	dptr,#_putchar_c_65536_125
      0044C0 F0               [24] 3101 	movx	@dptr,a
      0044C1 EF               [12] 3102 	mov	a,r7
      0044C2 A3               [24] 3103 	inc	dptr
      0044C3 F0               [24] 3104 	movx	@dptr,a
                                   3105 ;	main.c:396: while (!TI);				// WAIT FOR TX READY
      0044C4                       3106 00101$:
      0044C4 30 99 FD         [24] 3107 	jnb	_TI,00101$
                                   3108 ;	main.c:397: SBUF = c;           	// LOAD SERIAL PORT WITH TIMEOUT VALUE
      0044C7 90 00 27         [24] 3109 	mov	dptr,#_putchar_c_65536_125
      0044CA E0               [24] 3110 	movx	a,@dptr
      0044CB FE               [12] 3111 	mov	r6,a
      0044CC A3               [24] 3112 	inc	dptr
      0044CD E0               [24] 3113 	movx	a,@dptr
      0044CE 8E 99            [24] 3114 	mov	_SBUF,r6
                                   3115 ;	main.c:398: TI = 0;  	            // CLEAR TI FLAG
                                   3116 ;	assignBit
      0044D0 C2 99            [12] 3117 	clr	_TI
                                   3118 ;	main.c:399: return 0;
      0044D2 90 00 00         [24] 3119 	mov	dptr,#0x0000
                                   3120 ;	main.c:400: }
      0044D5 22               [24] 3121 	ret
                                   3122 ;------------------------------------------------------------
                                   3123 ;Allocation info for local variables in function 'getchar'
                                   3124 ;------------------------------------------------------------
                                   3125 ;	main.c:402: int getchar ()
                                   3126 ;	-----------------------------------------
                                   3127 ;	 function getchar
                                   3128 ;	-----------------------------------------
      0044D6                       3129 _getchar:
                                   3130 ;	main.c:405: while (!RI);                // WAIT FOR RX READY
      0044D6                       3131 00101$:
                                   3132 ;	main.c:406: RI = 0;			            // CLEAR RI FLAG
                                   3133 ;	assignBit
      0044D6 10 98 02         [24] 3134 	jbc	_RI,00114$
      0044D9 80 FB            [24] 3135 	sjmp	00101$
      0044DB                       3136 00114$:
                                   3137 ;	main.c:407: return SBUF;  	            // REYTRUN CHARACTER FROM SBUF
      0044DB AE 99            [24] 3138 	mov	r6,_SBUF
      0044DD 7F 00            [12] 3139 	mov	r7,#0x00
      0044DF 8E 82            [24] 3140 	mov	dpl,r6
      0044E1 8F 83            [24] 3141 	mov	dph,r7
                                   3142 ;	main.c:408: }
      0044E3 22               [24] 3143 	ret
                                   3144 	.area CSEG    (CODE)
                                   3145 	.area CONST   (CODE)
                                   3146 	.area CONST   (CODE)
      005973                       3147 ___str_0:
      005973 0A                    3148 	.db 0x0a
      005974 0D                    3149 	.db 0x0d
      005975 7E 7E 7E 7E 7E 7E 7E  3150 	.ascii "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 20
      0059A5 0A                    3151 	.db 0x0a
      0059A6 0D                    3152 	.db 0x0d
      0059A7 00                    3153 	.db 0x00
                                   3154 	.area CSEG    (CODE)
                                   3155 	.area CONST   (CODE)
      0059A8                       3156 ___str_1:
      0059A8 0A                    3157 	.db 0x0a
      0059A9 0D                    3158 	.db 0x0d
      0059AA 7E 7E 7E 7E 7E 7E 7E  3159 	.ascii "~~~~~~~~~~~~~~~~~I2C~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 49 32 43 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 7E 7E
             7E 7E 7E 7E 7E 20
      0059DA 0A                    3160 	.db 0x0a
      0059DB 0D                    3161 	.db 0x0d
      0059DC 00                    3162 	.db 0x00
                                   3163 	.area CSEG    (CODE)
                                   3164 	.area CONST   (CODE)
      0059DD                       3165 ___str_2:
      0059DD 0A                    3166 	.db 0x0a
      0059DE 0D                    3167 	.db 0x0d
      0059DF 54 68 65 20 66 6F 6C  3168 	.ascii "The following commands will be performed "
             6C 6F 77 69 6E 67 20
             63 6F 6D 6D 61 6E 64
             73 20 77 69 6C 6C 20
             62 65 20 70 65 72 66
             6F 72 6D 65 64 20
      005A08 0A                    3169 	.db 0x0a
      005A09 0D                    3170 	.db 0x0d
      005A0A 00                    3171 	.db 0x00
                                   3172 	.area CSEG    (CODE)
                                   3173 	.area CONST   (CODE)
      005A0B                       3174 ___str_3:
      005A0B 0A                    3175 	.db 0x0a
      005A0C 0D                    3176 	.db 0x0d
      005A0D 57 2D 57 72 69 74 65  3177 	.ascii "W-Write Byte "
             20 42 79 74 65 20
      005A1A 0A                    3178 	.db 0x0a
      005A1B 0D                    3179 	.db 0x0d
      005A1C 00                    3180 	.db 0x00
                                   3181 	.area CSEG    (CODE)
                                   3182 	.area CONST   (CODE)
      005A1D                       3183 ___str_4:
      005A1D 0A                    3184 	.db 0x0a
      005A1E 0D                    3185 	.db 0x0d
      005A1F 52 2D 52 65 61 64 20  3186 	.ascii "R-Read Byte "
             42 79 74 65 20
      005A2B 0A                    3187 	.db 0x0a
      005A2C 0D                    3188 	.db 0x0d
      005A2D 00                    3189 	.db 0x00
                                   3190 	.area CSEG    (CODE)
                                   3191 	.area CONST   (CODE)
      005A2E                       3192 ___str_5:
      005A2E 0A                    3193 	.db 0x0a
      005A2F 0D                    3194 	.db 0x0d
      005A30 48 2D 48 65 78 20 44  3195 	.ascii "H-Hex Dump "
             75 6D 70 20
      005A3B 0A                    3196 	.db 0x0a
      005A3C 0D                    3197 	.db 0x0d
      005A3D 00                    3198 	.db 0x00
                                   3199 	.area CSEG    (CODE)
                                   3200 	.area CONST   (CODE)
      005A3E                       3201 ___str_6:
      005A3E 0A                    3202 	.db 0x0a
      005A3F 0D                    3203 	.db 0x0d
      005A40 50 2D 50 61 67 65 20  3204 	.ascii "P-Page Write "
             57 72 69 74 65 20
      005A4D 0A                    3205 	.db 0x0a
      005A4E 0D                    3206 	.db 0x0d
      005A4F 00                    3207 	.db 0x00
                                   3208 	.area CSEG    (CODE)
                                   3209 	.area CONST   (CODE)
      005A50                       3210 ___str_7:
      005A50 0A                    3211 	.db 0x0a
      005A51 0D                    3212 	.db 0x0d
      005A52 45 2D 52 65 73 65 74  3213 	.ascii "E-Reset Eeprom "
             20 45 65 70 72 6F 6D
             20
      005A61 0A                    3214 	.db 0x0a
      005A62 0D                    3215 	.db 0x0d
      005A63 00                    3216 	.db 0x00
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
      005A64                       3219 ___str_8:
      005A64 0A                    3220 	.db 0x0a
      005A65 0D                    3221 	.db 0x0d
      005A66 45 6E 74 65 72 20 54  3222 	.ascii "Enter The Key"
             68 65 20 4B 65 79
      005A73 0A                    3223 	.db 0x0a
      005A74 0D                    3224 	.db 0x0d
      005A75 20                    3225 	.ascii " "
      005A76 00                    3226 	.db 0x00
                                   3227 	.area CSEG    (CODE)
                                   3228 	.area CONST   (CODE)
      005A77                       3229 ___str_9:
      005A77 0A                    3230 	.db 0x0a
      005A78 0D                    3231 	.db 0x0d
      005A79 2A 2A 2A 2A 2A 2A 2A  3232 	.ascii "********************************************* "
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 20
      005AA7 0A                    3233 	.db 0x0a
      005AA8 0D                    3234 	.db 0x0d
      005AA9 00                    3235 	.db 0x00
                                   3236 	.area CSEG    (CODE)
                                   3237 	.area CONST   (CODE)
      005AAA                       3238 ___str_10:
      005AAA 0A                    3239 	.db 0x0a
      005AAB 0D                    3240 	.db 0x0d
      005AAC 09                    3241 	.db 0x09
      005AAD 09                    3242 	.db 0x09
      005AAE 57 52 49 54 45 20 42  3243 	.ascii "WRITE BYTE"
             59 54 45
      005AB8 0A                    3244 	.db 0x0a
      005AB9 0D                    3245 	.db 0x0d
      005ABA 20                    3246 	.ascii " "
      005ABB 00                    3247 	.db 0x00
                                   3248 	.area CSEG    (CODE)
                                   3249 	.area CONST   (CODE)
      005ABC                       3250 ___str_11:
      005ABC 0A                    3251 	.db 0x0a
      005ABD 0D                    3252 	.db 0x0d
      005ABE 45 6E 74 65 72 20 74  3253 	.ascii "Enter the 3 Digit Write Address"
             68 65 20 33 20 44 69
             67 69 74 20 57 72 69
             74 65 20 41 64 64 72
             65 73 73
      005ADD 0A                    3254 	.db 0x0a
      005ADE 0D                    3255 	.db 0x0d
      005ADF 00                    3256 	.db 0x00
                                   3257 	.area CSEG    (CODE)
                                   3258 	.area CONST   (CODE)
      005AE0                       3259 ___str_12:
      005AE0 0A                    3260 	.db 0x0a
      005AE1 0D                    3261 	.db 0x0d
      005AE2 54 68 65 20 57 72 69  3262 	.ascii "The Write Address Entered is INVALID"
             74 65 20 41 64 64 72
             65 73 73 20 45 6E 74
             65 72 65 64 20 69 73
             20 49 4E 56 41 4C 49
             44
      005B06 0A                    3263 	.db 0x0a
      005B07 0D                    3264 	.db 0x0d
      005B08 00                    3265 	.db 0x00
                                   3266 	.area CSEG    (CODE)
                                   3267 	.area CONST   (CODE)
      005B09                       3268 ___str_13:
      005B09 0A                    3269 	.db 0x0a
      005B0A 0D                    3270 	.db 0x0d
      005B0B 45 6E 74 65 72 20 61  3271 	.ascii "Enter a New Address"
             20 4E 65 77 20 41 64
             64 72 65 73 73
      005B1E 0A                    3272 	.db 0x0a
      005B1F 0D                    3273 	.db 0x0d
      005B20 00                    3274 	.db 0x00
                                   3275 	.area CSEG    (CODE)
                                   3276 	.area CONST   (CODE)
      005B21                       3277 ___str_14:
      005B21 0A                    3278 	.db 0x0a
      005B22 0D                    3279 	.db 0x0d
      005B23 54 68 65 20 41 64 64  3280 	.ascii "The Address for Write Operation is %x."
             72 65 73 73 20 66 6F
             72 20 57 72 69 74 65
             20 4F 70 65 72 61 74
             69 6F 6E 20 69 73 20
             25 78 2E
      005B49 0A                    3281 	.db 0x0a
      005B4A 0D                    3282 	.db 0x0d
      005B4B 00                    3283 	.db 0x00
                                   3284 	.area CSEG    (CODE)
                                   3285 	.area CONST   (CODE)
      005B4C                       3286 ___str_15:
      005B4C 0A                    3287 	.db 0x0a
      005B4D 0D                    3288 	.db 0x0d
      005B4E 45 6E 74 65 72 20 74  3289 	.ascii "Enter the 2 Digit Data value to be Written"
             68 65 20 32 20 44 69
             67 69 74 20 44 61 74
             61 20 76 61 6C 75 65
             20 74 6F 20 62 65 20
             57 72 69 74 74 65 6E
      005B78 0A                    3290 	.db 0x0a
      005B79 0D                    3291 	.db 0x0d
      005B7A 00                    3292 	.db 0x00
                                   3293 	.area CSEG    (CODE)
                                   3294 	.area CONST   (CODE)
      005B7B                       3295 ___str_16:
      005B7B 0A                    3296 	.db 0x0a
      005B7C 0D                    3297 	.db 0x0d
      005B7D 44 61 74 61 20 45 6E  3298 	.ascii "Data Entered is INVALID"
             74 65 72 65 64 20 69
             73 20 49 4E 56 41 4C
             49 44
      005B94 0A                    3299 	.db 0x0a
      005B95 0D                    3300 	.db 0x0d
      005B96 00                    3301 	.db 0x00
                                   3302 	.area CSEG    (CODE)
                                   3303 	.area CONST   (CODE)
      005B97                       3304 ___str_17:
      005B97 0A                    3305 	.db 0x0a
      005B98 0D                    3306 	.db 0x0d
      005B99 45 6E 74 65 72 20 61  3307 	.ascii "Enter a New Data"
             20 4E 65 77 20 44 61
             74 61
      005BA9 0A                    3308 	.db 0x0a
      005BAA 0D                    3309 	.db 0x0d
      005BAB 00                    3310 	.db 0x00
                                   3311 	.area CSEG    (CODE)
                                   3312 	.area CONST   (CODE)
      005BAC                       3313 ___str_18:
      005BAC 0A                    3314 	.db 0x0a
      005BAD 0D                    3315 	.db 0x0d
      005BAE 44 61 74 61 20 56 61  3316 	.ascii "Data Value to be Written is %x."
             6C 75 65 20 74 6F 20
             62 65 20 57 72 69 74
             74 65 6E 20 69 73 20
             25 78 2E
      005BCD 0A                    3317 	.db 0x0a
      005BCE 0D                    3318 	.db 0x0d
      005BCF 00                    3319 	.db 0x00
                                   3320 	.area CSEG    (CODE)
                                   3321 	.area CONST   (CODE)
      005BD0                       3322 ___str_19:
      005BD0 0A                    3323 	.db 0x0a
      005BD1 0D                    3324 	.db 0x0d
      005BD2 09                    3325 	.db 0x09
      005BD3 09                    3326 	.db 0x09
      005BD4 52 45 41 44 20 42 59  3327 	.ascii "READ BYTE"
             54 45
      005BDD 0A                    3328 	.db 0x0a
      005BDE 0D                    3329 	.db 0x0d
      005BDF 20                    3330 	.ascii " "
      005BE0 00                    3331 	.db 0x00
                                   3332 	.area CSEG    (CODE)
                                   3333 	.area CONST   (CODE)
      005BE1                       3334 ___str_20:
      005BE1 0A                    3335 	.db 0x0a
      005BE2 0D                    3336 	.db 0x0d
      005BE3 45 6E 74 65 72 20 74  3337 	.ascii "Enter the 3 Digit Read Address"
             68 65 20 33 20 44 69
             67 69 74 20 52 65 61
             64 20 41 64 64 72 65
             73 73
      005C01 0A                    3338 	.db 0x0a
      005C02 0D                    3339 	.db 0x0d
      005C03 00                    3340 	.db 0x00
                                   3341 	.area CSEG    (CODE)
                                   3342 	.area CONST   (CODE)
      005C04                       3343 ___str_21:
      005C04 0A                    3344 	.db 0x0a
      005C05 0D                    3345 	.db 0x0d
      005C06 52 65 61 64 20 41 64  3346 	.ascii "Read Address entered is INVALID"
             64 72 65 73 73 20 65
             6E 74 65 72 65 64 20
             69 73 20 49 4E 56 41
             4C 49 44
      005C25 0A                    3347 	.db 0x0a
      005C26 0D                    3348 	.db 0x0d
      005C27 00                    3349 	.db 0x00
                                   3350 	.area CSEG    (CODE)
                                   3351 	.area CONST   (CODE)
      005C28                       3352 ___str_22:
      005C28 0A                    3353 	.db 0x0a
      005C29 0D                    3354 	.db 0x0d
      005C2A 45 6E 74 65 72 20 61  3355 	.ascii "Enter a New Read Address"
             20 4E 65 77 20 52 65
             61 64 20 41 64 64 72
             65 73 73
      005C42 0A                    3356 	.db 0x0a
      005C43 0D                    3357 	.db 0x0d
      005C44 00                    3358 	.db 0x00
                                   3359 	.area CSEG    (CODE)
                                   3360 	.area CONST   (CODE)
      005C45                       3361 ___str_23:
      005C45 0A                    3362 	.db 0x0a
      005C46 0D                    3363 	.db 0x0d
      005C47 54 68 65 20 52 65 61  3364 	.ascii "The Read Byte Address is %x."
             64 20 42 79 74 65 20
             41 64 64 72 65 73 73
             20 69 73 20 25 78 2E
      005C63 0A                    3365 	.db 0x0a
      005C64 0D                    3366 	.db 0x0d
      005C65 00                    3367 	.db 0x00
                                   3368 	.area CSEG    (CODE)
                                   3369 	.area CONST   (CODE)
      005C66                       3370 ___str_24:
      005C66 0A                    3371 	.db 0x0a
      005C67 0A                    3372 	.db 0x0a
      005C68 0A                    3373 	.db 0x0a
      005C69 0D                    3374 	.db 0x0d
      005C6A 20 54 68 65 20 44 61  3375 	.ascii " The Data Present at the Read Address is %x"
             74 61 20 50 72 65 73
             65 6E 74 20 61 74 20
             74 68 65 20 52 65 61
             64 20 41 64 64 72 65
             73 73 20 69 73 20 25
             78
      005C95 0A                    3376 	.db 0x0a
      005C96 0D                    3377 	.db 0x0d
      005C97 00                    3378 	.db 0x00
                                   3379 	.area CSEG    (CODE)
                                   3380 	.area CONST   (CODE)
      005C98                       3381 ___str_25:
      005C98 0A                    3382 	.db 0x0a
      005C99 0D                    3383 	.db 0x0d
      005C9A 09                    3384 	.db 0x09
      005C9B 09                    3385 	.db 0x09
      005C9C 48 45 58 20 44 55 4D  3386 	.ascii "HEX DUMP"
             50
      005CA4 0A                    3387 	.db 0x0a
      005CA5 0D                    3388 	.db 0x0d
      005CA6 20                    3389 	.ascii " "
      005CA7 00                    3390 	.db 0x00
                                   3391 	.area CSEG    (CODE)
                                   3392 	.area CONST   (CODE)
      005CA8                       3393 ___str_26:
      005CA8 0A                    3394 	.db 0x0a
      005CA9 0D                    3395 	.db 0x0d
      005CAA 45 6E 74 65 72 20 74  3396 	.ascii "Enter the 3 Digit Starting Address for Hex Dump"
             68 65 20 33 20 44 69
             67 69 74 20 53 74 61
             72 74 69 6E 67 20 41
             64 64 72 65 73 73 20
             66 6F 72 20 48 65 78
             20 44 75 6D 70
      005CD9 0A                    3397 	.db 0x0a
      005CDA 0D                    3398 	.db 0x0d
      005CDB 00                    3399 	.db 0x00
                                   3400 	.area CSEG    (CODE)
                                   3401 	.area CONST   (CODE)
      005CDC                       3402 ___str_27:
      005CDC 0A                    3403 	.db 0x0a
      005CDD 0D                    3404 	.db 0x0d
      005CDE 48 65 78 20 44 75 6D  3405 	.ascii "Hex Dump Starting Address is INVALID"
             70 20 53 74 61 72 74
             69 6E 67 20 41 64 64
             72 65 73 73 20 69 73
             20 49 4E 56 41 4C 49
             44
      005D02 0A                    3406 	.db 0x0a
      005D03 0D                    3407 	.db 0x0d
      005D04 00                    3408 	.db 0x00
                                   3409 	.area CSEG    (CODE)
                                   3410 	.area CONST   (CODE)
      005D05                       3411 ___str_28:
      005D05 0A                    3412 	.db 0x0a
      005D06 0D                    3413 	.db 0x0d
      005D07 45 6E 74 65 72 20 61  3414 	.ascii "Enter a New Hex Dump Starting Address"
             20 4E 65 77 20 48 65
             78 20 44 75 6D 70 20
             53 74 61 72 74 69 6E
             67 20 41 64 64 72 65
             73 73
      005D2C 0A                    3415 	.db 0x0a
      005D2D 0D                    3416 	.db 0x0d
      005D2E 00                    3417 	.db 0x00
                                   3418 	.area CSEG    (CODE)
                                   3419 	.area CONST   (CODE)
      005D2F                       3420 ___str_29:
      005D2F 0A                    3421 	.db 0x0a
      005D30 0D                    3422 	.db 0x0d
      005D31 48 65 78 20 44 75 6D  3423 	.ascii "Hex Dump Starting Address entered is %x."
             70 20 53 74 61 72 74
             69 6E 67 20 41 64 64
             72 65 73 73 20 65 6E
             74 65 72 65 64 20 69
             73 20 25 78 2E
      005D59 0A                    3424 	.db 0x0a
      005D5A 0D                    3425 	.db 0x0d
      005D5B 00                    3426 	.db 0x00
                                   3427 	.area CSEG    (CODE)
                                   3428 	.area CONST   (CODE)
      005D5C                       3429 ___str_30:
      005D5C 0A                    3430 	.db 0x0a
      005D5D 0D                    3431 	.db 0x0d
      005D5E 45 6E 74 65 72 20 74  3432 	.ascii "Enter the 3 Digit Ending Address for Hex Dump"
             68 65 20 33 20 44 69
             67 69 74 20 45 6E 64
             69 6E 67 20 41 64 64
             72 65 73 73 20 66 6F
             72 20 48 65 78 20 44
             75 6D 70
      005D8B 0A                    3433 	.db 0x0a
      005D8C 0D                    3434 	.db 0x0d
      005D8D 00                    3435 	.db 0x00
                                   3436 	.area CSEG    (CODE)
                                   3437 	.area CONST   (CODE)
      005D8E                       3438 ___str_31:
      005D8E 0A                    3439 	.db 0x0a
      005D8F 0D                    3440 	.db 0x0d
      005D90 48 65 78 20 44 75 6D  3441 	.ascii "Hex Dump Ending Address is INVALID"
             70 20 45 6E 64 69 6E
             67 20 41 64 64 72 65
             73 73 20 69 73 20 49
             4E 56 41 4C 49 44
      005DB2 0A                    3442 	.db 0x0a
      005DB3 0D                    3443 	.db 0x0d
      005DB4 00                    3444 	.db 0x00
                                   3445 	.area CSEG    (CODE)
                                   3446 	.area CONST   (CODE)
      005DB5                       3447 ___str_32:
      005DB5 0A                    3448 	.db 0x0a
      005DB6 0D                    3449 	.db 0x0d
      005DB7 45 6E 74 65 72 20 61  3450 	.ascii "Enter a New Hex Dump Ending Address"
             20 4E 65 77 20 48 65
             78 20 44 75 6D 70 20
             45 6E 64 69 6E 67 20
             41 64 64 72 65 73 73
      005DDA 0A                    3451 	.db 0x0a
      005DDB 0D                    3452 	.db 0x0d
      005DDC 00                    3453 	.db 0x00
                                   3454 	.area CSEG    (CODE)
                                   3455 	.area CONST   (CODE)
      005DDD                       3456 ___str_33:
      005DDD 0A                    3457 	.db 0x0a
      005DDE 0D                    3458 	.db 0x0d
      005DDF 48 65 78 20 44 75 6D  3459 	.ascii "Hex Dump Ending Address entered is %x."
             70 20 45 6E 64 69 6E
             67 20 41 64 64 72 65
             73 73 20 65 6E 74 65
             72 65 64 20 69 73 20
             25 78 2E
      005E05 0A                    3460 	.db 0x0a
      005E06 0D                    3461 	.db 0x0d
      005E07 00                    3462 	.db 0x00
                                   3463 	.area CSEG    (CODE)
                                   3464 	.area CONST   (CODE)
      005E08                       3465 ___str_34:
      005E08 0A                    3466 	.db 0x0a
      005E09 0D                    3467 	.db 0x0d
      005E0A 45 52 52 4F 52 3A 20  3468 	.ascii "ERROR:  The value of Hex Start Address was less than the Hex"
             20 54 68 65 20 76 61
             6C 75 65 20 6F 66 20
             48 65 78 20 53 74 61
             72 74 20 41 64 64 72
             65 73 73 20 77 61 73
             20 6C 65 73 73 20 74
             68 61 6E 20 74 68 65
             20 48 65 78
      005E46 20 45 6E 64 20 41 64  3469 	.ascii " End Address"
             64 72 65 73 73
      005E52 0A                    3470 	.db 0x0a
      005E53 0D                    3471 	.db 0x0d
      005E54 00                    3472 	.db 0x00
                                   3473 	.area CSEG    (CODE)
                                   3474 	.area CONST   (CODE)
      005E55                       3475 ___str_35:
      005E55 0A                    3476 	.db 0x0a
      005E56 0D                    3477 	.db 0x0d
      005E57 09                    3478 	.db 0x09
      005E58 09                    3479 	.db 0x09
      005E59 50 41 47 45 20 57 52  3480 	.ascii "PAGE WRITE"
             49 54 45
      005E63 0A                    3481 	.db 0x0a
      005E64 0D                    3482 	.db 0x0d
      005E65 20                    3483 	.ascii " "
      005E66 00                    3484 	.db 0x00
                                   3485 	.area CSEG    (CODE)
                                   3486 	.area CONST   (CODE)
      005E67                       3487 ___str_36:
      005E67 0A                    3488 	.db 0x0a
      005E68 0D                    3489 	.db 0x0d
      005E69 45 6E 74 65 72 20 74  3490 	.ascii "Enter the Page Address "
             68 65 20 50 61 67 65
             20 41 64 64 72 65 73
             73 20
      005E80 0A                    3491 	.db 0x0a
      005E81 0D                    3492 	.db 0x0d
      005E82 00                    3493 	.db 0x00
                                   3494 	.area CSEG    (CODE)
                                   3495 	.area CONST   (CODE)
      005E83                       3496 ___str_37:
      005E83 0A                    3497 	.db 0x0a
      005E84 0D                    3498 	.db 0x0d
      005E85 54 68 65 20 76 61 6C  3499 	.ascii "The value of page address entered is invalid"
             75 65 20 6F 66 20 70
             61 67 65 20 61 64 64
             72 65 73 73 20 65 6E
             74 65 72 65 64 20 69
             73 20 69 6E 76 61 6C
             69 64
      005EB1 0A                    3500 	.db 0x0a
      005EB2 0D                    3501 	.db 0x0d
      005EB3 00                    3502 	.db 0x00
                                   3503 	.area CSEG    (CODE)
                                   3504 	.area CONST   (CODE)
      005EB4                       3505 ___str_38:
      005EB4 0A                    3506 	.db 0x0a
      005EB5 0D                    3507 	.db 0x0d
      005EB6 45 6E 74 65 72 20 61  3508 	.ascii "Enter a new page starting address"
             20 6E 65 77 20 70 61
             67 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73
      005ED7 0A                    3509 	.db 0x0a
      005ED8 0D                    3510 	.db 0x0d
      005ED9 00                    3511 	.db 0x00
                                   3512 	.area CSEG    (CODE)
                                   3513 	.area CONST   (CODE)
      005EDA                       3514 ___str_39:
      005EDA 0A                    3515 	.db 0x0a
      005EDB 0D                    3516 	.db 0x0d
      005EDC 45 6E 74 65 72 20 61  3517 	.ascii "Enter a new page address"
             20 6E 65 77 20 70 61
             67 65 20 61 64 64 72
             65 73 73
      005EF4 0A                    3518 	.db 0x0a
      005EF5 0D                    3519 	.db 0x0d
      005EF6 00                    3520 	.db 0x00
                                   3521 	.area CSEG    (CODE)
                                   3522 	.area CONST   (CODE)
      005EF7                       3523 ___str_40:
      005EF7 0A                    3524 	.db 0x0a
      005EF8 0D                    3525 	.db 0x0d
      005EF9 54 68 65 20 76 61 6C  3526 	.ascii "The value of page address entered is %x."
             75 65 20 6F 66 20 70
             61 67 65 20 61 64 64
             72 65 73 73 20 65 6E
             74 65 72 65 64 20 69
             73 20 25 78 2E
      005F21 0A                    3527 	.db 0x0a
      005F22 0D                    3528 	.db 0x0d
      005F23 00                    3529 	.db 0x00
                                   3530 	.area CSEG    (CODE)
                                   3531 	.area CONST   (CODE)
      005F24                       3532 ___str_41:
      005F24 0A                    3533 	.db 0x0a
      005F25 0D                    3534 	.db 0x0d
      005F26 45 6E 74 65 72 20 74  3535 	.ascii "Enter the data to page write "
             68 65 20 64 61 74 61
             20 74 6F 20 70 61 67
             65 20 77 72 69 74 65
             20
      005F43 0A                    3536 	.db 0x0a
      005F44 0D                    3537 	.db 0x0d
      005F45 00                    3538 	.db 0x00
                                   3539 	.area CSEG    (CODE)
                                   3540 	.area CONST   (CODE)
      005F46                       3541 ___str_42:
      005F46 0A                    3542 	.db 0x0a
      005F47 0D                    3543 	.db 0x0d
      005F48 09                    3544 	.db 0x09
      005F49 09                    3545 	.db 0x09
      005F4A 09                    3546 	.db 0x09
      005F4B 52 45 53 45 54 20 49  3547 	.ascii "RESET I2C"
             32 43
      005F54 0A                    3548 	.db 0x0a
      005F55 0D                    3549 	.db 0x0d
      005F56 20                    3550 	.ascii " "
      005F57 00                    3551 	.db 0x00
                                   3552 	.area CSEG    (CODE)
                                   3553 	.area CONST   (CODE)
      005F58                       3554 ___str_43:
      005F58 0A                    3555 	.db 0x0a
      005F59 0D                    3556 	.db 0x0d
      005F5A 49 4E 56 41 4C 49 44  3557 	.ascii "INVALID INPUT: PLS ENTER THE CORRECT KEY"
             20 49 4E 50 55 54 3A
             20 50 4C 53 20 45 4E
             54 45 52 20 54 48 45
             20 43 4F 52 52 45 43
             54 20 4B 45 59
      005F82 0A                    3558 	.db 0x0a
      005F83 0D                    3559 	.db 0x0d
      005F84 00                    3560 	.db 0x00
                                   3561 	.area CSEG    (CODE)
                                   3562 	.area XINIT   (CODE)
      005F96                       3563 __xinit__EEPROM_CMD:
      005F96 00 00                 3564 	.byte #0x00, #0x00	;  0
      005F98                       3565 __xinit__EEPROM_CMD_PAGE:
      005F98 00 00                 3566 	.byte #0x00, #0x00	;  0
      005F9A                       3567 __xinit__word_address:
      005F9A 00 00                 3568 	.byte #0x00, #0x00	; 0
      005F9C                       3569 __xinit__word_address1:
      005F9C 00 00                 3570 	.byte #0x00, #0x00	; 0
      005F9E                       3571 __xinit__word_address2:
      005F9E 00 00                 3572 	.byte #0x00, #0x00	; 0
      005FA0                       3573 __xinit__word_address3:
      005FA0 00 00                 3574 	.byte #0x00, #0x00	; 0
      005FA2                       3575 __xinit__page_block1:
      005FA2 00 00                 3576 	.byte #0x00, #0x00	;  0
      005FA4                       3577 __xinit__page_block2:
      005FA4 00 00                 3578 	.byte #0x00, #0x00	;  0
      005FA6                       3579 __xinit__page_block3:
      005FA6 00 00                 3580 	.byte #0x00, #0x00	;  0
                                   3581 	.area CABS    (ABS,CODE)
