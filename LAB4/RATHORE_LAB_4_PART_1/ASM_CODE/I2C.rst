                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module I2C
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _printf
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
                                    209 	.globl _Sequence_read_PARM_2
                                    210 	.globl _PAGE_Write_PARM_2
                                    211 	.globl _EEPROM_WrByte_PARM_2
                                    212 	.globl _Delay
                                    213 	.globl _Long_Delay
                                    214 	.globl _I2C_Start
                                    215 	.globl _I2C_Stop
                                    216 	.globl _I2C_Reset
                                    217 	.globl _I2C_Read
                                    218 	.globl _I2C_Write
                                    219 	.globl _EEPROM_WrByte
                                    220 	.globl _PAGE_Write
                                    221 	.globl _ack_eeprom
                                    222 	.globl _EEPROM_RdByte
                                    223 	.globl _Sequence_read
                                    224 	.globl _reset
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           0000C8   230 _T2CON	=	0x00c8
                           0000CA   231 _RCAP2L	=	0x00ca
                           0000CB   232 _RCAP2H	=	0x00cb
                           0000CC   233 _TL2	=	0x00cc
                           0000CD   234 _TH2	=	0x00cd
                           00008E   235 _AUXR	=	0x008e
                           0000A2   236 _AUXR1	=	0x00a2
                           000097   237 _CKRL	=	0x0097
                           00008F   238 _CKCON0	=	0x008f
                           0000AF   239 _CKCON1	=	0x00af
                           0000FA   240 _CCAP0H	=	0x00fa
                           0000FB   241 _CCAP1H	=	0x00fb
                           0000FC   242 _CCAP2H	=	0x00fc
                           0000FD   243 _CCAP3H	=	0x00fd
                           0000FE   244 _CCAP4H	=	0x00fe
                           0000EA   245 _CCAP0L	=	0x00ea
                           0000EB   246 _CCAP1L	=	0x00eb
                           0000EC   247 _CCAP2L	=	0x00ec
                           0000ED   248 _CCAP3L	=	0x00ed
                           0000EE   249 _CCAP4L	=	0x00ee
                           0000DA   250 _CCAPM0	=	0x00da
                           0000DB   251 _CCAPM1	=	0x00db
                           0000DC   252 _CCAPM2	=	0x00dc
                           0000DD   253 _CCAPM3	=	0x00dd
                           0000DE   254 _CCAPM4	=	0x00de
                           0000D8   255 _CCON	=	0x00d8
                           0000F9   256 _CH	=	0x00f9
                           0000E9   257 _CL	=	0x00e9
                           0000D9   258 _CMOD	=	0x00d9
                           0000A8   259 _IEN0	=	0x00a8
                           0000B1   260 _IEN1	=	0x00b1
                           0000B8   261 _IPL0	=	0x00b8
                           0000B7   262 _IPH0	=	0x00b7
                           0000B2   263 _IPL1	=	0x00b2
                           0000B3   264 _IPH1	=	0x00b3
                           0000C0   265 _P4	=	0x00c0
                           0000E8   266 _P5	=	0x00e8
                           0000A6   267 _WDTRST	=	0x00a6
                           0000A7   268 _WDTPRG	=	0x00a7
                           0000A9   269 _SADDR	=	0x00a9
                           0000B9   270 _SADEN	=	0x00b9
                           0000C3   271 _SPCON	=	0x00c3
                           0000C4   272 _SPSTA	=	0x00c4
                           0000C5   273 _SPDAT	=	0x00c5
                           0000C9   274 _T2MOD	=	0x00c9
                           00009B   275 _BDRCON	=	0x009b
                           00009A   276 _BRL	=	0x009a
                           00009C   277 _KBLS	=	0x009c
                           00009D   278 _KBE	=	0x009d
                           00009E   279 _KBF	=	0x009e
                           0000D2   280 _EECON	=	0x00d2
                           000080   281 _P0	=	0x0080
                           000081   282 _SP	=	0x0081
                           000082   283 _DPL	=	0x0082
                           000083   284 _DPH	=	0x0083
                           000087   285 _PCON	=	0x0087
                           000088   286 _TCON	=	0x0088
                           000089   287 _TMOD	=	0x0089
                           00008A   288 _TL0	=	0x008a
                           00008B   289 _TL1	=	0x008b
                           00008C   290 _TH0	=	0x008c
                           00008D   291 _TH1	=	0x008d
                           000090   292 _P1	=	0x0090
                           000098   293 _SCON	=	0x0098
                           000099   294 _SBUF	=	0x0099
                           0000A0   295 _P2	=	0x00a0
                           0000A8   296 _IE	=	0x00a8
                           0000B0   297 _P3	=	0x00b0
                           0000B8   298 _IP	=	0x00b8
                           0000D0   299 _PSW	=	0x00d0
                           0000E0   300 _ACC	=	0x00e0
                           0000F0   301 _B	=	0x00f0
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           0000AD   307 _ET2	=	0x00ad
                           0000BD   308 _PT2	=	0x00bd
                           0000C8   309 _T2CON_0	=	0x00c8
                           0000C9   310 _T2CON_1	=	0x00c9
                           0000CA   311 _T2CON_2	=	0x00ca
                           0000CB   312 _T2CON_3	=	0x00cb
                           0000CC   313 _T2CON_4	=	0x00cc
                           0000CD   314 _T2CON_5	=	0x00cd
                           0000CE   315 _T2CON_6	=	0x00ce
                           0000CF   316 _T2CON_7	=	0x00cf
                           0000C8   317 _CP_RL2	=	0x00c8
                           0000C9   318 _C_T2	=	0x00c9
                           0000CA   319 _TR2	=	0x00ca
                           0000CB   320 _EXEN2	=	0x00cb
                           0000CC   321 _TCLK	=	0x00cc
                           0000CD   322 _RCLK	=	0x00cd
                           0000CE   323 _EXF2	=	0x00ce
                           0000CF   324 _TF2	=	0x00cf
                           0000DF   325 _CF	=	0x00df
                           0000DE   326 _CR	=	0x00de
                           0000DC   327 _CCF4	=	0x00dc
                           0000DB   328 _CCF3	=	0x00db
                           0000DA   329 _CCF2	=	0x00da
                           0000D9   330 _CCF1	=	0x00d9
                           0000D8   331 _CCF0	=	0x00d8
                           0000AE   332 _EC	=	0x00ae
                           0000BE   333 _PPCL	=	0x00be
                           0000BD   334 _PT2L	=	0x00bd
                           0000BC   335 _PSL	=	0x00bc
                           0000BB   336 _PT1L	=	0x00bb
                           0000BA   337 _PX1L	=	0x00ba
                           0000B9   338 _PT0L	=	0x00b9
                           0000B8   339 _PX0L	=	0x00b8
                           0000C0   340 _P4_0	=	0x00c0
                           0000C1   341 _P4_1	=	0x00c1
                           0000C2   342 _P4_2	=	0x00c2
                           0000C3   343 _P4_3	=	0x00c3
                           0000C4   344 _P4_4	=	0x00c4
                           0000C5   345 _P4_5	=	0x00c5
                           0000C6   346 _P4_6	=	0x00c6
                           0000C7   347 _P4_7	=	0x00c7
                           0000E8   348 _P5_0	=	0x00e8
                           0000E9   349 _P5_1	=	0x00e9
                           0000EA   350 _P5_2	=	0x00ea
                           0000EB   351 _P5_3	=	0x00eb
                           0000EC   352 _P5_4	=	0x00ec
                           0000ED   353 _P5_5	=	0x00ed
                           0000EE   354 _P5_6	=	0x00ee
                           0000EF   355 _P5_7	=	0x00ef
                           000080   356 _P0_0	=	0x0080
                           000081   357 _P0_1	=	0x0081
                           000082   358 _P0_2	=	0x0082
                           000083   359 _P0_3	=	0x0083
                           000084   360 _P0_4	=	0x0084
                           000085   361 _P0_5	=	0x0085
                           000086   362 _P0_6	=	0x0086
                           000087   363 _P0_7	=	0x0087
                           000088   364 _IT0	=	0x0088
                           000089   365 _IE0	=	0x0089
                           00008A   366 _IT1	=	0x008a
                           00008B   367 _IE1	=	0x008b
                           00008C   368 _TR0	=	0x008c
                           00008D   369 _TF0	=	0x008d
                           00008E   370 _TR1	=	0x008e
                           00008F   371 _TF1	=	0x008f
                           000090   372 _P1_0	=	0x0090
                           000091   373 _P1_1	=	0x0091
                           000092   374 _P1_2	=	0x0092
                           000093   375 _P1_3	=	0x0093
                           000094   376 _P1_4	=	0x0094
                           000095   377 _P1_5	=	0x0095
                           000096   378 _P1_6	=	0x0096
                           000097   379 _P1_7	=	0x0097
                           000098   380 _RI	=	0x0098
                           000099   381 _TI	=	0x0099
                           00009A   382 _RB8	=	0x009a
                           00009B   383 _TB8	=	0x009b
                           00009C   384 _REN	=	0x009c
                           00009D   385 _SM2	=	0x009d
                           00009E   386 _SM1	=	0x009e
                           00009F   387 _SM0	=	0x009f
                           0000A0   388 _P2_0	=	0x00a0
                           0000A1   389 _P2_1	=	0x00a1
                           0000A2   390 _P2_2	=	0x00a2
                           0000A3   391 _P2_3	=	0x00a3
                           0000A4   392 _P2_4	=	0x00a4
                           0000A5   393 _P2_5	=	0x00a5
                           0000A6   394 _P2_6	=	0x00a6
                           0000A7   395 _P2_7	=	0x00a7
                           0000A8   396 _EX0	=	0x00a8
                           0000A9   397 _ET0	=	0x00a9
                           0000AA   398 _EX1	=	0x00aa
                           0000AB   399 _ET1	=	0x00ab
                           0000AC   400 _ES	=	0x00ac
                           0000AF   401 _EA	=	0x00af
                           0000B0   402 _P3_0	=	0x00b0
                           0000B1   403 _P3_1	=	0x00b1
                           0000B2   404 _P3_2	=	0x00b2
                           0000B3   405 _P3_3	=	0x00b3
                           0000B4   406 _P3_4	=	0x00b4
                           0000B5   407 _P3_5	=	0x00b5
                           0000B6   408 _P3_6	=	0x00b6
                           0000B7   409 _P3_7	=	0x00b7
                           0000B0   410 _RXD	=	0x00b0
                           0000B1   411 _TXD	=	0x00b1
                           0000B2   412 _INT0	=	0x00b2
                           0000B3   413 _INT1	=	0x00b3
                           0000B4   414 _T0	=	0x00b4
                           0000B5   415 _T1	=	0x00b5
                           0000B6   416 _WR	=	0x00b6
                           0000B7   417 _RD	=	0x00b7
                           0000B8   418 _PX0	=	0x00b8
                           0000B9   419 _PT0	=	0x00b9
                           0000BA   420 _PX1	=	0x00ba
                           0000BB   421 _PT1	=	0x00bb
                           0000BC   422 _PS	=	0x00bc
                           0000D0   423 _P	=	0x00d0
                           0000D1   424 _F1	=	0x00d1
                           0000D2   425 _OV	=	0x00d2
                           0000D3   426 _RS0	=	0x00d3
                           0000D4   427 _RS1	=	0x00d4
                           0000D5   428 _F0	=	0x00d5
                           0000D6   429 _AC	=	0x00d6
                           0000D7   430 _CY	=	0x00d7
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area DSEG    (DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable items in internal ram 
                                    442 ;--------------------------------------------------------
                                    443 ;--------------------------------------------------------
                                    444 ; indirectly addressable internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area ISEG    (DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; absolute internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area IABS    (ABS,DATA)
                                    451 	.area IABS    (ABS,DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; bit data
                                    454 ;--------------------------------------------------------
                                    455 	.area BSEG    (BIT)
                                    456 ;--------------------------------------------------------
                                    457 ; paged external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area PSEG    (PAG,XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; external ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XSEG    (XDATA)
      000001                        464 _I2C_Read_read_65536_75:
      000001                        465 	.ds 1
      000002                        466 _I2C_Write_write_65536_78:
      000002                        467 	.ds 2
      000004                        468 _EEPROM_WrByte_PARM_2:
      000004                        469 	.ds 2
      000006                        470 _EEPROM_WrByte_word_address_65536_82:
      000006                        471 	.ds 2
      000008                        472 _PAGE_Write_PARM_2:
      000008                        473 	.ds 2
      00000A                        474 _PAGE_Write_word_address3_65536_84:
      00000A                        475 	.ds 2
      00000C                        476 _EEPROM_RdByte_word_address1_65536_90:
      00000C                        477 	.ds 2
      00000E                        478 _Sequence_read_PARM_2:
      00000E                        479 	.ds 2
      000010                        480 _Sequence_read_hex_start_address_65536_92:
      000010                        481 	.ds 2
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; global & static initialisations
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; Home
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area HOME    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; code
                                    514 ;--------------------------------------------------------
                                    515 	.area CSEG    (CODE)
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'Delay'
                                    518 ;------------------------------------------------------------
                                    519 ;	I2C.c:3: void Delay()
                                    520 ;	-----------------------------------------
                                    521 ;	 function Delay
                                    522 ;	-----------------------------------------
      003090                        523 _Delay:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
                                    532 ;	I2C.c:11: __endasm;
      003090 00               [12]  533 	nop
      003091 00               [12]  534 	nop
      003092 00               [12]  535 	nop
      003093 00               [12]  536 	nop
      003094 00               [12]  537 	nop
                                    538 ;	I2C.c:12: }
      003095 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'Long_Delay'
                                    542 ;------------------------------------------------------------
                                    543 ;i                         Allocated with name '_Long_Delay_i_65536_58'
                                    544 ;------------------------------------------------------------
                                    545 ;	I2C.c:14: void Long_Delay()
                                    546 ;	-----------------------------------------
                                    547 ;	 function Long_Delay
                                    548 ;	-----------------------------------------
      003096                        549 _Long_Delay:
                                    550 ;	I2C.c:18: for (i=0; i<100; i++)
      003096 7E 64            [12]  551 	mov	r6,#0x64
      003098 7F 00            [12]  552 	mov	r7,#0x00
      00309A                        553 00108$:
                                    554 ;	I2C.c:20: Delay();
      00309A C0 07            [24]  555 	push	ar7
      00309C C0 06            [24]  556 	push	ar6
      00309E 12 30 90         [24]  557 	lcall	_Delay
      0030A1 D0 06            [24]  558 	pop	ar6
      0030A3 D0 07            [24]  559 	pop	ar7
      0030A5 1E               [12]  560 	dec	r6
      0030A6 BE FF 01         [24]  561 	cjne	r6,#0xff,00165$
      0030A9 1F               [12]  562 	dec	r7
      0030AA                        563 00165$:
                                    564 ;	I2C.c:18: for (i=0; i<100; i++)
      0030AA EE               [12]  565 	mov	a,r6
      0030AB 4F               [12]  566 	orl	a,r7
                                    567 ;	I2C.c:22: for (i=0; i<100; i++)
      0030AC 70 EC            [24]  568 	jnz	00108$
      0030AE 7E 64            [12]  569 	mov	r6,#0x64
      0030B0 FF               [12]  570 	mov	r7,a
      0030B1                        571 00111$:
                                    572 ;	I2C.c:24: Delay();
      0030B1 C0 07            [24]  573 	push	ar7
      0030B3 C0 06            [24]  574 	push	ar6
      0030B5 12 30 90         [24]  575 	lcall	_Delay
      0030B8 D0 06            [24]  576 	pop	ar6
      0030BA D0 07            [24]  577 	pop	ar7
      0030BC 1E               [12]  578 	dec	r6
      0030BD BE FF 01         [24]  579 	cjne	r6,#0xff,00167$
      0030C0 1F               [12]  580 	dec	r7
      0030C1                        581 00167$:
                                    582 ;	I2C.c:22: for (i=0; i<100; i++)
      0030C1 EE               [12]  583 	mov	a,r6
      0030C2 4F               [12]  584 	orl	a,r7
                                    585 ;	I2C.c:26: for (i=0; i<100; i++)
      0030C3 70 EC            [24]  586 	jnz	00111$
      0030C5 7E 64            [12]  587 	mov	r6,#0x64
      0030C7 FF               [12]  588 	mov	r7,a
      0030C8                        589 00114$:
                                    590 ;	I2C.c:28: Delay();
      0030C8 C0 07            [24]  591 	push	ar7
      0030CA C0 06            [24]  592 	push	ar6
      0030CC 12 30 90         [24]  593 	lcall	_Delay
      0030CF D0 06            [24]  594 	pop	ar6
      0030D1 D0 07            [24]  595 	pop	ar7
      0030D3 1E               [12]  596 	dec	r6
      0030D4 BE FF 01         [24]  597 	cjne	r6,#0xff,00169$
      0030D7 1F               [12]  598 	dec	r7
      0030D8                        599 00169$:
                                    600 ;	I2C.c:26: for (i=0; i<100; i++)
      0030D8 EE               [12]  601 	mov	a,r6
      0030D9 4F               [12]  602 	orl	a,r7
                                    603 ;	I2C.c:30: for (i=0; i<100; i++)
      0030DA 70 EC            [24]  604 	jnz	00114$
      0030DC 7E 64            [12]  605 	mov	r6,#0x64
      0030DE FF               [12]  606 	mov	r7,a
      0030DF                        607 00117$:
                                    608 ;	I2C.c:32: Delay();
      0030DF C0 07            [24]  609 	push	ar7
      0030E1 C0 06            [24]  610 	push	ar6
      0030E3 12 30 90         [24]  611 	lcall	_Delay
      0030E6 D0 06            [24]  612 	pop	ar6
      0030E8 D0 07            [24]  613 	pop	ar7
      0030EA 1E               [12]  614 	dec	r6
      0030EB BE FF 01         [24]  615 	cjne	r6,#0xff,00171$
      0030EE 1F               [12]  616 	dec	r7
      0030EF                        617 00171$:
                                    618 ;	I2C.c:30: for (i=0; i<100; i++)
      0030EF EE               [12]  619 	mov	a,r6
      0030F0 4F               [12]  620 	orl	a,r7
                                    621 ;	I2C.c:34: for (i=0; i<100; i++)
      0030F1 70 EC            [24]  622 	jnz	00117$
      0030F3 7E 64            [12]  623 	mov	r6,#0x64
      0030F5 FF               [12]  624 	mov	r7,a
      0030F6                        625 00120$:
                                    626 ;	I2C.c:36: Delay();
      0030F6 C0 07            [24]  627 	push	ar7
      0030F8 C0 06            [24]  628 	push	ar6
      0030FA 12 30 90         [24]  629 	lcall	_Delay
      0030FD D0 06            [24]  630 	pop	ar6
      0030FF D0 07            [24]  631 	pop	ar7
      003101 1E               [12]  632 	dec	r6
      003102 BE FF 01         [24]  633 	cjne	r6,#0xff,00173$
      003105 1F               [12]  634 	dec	r7
      003106                        635 00173$:
                                    636 ;	I2C.c:34: for (i=0; i<100; i++)
      003106 EE               [12]  637 	mov	a,r6
      003107 4F               [12]  638 	orl	a,r7
      003108 70 EC            [24]  639 	jnz	00120$
                                    640 ;	I2C.c:38: }
      00310A 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'I2C_Start'
                                    644 ;------------------------------------------------------------
                                    645 ;	I2C.c:40: void I2C_Start(void)
                                    646 ;	-----------------------------------------
                                    647 ;	 function I2C_Start
                                    648 ;	-----------------------------------------
      00310B                        649 _I2C_Start:
                                    650 ;	I2C.c:42: SDA=HIGH;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
                                    651 ;	assignBit
      00310B D2 95            [12]  652 	setb	_P1_5
                                    653 ;	I2C.c:44: SCLK = HIGH;
                                    654 ;	assignBit
      00310D D2 96            [12]  655 	setb	_P1_6
                                    656 ;	I2C.c:45: Delay();                  //DELAY GIVEN BETWEEN SCLK GOING LOW AND SDA GOING LOW
      00310F 12 30 90         [24]  657 	lcall	_Delay
                                    658 ;	I2C.c:46: SDA=LOW;
                                    659 ;	assignBit
      003112 C2 95            [12]  660 	clr	_P1_5
                                    661 ;	I2C.c:47: Delay();
      003114 12 30 90         [24]  662 	lcall	_Delay
                                    663 ;	I2C.c:48: SCLK = LOW;
                                    664 ;	assignBit
      003117 C2 96            [12]  665 	clr	_P1_6
                                    666 ;	I2C.c:49: }
      003119 22               [24]  667 	ret
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'I2C_Stop'
                                    670 ;------------------------------------------------------------
                                    671 ;	I2C.c:50: void I2C_Stop(void)
                                    672 ;	-----------------------------------------
                                    673 ;	 function I2C_Stop
                                    674 ;	-----------------------------------------
      00311A                        675 _I2C_Stop:
                                    676 ;	I2C.c:52: SCLK=LOW;                 //I2C START OPERATION WHICH CONSISTS OF SCLK PULSE GOING
                                    677 ;	assignBit
      00311A C2 96            [12]  678 	clr	_P1_6
                                    679 ;	I2C.c:54: SDA=LOW;
                                    680 ;	assignBit
      00311C C2 95            [12]  681 	clr	_P1_5
                                    682 ;	I2C.c:55: Delay();                   //DELAY GIVEN BETWEEN SCLK GOING HIGH AND SDA GOING HIGH
      00311E 12 30 90         [24]  683 	lcall	_Delay
                                    684 ;	I2C.c:56: SCLK=HIGH;
                                    685 ;	assignBit
      003121 D2 96            [12]  686 	setb	_P1_6
                                    687 ;	I2C.c:57: Delay();
      003123 12 30 90         [24]  688 	lcall	_Delay
                                    689 ;	I2C.c:58: SDA=HIGH;
                                    690 ;	assignBit
      003126 D2 95            [12]  691 	setb	_P1_5
                                    692 ;	I2C.c:59: }
      003128 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'I2C_Reset'
                                    696 ;------------------------------------------------------------
                                    697 ;	I2C.c:60: void I2C_Reset()
                                    698 ;	-----------------------------------------
                                    699 ;	 function I2C_Reset
                                    700 ;	-----------------------------------------
      003129                        701 _I2C_Reset:
                                    702 ;	I2C.c:62: SDA=HIGH;                 //SENDING 9 BITS OF 1 DURING EEPROM RESET PHASE
                                    703 ;	assignBit
      003129 D2 95            [12]  704 	setb	_P1_5
                                    705 ;	I2C.c:63: SCLK = HIGH;
                                    706 ;	assignBit
      00312B D2 96            [12]  707 	setb	_P1_6
                                    708 ;	I2C.c:64: Delay();
      00312D 12 30 90         [24]  709 	lcall	_Delay
                                    710 ;	I2C.c:65: SCLK = LOW;
                                    711 ;	assignBit
      003130 C2 96            [12]  712 	clr	_P1_6
                                    713 ;	I2C.c:66: SDA=LOW;
                                    714 ;	assignBit
      003132 C2 95            [12]  715 	clr	_P1_5
                                    716 ;	I2C.c:67: }
      003134 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'I2C_Read'
                                    720 ;------------------------------------------------------------
                                    721 ;i                         Allocated with name '_I2C_Read_i_65536_75'
                                    722 ;read                      Allocated with name '_I2C_Read_read_65536_75'
                                    723 ;------------------------------------------------------------
                                    724 ;	I2C.c:69: unsigned char I2C_Read(void)
                                    725 ;	-----------------------------------------
                                    726 ;	 function I2C_Read
                                    727 ;	-----------------------------------------
      003135                        728 _I2C_Read:
                                    729 ;	I2C.c:72: SDA= HIGH;
                                    730 ;	assignBit
      003135 D2 95            [12]  731 	setb	_P1_5
                                    732 ;	I2C.c:73: read = 0;                     //MAKE VARIABLE READ=0, THE VARIABLE WHICH IS GOING TO STORE THE OUTPUT FORM THE ADDRESS
      003137 90 00 01         [24]  733 	mov	dptr,#_I2C_Read_read_65536_75
      00313A E4               [12]  734 	clr	a
      00313B F0               [24]  735 	movx	@dptr,a
                                    736 ;	I2C.c:74: for(i=0; i<8; i++)         //PERFORMING BIT BY BIT READ OF THE DATA AT THE ADDRESS
      00313C 7F 00            [12]  737 	mov	r7,#0x00
      00313E                        738 00102$:
                                    739 ;	I2C.c:76: SCLK = HIGH;           //SETTING CLOCK HIGH
                                    740 ;	assignBit
      00313E D2 96            [12]  741 	setb	_P1_6
                                    742 ;	I2C.c:77: Delay();
      003140 C0 07            [24]  743 	push	ar7
      003142 12 30 90         [24]  744 	lcall	_Delay
                                    745 ;	I2C.c:78: Delay();                //MAKING CLOCK HIGH FOR A LONG TIME
      003145 12 30 90         [24]  746 	lcall	_Delay
                                    747 ;	I2C.c:79: Delay();
      003148 12 30 90         [24]  748 	lcall	_Delay
      00314B D0 07            [24]  749 	pop	ar7
                                    750 ;	I2C.c:80: read<<=1;                //SETTING UP VARIABLE READ
      00314D 90 00 01         [24]  751 	mov	dptr,#_I2C_Read_read_65536_75
      003150 E0               [24]  752 	movx	a,@dptr
      003151 25 E0            [12]  753 	add	a,acc
      003153 F0               [24]  754 	movx	@dptr,a
                                    755 ;	I2C.c:81: read |= SDA;             //LOADING THE VALUES PRESENT AT ADDRESS BIT BY BIT INTO VARIABLE
      003154 E0               [24]  756 	movx	a,@dptr
      003155 FE               [12]  757 	mov	r6,a
      003156 A2 95            [12]  758 	mov	c,_P1_5
      003158 E4               [12]  759 	clr	a
      003159 33               [12]  760 	rlc	a
      00315A 90 00 01         [24]  761 	mov	dptr,#_I2C_Read_read_65536_75
      00315D 4E               [12]  762 	orl	a,r6
      00315E F0               [24]  763 	movx	@dptr,a
                                    764 ;	I2C.c:82: SCLK = LOW;
                                    765 ;	assignBit
      00315F C2 96            [12]  766 	clr	_P1_6
                                    767 ;	I2C.c:74: for(i=0; i<8; i++)         //PERFORMING BIT BY BIT READ OF THE DATA AT THE ADDRESS
      003161 0F               [12]  768 	inc	r7
      003162 BF 08 00         [24]  769 	cjne	r7,#0x08,00115$
      003165                        770 00115$:
      003165 40 D7            [24]  771 	jc	00102$
                                    772 ;	I2C.c:84: return read;
      003167 90 00 01         [24]  773 	mov	dptr,#_I2C_Read_read_65536_75
      00316A E0               [24]  774 	movx	a,@dptr
                                    775 ;	I2C.c:85: }
      00316B F5 82            [12]  776 	mov	dpl,a
      00316D 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'I2C_Write'
                                    780 ;------------------------------------------------------------
                                    781 ;write                     Allocated with name '_I2C_Write_write_65536_78'
                                    782 ;i                         Allocated with name '_I2C_Write_i_65536_79'
                                    783 ;------------------------------------------------------------
                                    784 ;	I2C.c:88: void I2C_Write(unsigned int write)
                                    785 ;	-----------------------------------------
                                    786 ;	 function I2C_Write
                                    787 ;	-----------------------------------------
      00316E                        788 _I2C_Write:
      00316E AF 83            [24]  789 	mov	r7,dph
      003170 E5 82            [12]  790 	mov	a,dpl
      003172 90 00 02         [24]  791 	mov	dptr,#_I2C_Write_write_65536_78
      003175 F0               [24]  792 	movx	@dptr,a
      003176 EF               [12]  793 	mov	a,r7
      003177 A3               [24]  794 	inc	dptr
      003178 F0               [24]  795 	movx	@dptr,a
                                    796 ;	I2C.c:91: for(i=0; i<8; i++)
      003179 7E 00            [12]  797 	mov	r6,#0x00
      00317B 7F 00            [12]  798 	mov	r7,#0x00
      00317D                        799 00102$:
                                    800 ;	I2C.c:93: SDA = ((write & 0x80) ? 1 : 0);  //SETTING SDA LOW OR HIGH DEPENDING ON THE VALUE TO BE WRITTEN, WHETHER THE ADDRESS OR THE DATA VALUE
      00317D 90 00 02         [24]  801 	mov	dptr,#_I2C_Write_write_65536_78
      003180 E0               [24]  802 	movx	a,@dptr
      003181 FC               [12]  803 	mov	r4,a
      003182 A3               [24]  804 	inc	dptr
      003183 E0               [24]  805 	movx	a,@dptr
      003184 FD               [12]  806 	mov	r5,a
      003185 EC               [12]  807 	mov	a,r4
      003186 23               [12]  808 	rl	a
      003187 54 01            [12]  809 	anl	a,#0x01
      003189 24 FF            [12]  810 	add	a,#0xff
      00318B 92 95            [24]  811 	mov	_P1_5,c
                                    812 ;	I2C.c:94: SCLK = HIGH;                     //SETTING CLOCK PULSE BY MAKING IT HGIH AND LOW FOR WROTE OPEARTION IN THE SDA LINE
                                    813 ;	assignBit
      00318D D2 96            [12]  814 	setb	_P1_6
                                    815 ;	I2C.c:95: Delay();
      00318F C0 07            [24]  816 	push	ar7
      003191 C0 06            [24]  817 	push	ar6
      003193 C0 05            [24]  818 	push	ar5
      003195 C0 04            [24]  819 	push	ar4
      003197 12 30 90         [24]  820 	lcall	_Delay
      00319A D0 04            [24]  821 	pop	ar4
      00319C D0 05            [24]  822 	pop	ar5
      00319E D0 06            [24]  823 	pop	ar6
      0031A0 D0 07            [24]  824 	pop	ar7
                                    825 ;	I2C.c:96: SCLK = LOW;
                                    826 ;	assignBit
      0031A2 C2 96            [12]  827 	clr	_P1_6
                                    828 ;	I2C.c:97: write<<=1;                       //SHIFTING THE WRITE VARIABLKE BY 1 BIT AND AGAIN LOADING ITS VALUE INTO SDA TILL 1 BYTE IS LOADED
      0031A4 EC               [12]  829 	mov	a,r4
      0031A5 2C               [12]  830 	add	a,r4
      0031A6 FC               [12]  831 	mov	r4,a
      0031A7 ED               [12]  832 	mov	a,r5
      0031A8 33               [12]  833 	rlc	a
      0031A9 FD               [12]  834 	mov	r5,a
      0031AA 90 00 02         [24]  835 	mov	dptr,#_I2C_Write_write_65536_78
      0031AD EC               [12]  836 	mov	a,r4
      0031AE F0               [24]  837 	movx	@dptr,a
      0031AF ED               [12]  838 	mov	a,r5
      0031B0 A3               [24]  839 	inc	dptr
      0031B1 F0               [24]  840 	movx	@dptr,a
                                    841 ;	I2C.c:91: for(i=0; i<8; i++)
      0031B2 0E               [12]  842 	inc	r6
      0031B3 BE 00 01         [24]  843 	cjne	r6,#0x00,00115$
      0031B6 0F               [12]  844 	inc	r7
      0031B7                        845 00115$:
      0031B7 C3               [12]  846 	clr	c
      0031B8 EE               [12]  847 	mov	a,r6
      0031B9 94 08            [12]  848 	subb	a,#0x08
      0031BB EF               [12]  849 	mov	a,r7
      0031BC 64 80            [12]  850 	xrl	a,#0x80
      0031BE 94 80            [12]  851 	subb	a,#0x80
      0031C0 40 BB            [24]  852 	jc	00102$
                                    853 ;	I2C.c:99: SDA=HIGH;                           //SENDING A SDA HIGH SIGNAL TO WAIT TO RECEIVE ACK FROM RECEIVER WHICH MAKES THE SDA LINE LOW
                                    854 ;	assignBit
      0031C2 D2 95            [12]  855 	setb	_P1_5
                                    856 ;	I2C.c:100: SCLK = HIGH;
                                    857 ;	assignBit
      0031C4 D2 96            [12]  858 	setb	_P1_6
                                    859 ;	I2C.c:101: Delay();
      0031C6 12 30 90         [24]  860 	lcall	_Delay
                                    861 ;	I2C.c:102: SCLK = LOW;
                                    862 ;	assignBit
      0031C9 C2 96            [12]  863 	clr	_P1_6
                                    864 ;	I2C.c:103: }
      0031CB 22               [24]  865 	ret
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'EEPROM_WrByte'
                                    868 ;------------------------------------------------------------
                                    869 ;data_write                Allocated with name '_EEPROM_WrByte_PARM_2'
                                    870 ;word_address              Allocated with name '_EEPROM_WrByte_word_address_65536_82'
                                    871 ;------------------------------------------------------------
                                    872 ;	I2C.c:105: void EEPROM_WrByte(unsigned int word_address,unsigned int data_write)
                                    873 ;	-----------------------------------------
                                    874 ;	 function EEPROM_WrByte
                                    875 ;	-----------------------------------------
      0031CC                        876 _EEPROM_WrByte:
      0031CC AF 83            [24]  877 	mov	r7,dph
      0031CE E5 82            [12]  878 	mov	a,dpl
      0031D0 90 00 06         [24]  879 	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
      0031D3 F0               [24]  880 	movx	@dptr,a
      0031D4 EF               [12]  881 	mov	a,r7
      0031D5 A3               [24]  882 	inc	dptr
      0031D6 F0               [24]  883 	movx	@dptr,a
                                    884 ;	I2C.c:107: I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
      0031D7 12 31 0B         [24]  885 	lcall	_I2C_Start
                                    886 ;	I2C.c:108: I2C_Write(EEPROM_CMD|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
      0031DA 90 00 A1         [24]  887 	mov	dptr,#_EEPROM_CMD
      0031DD E0               [24]  888 	movx	a,@dptr
      0031DE FE               [12]  889 	mov	r6,a
      0031DF A3               [24]  890 	inc	dptr
      0031E0 E0               [24]  891 	movx	a,@dptr
      0031E1 FF               [12]  892 	mov	r7,a
      0031E2 8E 82            [24]  893 	mov	dpl,r6
      0031E4 8F 83            [24]  894 	mov	dph,r7
      0031E6 12 31 6E         [24]  895 	lcall	_I2C_Write
                                    896 ;	I2C.c:109: I2C_Write(word_address);         //FOLLOWED BY A WORD ADDRESS
      0031E9 90 00 06         [24]  897 	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
      0031EC E0               [24]  898 	movx	a,@dptr
      0031ED FE               [12]  899 	mov	r6,a
      0031EE A3               [24]  900 	inc	dptr
      0031EF E0               [24]  901 	movx	a,@dptr
      0031F0 FF               [12]  902 	mov	r7,a
      0031F1 8E 82            [24]  903 	mov	dpl,r6
      0031F3 8F 83            [24]  904 	mov	dph,r7
      0031F5 C0 07            [24]  905 	push	ar7
      0031F7 C0 06            [24]  906 	push	ar6
      0031F9 12 31 6E         [24]  907 	lcall	_I2C_Write
                                    908 ;	I2C.c:110: I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
      0031FC 90 00 04         [24]  909 	mov	dptr,#_EEPROM_WrByte_PARM_2
      0031FF E0               [24]  910 	movx	a,@dptr
      003200 FC               [12]  911 	mov	r4,a
      003201 A3               [24]  912 	inc	dptr
      003202 E0               [24]  913 	movx	a,@dptr
      003203 FD               [12]  914 	mov	r5,a
      003204 8C 82            [24]  915 	mov	dpl,r4
      003206 8D 83            [24]  916 	mov	dph,r5
      003208 12 31 6E         [24]  917 	lcall	_I2C_Write
                                    918 ;	I2C.c:111: I2C_Stop();                      //FOLLOWED BY A STOP
      00320B 12 31 1A         [24]  919 	lcall	_I2C_Stop
      00320E D0 06            [24]  920 	pop	ar6
      003210 D0 07            [24]  921 	pop	ar7
                                    922 ;	I2C.c:112: word_address++;                  //INCREMENTING THE WORD ADDRESS
      003212 90 00 06         [24]  923 	mov	dptr,#_EEPROM_WrByte_word_address_65536_82
      003215 74 01            [12]  924 	mov	a,#0x01
      003217 2E               [12]  925 	add	a,r6
      003218 F0               [24]  926 	movx	@dptr,a
      003219 E4               [12]  927 	clr	a
      00321A 3F               [12]  928 	addc	a,r7
      00321B A3               [24]  929 	inc	dptr
      00321C F0               [24]  930 	movx	@dptr,a
                                    931 ;	I2C.c:113: Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
      00321D 12 30 90         [24]  932 	lcall	_Delay
                                    933 ;	I2C.c:114: Delay();
                                    934 ;	I2C.c:115: return;
                                    935 ;	I2C.c:116: }
      003220 02 30 90         [24]  936 	ljmp	_Delay
                                    937 ;------------------------------------------------------------
                                    938 ;Allocation info for local variables in function 'PAGE_Write'
                                    939 ;------------------------------------------------------------
                                    940 ;data_write                Allocated with name '_PAGE_Write_PARM_2'
                                    941 ;word_address3             Allocated with name '_PAGE_Write_word_address3_65536_84'
                                    942 ;i                         Allocated with name '_PAGE_Write_i_65537_86'
                                    943 ;------------------------------------------------------------
                                    944 ;	I2C.c:118: void PAGE_Write(unsigned int word_address3,unsigned int data_write)
                                    945 ;	-----------------------------------------
                                    946 ;	 function PAGE_Write
                                    947 ;	-----------------------------------------
      003223                        948 _PAGE_Write:
      003223 AF 83            [24]  949 	mov	r7,dph
      003225 E5 82            [12]  950 	mov	a,dpl
      003227 90 00 0A         [24]  951 	mov	dptr,#_PAGE_Write_word_address3_65536_84
      00322A F0               [24]  952 	movx	@dptr,a
      00322B EF               [12]  953 	mov	a,r7
      00322C A3               [24]  954 	inc	dptr
      00322D F0               [24]  955 	movx	@dptr,a
                                    956 ;	I2C.c:120: I2C_Start();                     //PEFORMING SDA BYTE WRITE OPEARTION WHICH INVOLVES
      00322E 12 31 0B         [24]  957 	lcall	_I2C_Start
                                    958 ;	I2C.c:121: I2C_Write(EEPROM_CMD_PAGE|0x0);       //SENDING A START BIT FOLLOWED BY A WRITE COMMAND
      003231 90 00 A3         [24]  959 	mov	dptr,#_EEPROM_CMD_PAGE
      003234 E0               [24]  960 	movx	a,@dptr
      003235 FE               [12]  961 	mov	r6,a
      003236 A3               [24]  962 	inc	dptr
      003237 E0               [24]  963 	movx	a,@dptr
      003238 FF               [12]  964 	mov	r7,a
      003239 8E 82            [24]  965 	mov	dpl,r6
      00323B 8F 83            [24]  966 	mov	dph,r7
      00323D 12 31 6E         [24]  967 	lcall	_I2C_Write
                                    968 ;	I2C.c:122: I2C_Write(word_address3);         //FOLLOWED BY A WORD ADDRESS
      003240 90 00 0A         [24]  969 	mov	dptr,#_PAGE_Write_word_address3_65536_84
      003243 E0               [24]  970 	movx	a,@dptr
      003244 FE               [12]  971 	mov	r6,a
      003245 A3               [24]  972 	inc	dptr
      003246 E0               [24]  973 	movx	a,@dptr
      003247 FF               [12]  974 	mov	r7,a
      003248 8E 82            [24]  975 	mov	dpl,r6
      00324A 8F 83            [24]  976 	mov	dph,r7
      00324C 12 31 6E         [24]  977 	lcall	_I2C_Write
                                    978 ;	I2C.c:125: for(i=0;i<=16;i++)
      00324F 90 00 08         [24]  979 	mov	dptr,#_PAGE_Write_PARM_2
      003252 E0               [24]  980 	movx	a,@dptr
      003253 FE               [12]  981 	mov	r6,a
      003254 A3               [24]  982 	inc	dptr
      003255 E0               [24]  983 	movx	a,@dptr
      003256 FF               [12]  984 	mov	r7,a
      003257 7C 00            [12]  985 	mov	r4,#0x00
      003259 7D 00            [12]  986 	mov	r5,#0x00
      00325B                        987 00102$:
                                    988 ;	I2C.c:127: I2C_Write(data_write);           //FOLLOWED BY SENDING DATA VALUE
      00325B 8E 82            [24]  989 	mov	dpl,r6
      00325D 8F 83            [24]  990 	mov	dph,r7
      00325F C0 07            [24]  991 	push	ar7
      003261 C0 06            [24]  992 	push	ar6
      003263 C0 05            [24]  993 	push	ar5
      003265 C0 04            [24]  994 	push	ar4
      003267 12 31 6E         [24]  995 	lcall	_I2C_Write
                                    996 ;	I2C.c:128: Long_Delay();
      00326A 12 30 96         [24]  997 	lcall	_Long_Delay
      00326D D0 04            [24]  998 	pop	ar4
      00326F D0 05            [24]  999 	pop	ar5
      003271 D0 06            [24] 1000 	pop	ar6
      003273 D0 07            [24] 1001 	pop	ar7
                                   1002 ;	I2C.c:125: for(i=0;i<=16;i++)
      003275 0C               [12] 1003 	inc	r4
      003276 BC 00 01         [24] 1004 	cjne	r4,#0x00,00115$
      003279 0D               [12] 1005 	inc	r5
      00327A                       1006 00115$:
      00327A C3               [12] 1007 	clr	c
      00327B 74 10            [12] 1008 	mov	a,#0x10
      00327D 9C               [12] 1009 	subb	a,r4
      00327E 74 80            [12] 1010 	mov	a,#(0x00 ^ 0x80)
      003280 8D F0            [24] 1011 	mov	b,r5
      003282 63 F0 80         [24] 1012 	xrl	b,#0x80
      003285 95 F0            [12] 1013 	subb	a,b
      003287 50 D2            [24] 1014 	jnc	00102$
                                   1015 ;	I2C.c:130: I2C_Stop();                      //FOLLOWED BY A STOP
      003289 12 31 1A         [24] 1016 	lcall	_I2C_Stop
                                   1017 ;	I2C.c:131: word_address++;                  //INCREMENTING THE WORD ADDRESS
      00328C 90 00 A5         [24] 1018 	mov	dptr,#_word_address
      00328F E0               [24] 1019 	movx	a,@dptr
      003290 24 01            [12] 1020 	add	a,#0x01
      003292 F0               [24] 1021 	movx	@dptr,a
      003293 A3               [24] 1022 	inc	dptr
      003294 E0               [24] 1023 	movx	a,@dptr
      003295 34 00            [12] 1024 	addc	a,#0x00
      003297 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	I2C.c:132: Delay();                        //PERFORMING A DELAY TO GET RID OF INTERNAL WRITE CONDITION WHICH COULD STOP FORM GETTING ACK ON THE NEXT WRITE PULSE
      003298 12 30 90         [24] 1027 	lcall	_Delay
                                   1028 ;	I2C.c:133: Delay();
                                   1029 ;	I2C.c:134: return;
                                   1030 ;	I2C.c:135: }
      00329B 02 30 90         [24] 1031 	ljmp	_Delay
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'ack_eeprom'
                                   1034 ;------------------------------------------------------------
                                   1035 ;	I2C.c:137: void ack_eeprom()
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function ack_eeprom
                                   1038 ;	-----------------------------------------
      00329E                       1039 _ack_eeprom:
                                   1040 ;	I2C.c:139: SDA = HIGH;                    //SENDING SDA HIGH SIGNAL WITH THE CLOCK PULSE TO GET AN ACK FORM THE EEPROM
                                   1041 ;	assignBit
      00329E D2 95            [12] 1042 	setb	_P1_5
                                   1043 ;	I2C.c:140: SCLK = HIGH;
                                   1044 ;	assignBit
      0032A0 D2 96            [12] 1045 	setb	_P1_6
                                   1046 ;	I2C.c:141: Delay();
      0032A2 12 30 90         [24] 1047 	lcall	_Delay
                                   1048 ;	I2C.c:142: SCLK = LOW;
                                   1049 ;	assignBit
      0032A5 C2 96            [12] 1050 	clr	_P1_6
                                   1051 ;	I2C.c:143: }
      0032A7 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'EEPROM_RdByte'
                                   1055 ;------------------------------------------------------------
                                   1056 ;word_address1             Allocated with name '_EEPROM_RdByte_word_address1_65536_90'
                                   1057 ;x                         Allocated with name '_EEPROM_RdByte_x_65536_91'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	I2C.c:145: unsigned char EEPROM_RdByte(unsigned int word_address1)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function EEPROM_RdByte
                                   1062 ;	-----------------------------------------
      0032A8                       1063 _EEPROM_RdByte:
      0032A8 AF 83            [24] 1064 	mov	r7,dph
      0032AA E5 82            [12] 1065 	mov	a,dpl
      0032AC 90 00 0C         [24] 1066 	mov	dptr,#_EEPROM_RdByte_word_address1_65536_90
      0032AF F0               [24] 1067 	movx	@dptr,a
      0032B0 EF               [12] 1068 	mov	a,r7
      0032B1 A3               [24] 1069 	inc	dptr
      0032B2 F0               [24] 1070 	movx	@dptr,a
                                   1071 ;	I2C.c:148: SDA=HIGH;
                                   1072 ;	assignBit
      0032B3 D2 95            [12] 1073 	setb	_P1_5
                                   1074 ;	I2C.c:149: I2C_Start();                        //START GIGNAL
      0032B5 12 31 0B         [24] 1075 	lcall	_I2C_Start
                                   1076 ;	I2C.c:150: I2C_Write(EEPROM_CMD|0x0);          //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
      0032B8 90 00 A1         [24] 1077 	mov	dptr,#_EEPROM_CMD
      0032BB E0               [24] 1078 	movx	a,@dptr
      0032BC FE               [12] 1079 	mov	r6,a
      0032BD A3               [24] 1080 	inc	dptr
      0032BE E0               [24] 1081 	movx	a,@dptr
      0032BF FF               [12] 1082 	mov	r7,a
      0032C0 8E 82            [24] 1083 	mov	dpl,r6
      0032C2 8F 83            [24] 1084 	mov	dph,r7
      0032C4 12 31 6E         [24] 1085 	lcall	_I2C_Write
                                   1086 ;	I2C.c:151: I2C_Write(word_address1);           //FOLLOWED BY A WORD ADDRESS
      0032C7 90 00 0C         [24] 1087 	mov	dptr,#_EEPROM_RdByte_word_address1_65536_90
      0032CA E0               [24] 1088 	movx	a,@dptr
      0032CB FE               [12] 1089 	mov	r6,a
      0032CC A3               [24] 1090 	inc	dptr
      0032CD E0               [24] 1091 	movx	a,@dptr
      0032CE FF               [12] 1092 	mov	r7,a
      0032CF 8E 82            [24] 1093 	mov	dpl,r6
      0032D1 8F 83            [24] 1094 	mov	dph,r7
      0032D3 12 31 6E         [24] 1095 	lcall	_I2C_Write
                                   1096 ;	I2C.c:152: Delay();
      0032D6 12 30 90         [24] 1097 	lcall	_Delay
                                   1098 ;	I2C.c:153: I2C_Start();                        //FOLLOWED BY A REPEATED START
      0032D9 12 31 0B         [24] 1099 	lcall	_I2C_Start
                                   1100 ;	I2C.c:154: I2C_Write(EEPROM_CMD|0x1);          //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
      0032DC 90 00 A1         [24] 1101 	mov	dptr,#_EEPROM_CMD
      0032DF E0               [24] 1102 	movx	a,@dptr
      0032E0 FE               [12] 1103 	mov	r6,a
      0032E1 A3               [24] 1104 	inc	dptr
      0032E2 E0               [24] 1105 	movx	a,@dptr
      0032E3 FF               [12] 1106 	mov	r7,a
      0032E4 43 06 01         [24] 1107 	orl	ar6,#0x01
      0032E7 8E 82            [24] 1108 	mov	dpl,r6
      0032E9 8F 83            [24] 1109 	mov	dph,r7
      0032EB 12 31 6E         [24] 1110 	lcall	_I2C_Write
                                   1111 ;	I2C.c:155: Delay();
      0032EE 12 30 90         [24] 1112 	lcall	_Delay
                                   1113 ;	I2C.c:156: Delay();                            //DELAY BETWEEN OPEARTIONS
      0032F1 12 30 90         [24] 1114 	lcall	_Delay
                                   1115 ;	I2C.c:157: Delay();
      0032F4 12 30 90         [24] 1116 	lcall	_Delay
                                   1117 ;	I2C.c:158: Delay();
      0032F7 12 30 90         [24] 1118 	lcall	_Delay
                                   1119 ;	I2C.c:159: x = I2C_Read();                     //FOLLOWED BY A READING THE VALUE IN A VARIABLE X
      0032FA 12 31 35         [24] 1120 	lcall	_I2C_Read
      0032FD AF 82            [24] 1121 	mov	r7,dpl
                                   1122 ;	I2C.c:160: SDA = HIGH;                         //FOLLOWED BY SENDING A NACK FROM MASTER
                                   1123 ;	assignBit
      0032FF D2 95            [12] 1124 	setb	_P1_5
                                   1125 ;	I2C.c:161: SCLK = HIGH;
                                   1126 ;	assignBit
      003301 D2 96            [12] 1127 	setb	_P1_6
                                   1128 ;	I2C.c:162: Delay();
      003303 C0 07            [24] 1129 	push	ar7
      003305 12 30 90         [24] 1130 	lcall	_Delay
                                   1131 ;	I2C.c:163: SCLK = LOW;
                                   1132 ;	assignBit
      003308 C2 96            [12] 1133 	clr	_P1_6
                                   1134 ;	I2C.c:164: I2C_Stop();                         //FOLLOWED BY SENDING A STOP SIGNAL
      00330A 12 31 1A         [24] 1135 	lcall	_I2C_Stop
      00330D D0 07            [24] 1136 	pop	ar7
                                   1137 ;	I2C.c:165: return(x);
      00330F 8F 82            [24] 1138 	mov	dpl,r7
                                   1139 ;	I2C.c:166: }
      003311 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'Sequence_read'
                                   1143 ;------------------------------------------------------------
                                   1144 ;hex_end_address           Allocated with name '_Sequence_read_PARM_2'
                                   1145 ;hex_start_address         Allocated with name '_Sequence_read_hex_start_address_65536_92'
                                   1146 ;internal_address1         Allocated with name '_Sequence_read_internal_address1_65536_93'
                                   1147 ;page_selection_bits1      Allocated with name '_Sequence_read_page_selection_bits1_65536_93'
                                   1148 ;j                         Allocated with name '_Sequence_read_j_65537_94'
                                   1149 ;i                         Allocated with name '_Sequence_read_i_65538_95'
                                   1150 ;difference                Allocated with name '_Sequence_read_difference_65538_95'
                                   1151 ;sequence                  Allocated with name '_Sequence_read_sequence_196611_99'
                                   1152 ;------------------------------------------------------------
                                   1153 ;	I2C.c:168: void Sequence_read(unsigned int hex_start_address,unsigned int hex_end_address)
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function Sequence_read
                                   1156 ;	-----------------------------------------
      003312                       1157 _Sequence_read:
      003312 AF 83            [24] 1158 	mov	r7,dph
      003314 E5 82            [12] 1159 	mov	a,dpl
      003316 90 00 10         [24] 1160 	mov	dptr,#_Sequence_read_hex_start_address_65536_92
      003319 F0               [24] 1161 	movx	@dptr,a
      00331A EF               [12] 1162 	mov	a,r7
      00331B A3               [24] 1163 	inc	dptr
      00331C F0               [24] 1164 	movx	@dptr,a
                                   1165 ;	I2C.c:170: int internal_address1=hex_start_address;           //TAKING HEX START ADDRESS IN A VARIABLE
      00331D 90 00 10         [24] 1166 	mov	dptr,#_Sequence_read_hex_start_address_65536_92
      003320 E0               [24] 1167 	movx	a,@dptr
      003321 FE               [12] 1168 	mov	r6,a
      003322 A3               [24] 1169 	inc	dptr
      003323 E0               [24] 1170 	movx	a,@dptr
      003324 FF               [12] 1171 	mov	r7,a
                                   1172 ;	I2C.c:171: int page_selection_bits1=hex_start_address&0x700;  //REMOVING THE BITS DECIDING PAGE BLOCK SELECTION
      003325 7C 00            [12] 1173 	mov	r4,#0x00
      003327 74 07            [12] 1174 	mov	a,#0x07
      003329 5F               [12] 1175 	anl	a,r7
                                   1176 ;	I2C.c:172: page_block1=page_selection_bits1>>7;
      00332A A2 E7            [12] 1177 	mov	c,acc.7
      00332C CC               [12] 1178 	xch	a,r4
      00332D 33               [12] 1179 	rlc	a
      00332E CC               [12] 1180 	xch	a,r4
      00332F 33               [12] 1181 	rlc	a
      003330 CC               [12] 1182 	xch	a,r4
      003331 54 01            [12] 1183 	anl	a,#0x01
      003333 30 E0 02         [24] 1184 	jnb	acc.0,00122$
      003336 44 FE            [12] 1185 	orl	a,#0xfe
      003338                       1186 00122$:
      003338 FD               [12] 1187 	mov	r5,a
      003339 90 00 AD         [24] 1188 	mov	dptr,#_page_block1
      00333C EC               [12] 1189 	mov	a,r4
      00333D F0               [24] 1190 	movx	@dptr,a
      00333E ED               [12] 1191 	mov	a,r5
      00333F A3               [24] 1192 	inc	dptr
      003340 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	I2C.c:173: EEPROM_CMD=0xA0|page_block1;                       //MAKING THE READ, WRITE COMMAND BY PERFORMING OR OPERATIOIN WITH THE PAGE SELECTION BITS
      003341 90 00 A1         [24] 1195 	mov	dptr,#_EEPROM_CMD
      003344 74 A0            [12] 1196 	mov	a,#0xa0
      003346 4C               [12] 1197 	orl	a,r4
      003347 F0               [24] 1198 	movx	@dptr,a
      003348 ED               [12] 1199 	mov	a,r5
      003349 A3               [24] 1200 	inc	dptr
      00334A F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	I2C.c:174: word_address2=internal_address1&0x0FF;             //REMOVING THE WORD ADDRESS FROM THE INTERNAL ADDRESS SO THAT WE CAN READ FORM THE REQURIED WORD ADDRESS
      00334B 90 00 A9         [24] 1203 	mov	dptr,#_word_address2
      00334E EE               [12] 1204 	mov	a,r6
      00334F F0               [24] 1205 	movx	@dptr,a
      003350 E4               [12] 1206 	clr	a
      003351 A3               [24] 1207 	inc	dptr
      003352 F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	I2C.c:176: I2C_Start();                                      //START GIGNAL
      003353 C0 07            [24] 1210 	push	ar7
      003355 C0 06            [24] 1211 	push	ar6
      003357 12 31 0B         [24] 1212 	lcall	_I2C_Start
                                   1213 ;	I2C.c:177: I2C_Write(EEPROM_CMD|0x0);                        //FOLLOWED BY A WRITE OPERATION COMMAND FROM WHERE DATA WILL BE READ
      00335A 90 00 A1         [24] 1214 	mov	dptr,#_EEPROM_CMD
      00335D E0               [24] 1215 	movx	a,@dptr
      00335E FC               [12] 1216 	mov	r4,a
      00335F A3               [24] 1217 	inc	dptr
      003360 E0               [24] 1218 	movx	a,@dptr
      003361 FD               [12] 1219 	mov	r5,a
      003362 8C 82            [24] 1220 	mov	dpl,r4
      003364 8D 83            [24] 1221 	mov	dph,r5
      003366 12 31 6E         [24] 1222 	lcall	_I2C_Write
                                   1223 ;	I2C.c:178: I2C_Write(word_address2);                         //FOLLOWED BY A WORD ADDRESS
      003369 90 00 A9         [24] 1224 	mov	dptr,#_word_address2
      00336C E0               [24] 1225 	movx	a,@dptr
      00336D FC               [12] 1226 	mov	r4,a
      00336E A3               [24] 1227 	inc	dptr
      00336F E0               [24] 1228 	movx	a,@dptr
      003370 FD               [12] 1229 	mov	r5,a
      003371 8C 82            [24] 1230 	mov	dpl,r4
      003373 8D 83            [24] 1231 	mov	dph,r5
      003375 12 31 6E         [24] 1232 	lcall	_I2C_Write
                                   1233 ;	I2C.c:179: Delay();
      003378 12 30 90         [24] 1234 	lcall	_Delay
                                   1235 ;	I2C.c:180: I2C_Start();                                      //FOLLOWED BY A REPEATED START
      00337B 12 31 0B         [24] 1236 	lcall	_I2C_Start
                                   1237 ;	I2C.c:181: Delay();
      00337E 12 30 90         [24] 1238 	lcall	_Delay
                                   1239 ;	I2C.c:182: I2C_Write(EEPROM_CMD|0x1);                        //FOLLOWED BY READ COMMAND AT END OF SLAVE ADDRESS
      003381 90 00 A1         [24] 1240 	mov	dptr,#_EEPROM_CMD
      003384 E0               [24] 1241 	movx	a,@dptr
      003385 FC               [12] 1242 	mov	r4,a
      003386 A3               [24] 1243 	inc	dptr
      003387 E0               [24] 1244 	movx	a,@dptr
      003388 FD               [12] 1245 	mov	r5,a
      003389 43 04 01         [24] 1246 	orl	ar4,#0x01
      00338C 8C 82            [24] 1247 	mov	dpl,r4
      00338E 8D 83            [24] 1248 	mov	dph,r5
      003390 12 31 6E         [24] 1249 	lcall	_I2C_Write
                                   1250 ;	I2C.c:183: Delay();
      003393 12 30 90         [24] 1251 	lcall	_Delay
                                   1252 ;	I2C.c:184: Delay();                                          //DELAY BETWEEN OPEARTIONS
      003396 12 30 90         [24] 1253 	lcall	_Delay
                                   1254 ;	I2C.c:185: Delay();
      003399 12 30 90         [24] 1255 	lcall	_Delay
                                   1256 ;	I2C.c:186: Delay();
      00339C 12 30 90         [24] 1257 	lcall	_Delay
      00339F D0 06            [24] 1258 	pop	ar6
      0033A1 D0 07            [24] 1259 	pop	ar7
                                   1260 ;	I2C.c:190: int difference=hex_end_address-hex_start_address;  //STORING THE DIFFERENCE OF END AND START ADDRESS IN VARFIABLE DIFFERENCE
      0033A3 90 00 0E         [24] 1261 	mov	dptr,#_Sequence_read_PARM_2
      0033A6 E0               [24] 1262 	movx	a,@dptr
      0033A7 FC               [12] 1263 	mov	r4,a
      0033A8 A3               [24] 1264 	inc	dptr
      0033A9 E0               [24] 1265 	movx	a,@dptr
      0033AA FD               [12] 1266 	mov	r5,a
      0033AB EC               [12] 1267 	mov	a,r4
      0033AC C3               [12] 1268 	clr	c
      0033AD 9E               [12] 1269 	subb	a,r6
      0033AE FC               [12] 1270 	mov	r4,a
      0033AF ED               [12] 1271 	mov	a,r5
      0033B0 9F               [12] 1272 	subb	a,r7
      0033B1 FD               [12] 1273 	mov	r5,a
                                   1274 ;	I2C.c:191: for(i=0; i<=difference; i++)
      0033B2 7A 00            [12] 1275 	mov	r2,#0x00
      0033B4 7B 00            [12] 1276 	mov	r3,#0x00
      0033B6                       1277 00105$:
      0033B6 C3               [12] 1278 	clr	c
      0033B7 EC               [12] 1279 	mov	a,r4
      0033B8 9A               [12] 1280 	subb	a,r2
      0033B9 ED               [12] 1281 	mov	a,r5
      0033BA 64 80            [12] 1282 	xrl	a,#0x80
      0033BC 8B F0            [24] 1283 	mov	b,r3
      0033BE 63 F0 80         [24] 1284 	xrl	b,#0x80
      0033C1 95 F0            [12] 1285 	subb	a,b
      0033C3 50 03            [24] 1286 	jnc	00123$
      0033C5 02 34 9F         [24] 1287 	ljmp	00103$
      0033C8                       1288 00123$:
                                   1289 ;	I2C.c:194: if(i%16==0)                                   //IF DATA VALUE PRINTED 16 TIMES GOTO THE NEXT LINE
      0033C8 90 00 51         [24] 1290 	mov	dptr,#__modsint_PARM_2
      0033CB 74 10            [12] 1291 	mov	a,#0x10
      0033CD F0               [24] 1292 	movx	@dptr,a
      0033CE E4               [12] 1293 	clr	a
      0033CF A3               [24] 1294 	inc	dptr
      0033D0 F0               [24] 1295 	movx	@dptr,a
      0033D1 8A 82            [24] 1296 	mov	dpl,r2
      0033D3 8B 83            [24] 1297 	mov	dph,r3
      0033D5 C0 07            [24] 1298 	push	ar7
      0033D7 C0 06            [24] 1299 	push	ar6
      0033D9 C0 05            [24] 1300 	push	ar5
      0033DB C0 04            [24] 1301 	push	ar4
      0033DD C0 03            [24] 1302 	push	ar3
      0033DF C0 02            [24] 1303 	push	ar2
      0033E1 12 4C 7E         [24] 1304 	lcall	__modsint
      0033E4 E5 82            [12] 1305 	mov	a,dpl
      0033E6 85 83 F0         [24] 1306 	mov	b,dph
      0033E9 D0 02            [24] 1307 	pop	ar2
      0033EB D0 03            [24] 1308 	pop	ar3
      0033ED D0 04            [24] 1309 	pop	ar4
      0033EF D0 05            [24] 1310 	pop	ar5
      0033F1 D0 06            [24] 1311 	pop	ar6
      0033F3 D0 07            [24] 1312 	pop	ar7
      0033F5 45 F0            [12] 1313 	orl	a,b
      0033F7 70 58            [24] 1314 	jnz	00102$
                                   1315 ;	I2C.c:196: printf_tiny("\n\r");
      0033F9 C0 07            [24] 1316 	push	ar7
      0033FB C0 06            [24] 1317 	push	ar6
      0033FD C0 05            [24] 1318 	push	ar5
      0033FF C0 04            [24] 1319 	push	ar4
      003401 C0 03            [24] 1320 	push	ar3
      003403 C0 02            [24] 1321 	push	ar2
      003405 74 64            [12] 1322 	mov	a,#___str_0
      003407 C0 E0            [24] 1323 	push	acc
      003409 74 59            [12] 1324 	mov	a,#(___str_0 >> 8)
      00340B C0 E0            [24] 1325 	push	acc
      00340D 12 47 2C         [24] 1326 	lcall	_printf_tiny
      003410 15 81            [12] 1327 	dec	sp
      003412 15 81            [12] 1328 	dec	sp
      003414 D0 02            [24] 1329 	pop	ar2
      003416 D0 03            [24] 1330 	pop	ar3
      003418 D0 04            [24] 1331 	pop	ar4
      00341A D0 05            [24] 1332 	pop	ar5
      00341C D0 06            [24] 1333 	pop	ar6
      00341E D0 07            [24] 1334 	pop	ar7
                                   1335 ;	I2C.c:197: printf("%x   : ",internal_address1);     //PRINT THE ADDRESS VALUE
      003420 C0 07            [24] 1336 	push	ar7
      003422 C0 06            [24] 1337 	push	ar6
      003424 C0 05            [24] 1338 	push	ar5
      003426 C0 04            [24] 1339 	push	ar4
      003428 C0 03            [24] 1340 	push	ar3
      00342A C0 02            [24] 1341 	push	ar2
      00342C C0 06            [24] 1342 	push	ar6
      00342E C0 07            [24] 1343 	push	ar7
      003430 74 67            [12] 1344 	mov	a,#___str_1
      003432 C0 E0            [24] 1345 	push	acc
      003434 74 59            [12] 1346 	mov	a,#(___str_1 >> 8)
      003436 C0 E0            [24] 1347 	push	acc
      003438 74 80            [12] 1348 	mov	a,#0x80
      00343A C0 E0            [24] 1349 	push	acc
      00343C 12 4E 96         [24] 1350 	lcall	_printf
      00343F E5 81            [12] 1351 	mov	a,sp
      003441 24 FB            [12] 1352 	add	a,#0xfb
      003443 F5 81            [12] 1353 	mov	sp,a
      003445 D0 02            [24] 1354 	pop	ar2
      003447 D0 03            [24] 1355 	pop	ar3
      003449 D0 04            [24] 1356 	pop	ar4
      00344B D0 05            [24] 1357 	pop	ar5
      00344D D0 06            [24] 1358 	pop	ar6
      00344F D0 07            [24] 1359 	pop	ar7
      003451                       1360 00102$:
                                   1361 ;	I2C.c:199: internal_address1++;                        //INCREMENTING THE ADDRESS COUNTER
      003451 0E               [12] 1362 	inc	r6
      003452 BE 00 01         [24] 1363 	cjne	r6,#0x00,00125$
      003455 0F               [12] 1364 	inc	r7
      003456                       1365 00125$:
                                   1366 ;	I2C.c:200: int sequence = I2C_Read();                  //READING FROM THE DESIRED LOCATIONS
      003456 C0 07            [24] 1367 	push	ar7
      003458 C0 06            [24] 1368 	push	ar6
      00345A C0 05            [24] 1369 	push	ar5
      00345C C0 04            [24] 1370 	push	ar4
      00345E C0 03            [24] 1371 	push	ar3
      003460 C0 02            [24] 1372 	push	ar2
      003462 12 31 35         [24] 1373 	lcall	_I2C_Read
      003465 A8 82            [24] 1374 	mov	r0,dpl
      003467 79 00            [12] 1375 	mov	r1,#0x00
                                   1376 ;	I2C.c:201: printf("%x ",sequence);
      003469 C0 00            [24] 1377 	push	ar0
      00346B C0 01            [24] 1378 	push	ar1
      00346D 74 6F            [12] 1379 	mov	a,#___str_2
      00346F C0 E0            [24] 1380 	push	acc
      003471 74 59            [12] 1381 	mov	a,#(___str_2 >> 8)
      003473 C0 E0            [24] 1382 	push	acc
      003475 74 80            [12] 1383 	mov	a,#0x80
      003477 C0 E0            [24] 1384 	push	acc
      003479 12 4E 96         [24] 1385 	lcall	_printf
      00347C E5 81            [12] 1386 	mov	a,sp
      00347E 24 FB            [12] 1387 	add	a,#0xfb
      003480 F5 81            [12] 1388 	mov	sp,a
                                   1389 ;	I2C.c:202: SDA = LOW;
                                   1390 ;	assignBit
      003482 C2 95            [12] 1391 	clr	_P1_5
                                   1392 ;	I2C.c:203: SCLK = HIGH;                                //PERORMING FOR EACH DATA BYTE READ
                                   1393 ;	assignBit
      003484 D2 96            [12] 1394 	setb	_P1_6
                                   1395 ;	I2C.c:204: Delay();
      003486 12 30 90         [24] 1396 	lcall	_Delay
      003489 D0 02            [24] 1397 	pop	ar2
      00348B D0 03            [24] 1398 	pop	ar3
      00348D D0 04            [24] 1399 	pop	ar4
      00348F D0 05            [24] 1400 	pop	ar5
      003491 D0 06            [24] 1401 	pop	ar6
      003493 D0 07            [24] 1402 	pop	ar7
                                   1403 ;	I2C.c:205: SCLK = LOW;
                                   1404 ;	assignBit
      003495 C2 96            [12] 1405 	clr	_P1_6
                                   1406 ;	I2C.c:191: for(i=0; i<=difference; i++)
      003497 0A               [12] 1407 	inc	r2
      003498 BA 00 01         [24] 1408 	cjne	r2,#0x00,00126$
      00349B 0B               [12] 1409 	inc	r3
      00349C                       1410 00126$:
      00349C 02 33 B6         [24] 1411 	ljmp	00105$
      00349F                       1412 00103$:
                                   1413 ;	I2C.c:208: SDA = LOW;                                     //MAKING SDA LOW TO GET A NACK FROM THE EEPROM
                                   1414 ;	assignBit
      00349F C2 95            [12] 1415 	clr	_P1_5
                                   1416 ;	I2C.c:209: SCLK = HIGH;
                                   1417 ;	assignBit
      0034A1 D2 96            [12] 1418 	setb	_P1_6
                                   1419 ;	I2C.c:210: Delay();
      0034A3 12 30 90         [24] 1420 	lcall	_Delay
                                   1421 ;	I2C.c:211: SCLK = LOW;
                                   1422 ;	assignBit
      0034A6 C2 96            [12] 1423 	clr	_P1_6
                                   1424 ;	I2C.c:212: I2C_Stop();
      0034A8 12 31 1A         [24] 1425 	lcall	_I2C_Stop
                                   1426 ;	I2C.c:213: SDA=HIGH;
                                   1427 ;	assignBit
      0034AB D2 95            [12] 1428 	setb	_P1_5
                                   1429 ;	I2C.c:214: Delay();
                                   1430 ;	I2C.c:216: }
      0034AD 02 30 90         [24] 1431 	ljmp	_Delay
                                   1432 ;------------------------------------------------------------
                                   1433 ;Allocation info for local variables in function 'reset'
                                   1434 ;------------------------------------------------------------
                                   1435 ;i                         Allocated with name '_reset_i_65536_100'
                                   1436 ;------------------------------------------------------------
                                   1437 ;	I2C.c:218: void reset()
                                   1438 ;	-----------------------------------------
                                   1439 ;	 function reset
                                   1440 ;	-----------------------------------------
      0034B0                       1441 _reset:
                                   1442 ;	I2C.c:221: I2C_Start();               //EEPROM RESET OPERATION WHICH CONSISTS OF THE FOLLOWING COMMANDS
      0034B0 12 31 0B         [24] 1443 	lcall	_I2C_Start
                                   1444 ;	I2C.c:222: for(i=0; i<=9; i++)        //START SIGNAL
      0034B3 7E 0A            [12] 1445 	mov	r6,#0x0a
      0034B5 7F 00            [12] 1446 	mov	r7,#0x00
      0034B7                       1447 00104$:
                                   1448 ;	I2C.c:224: I2C_Reset();
      0034B7 C0 07            [24] 1449 	push	ar7
      0034B9 C0 06            [24] 1450 	push	ar6
      0034BB 12 31 29         [24] 1451 	lcall	_I2C_Reset
      0034BE D0 06            [24] 1452 	pop	ar6
      0034C0 D0 07            [24] 1453 	pop	ar7
      0034C2 1E               [12] 1454 	dec	r6
      0034C3 BE FF 01         [24] 1455 	cjne	r6,#0xff,00116$
      0034C6 1F               [12] 1456 	dec	r7
      0034C7                       1457 00116$:
                                   1458 ;	I2C.c:222: for(i=0; i<=9; i++)        //START SIGNAL
      0034C7 EE               [12] 1459 	mov	a,r6
      0034C8 4F               [12] 1460 	orl	a,r7
      0034C9 70 EC            [24] 1461 	jnz	00104$
                                   1462 ;	I2C.c:226: I2C_Start();              //FOLLLOWED BY START BIT
      0034CB 12 31 0B         [24] 1463 	lcall	_I2C_Start
                                   1464 ;	I2C.c:227: I2C_Stop();               //FOLLOWED BY STOP BIT
                                   1465 ;	I2C.c:228: }
      0034CE 02 31 1A         [24] 1466 	ljmp	_I2C_Stop
                                   1467 	.area CSEG    (CODE)
                                   1468 	.area CONST   (CODE)
                                   1469 	.area CONST   (CODE)
      005964                       1470 ___str_0:
      005964 0A                    1471 	.db 0x0a
      005965 0D                    1472 	.db 0x0d
      005966 00                    1473 	.db 0x00
                                   1474 	.area CSEG    (CODE)
                                   1475 	.area CONST   (CODE)
      005967                       1476 ___str_1:
      005967 25 78 20 20 20 3A 20  1477 	.ascii "%x   : "
      00596E 00                    1478 	.db 0x00
                                   1479 	.area CSEG    (CODE)
                                   1480 	.area CONST   (CODE)
      00596F                       1481 ___str_2:
      00596F 25 78 20              1482 	.ascii "%x "
      005972 00                    1483 	.db 0x00
                                   1484 	.area CSEG    (CODE)
                                   1485 	.area XINIT   (CODE)
                                   1486 	.area CABS    (ABS,CODE)
