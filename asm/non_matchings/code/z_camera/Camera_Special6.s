.late_rodata
glabel D_8013A3C4
    .float 0.2

glabel D_8013A3C8
    .float 0.01

glabel D_8013A3CC
    .float 0.2

.text
glabel Camera_Special6
/* ACE10C 80056F6C 27BDFF40 */  addiu $sp, $sp, -0xc0
/* ACE110 80056F70 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACE114 80056F74 AFB20020 */  sw    $s2, 0x20($sp)
/* ACE118 80056F78 AFB1001C */  sw    $s1, 0x1c($sp)
/* ACE11C 80056F7C AFB00018 */  sw    $s0, 0x18($sp)
/* ACE120 80056F80 8482015E */  lh    $v0, 0x15e($a0)
/* ACE124 80056F84 00808025 */  move  $s0, $a0
/* ACE128 80056F88 2401000A */  li    $at, 10
/* ACE12C 80056F8C 5040000A */  beql  $v0, $zero, .L80056FB8
/* ACE130 80056F90 860F0142 */   lh    $t7, 0x142($s0)
/* ACE134 80056F94 10410007 */  beq   $v0, $at, .L80056FB4
/* ACE138 80056F98 24010014 */   li    $at, 20
/* ACE13C 80056F9C 10410005 */  beq   $v0, $at, .L80056FB4
/* ACE140 80056FA0 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACE144 80056FA4 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACE148 80056FA8 85C20314 */  lh    $v0, 0x314($t6)
/* ACE14C 80056FAC 1040000F */  beqz  $v0, .L80056FEC
/* ACE150 80056FB0 00000000 */   nop
.L80056FB4:
/* ACE154 80056FB4 860F0142 */  lh    $t7, 0x142($s0)
.L80056FB8:
/* ACE158 80056FB8 3C198012 */  lui   $t9, %hi(sCameraSettings)
/* ACE15C 80056FBC 860B0144 */  lh    $t3, 0x144($s0)
/* ACE160 80056FC0 000FC0C0 */  sll   $t8, $t7, 3
/* ACE164 80056FC4 0338C821 */  addu  $t9, $t9, $t8
/* ACE168 80056FC8 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* ACE16C 80056FCC 000B60C0 */  sll   $t4, $t3, 3
/* ACE170 80056FD0 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ACE174 80056FD4 032C6821 */  addu  $t5, $t9, $t4
/* ACE178 80056FD8 8DA30004 */  lw    $v1, 4($t5)
/* ACE17C 80056FDC 846E0000 */  lh    $t6, ($v1)
/* ACE180 80056FE0 A60E0000 */  sh    $t6, ($s0)
/* ACE184 80056FE4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ACE188 80056FE8 85E20314 */  lh    $v0, 0x314($t7)
.L80056FEC:
/* ACE18C 80056FEC 50400004 */  beql  $v0, $zero, .L80057000
/* ACE190 80056FF0 2611005C */   addiu $s1, $s0, 0x5c
/* ACE194 80056FF4 0C011495 */  jal   Camera_CopyPREGToModeValues
/* ACE198 80056FF8 02002025 */   move  $a0, $s0
/* ACE19C 80056FFC 2611005C */  addiu $s1, $s0, 0x5c
.L80057000:
/* ACE1A0 80057000 26120050 */  addiu $s2, $s0, 0x50
/* ACE1A4 80057004 02403025 */  move  $a2, $s2
/* ACE1A8 80057008 02202825 */  move  $a1, $s1
/* ACE1AC 8005700C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ACE1B0 80057010 27A40074 */   addiu $a0, $sp, 0x74
/* ACE1B4 80057014 0C0111DB */  jal   func_8004476C
/* ACE1B8 80057018 02002025 */   move  $a0, $s0
/* ACE1BC 8005701C 27A400A0 */  addiu $a0, $sp, 0xa0
/* ACE1C0 80057020 00402825 */  move  $a1, $v0
/* ACE1C4 80057024 0C010EF1 */  jal   func_80043BC4
/* ACE1C8 80057028 AFA2006C */   sw    $v0, 0x6c($sp)
/* ACE1CC 8005702C 8FA3006C */  lw    $v1, 0x6c($sp)
/* ACE1D0 80057030 27B80064 */  addiu $t8, $sp, 0x64
/* ACE1D4 80057034 2401FFFF */  li    $at, -1
/* ACE1D8 80057038 88790006 */  lwl   $t9, 6($v1)
/* ACE1DC 8005703C 98790009 */  lwr   $t9, 9($v1)
/* ACE1E0 80057040 26040074 */  addiu $a0, $s0, 0x74
/* ACE1E4 80057044 3C098012 */  lui   $t1, %hi(D_8011D3A0) # $t1, 0x8012
/* ACE1E8 80057048 AF190000 */  sw    $t9, ($t8)
/* ACE1EC 8005704C 9479000A */  lhu   $t9, 0xa($v1)
/* ACE1F0 80057050 A7190004 */  sh    $t9, 4($t8)
/* ACE1F4 80057054 8468000C */  lh    $t0, 0xc($v1)
/* ACE1F8 80057058 55010003 */  bnel  $t0, $at, .L80057068
/* ACE1FC 8005705C 29010169 */   slti  $at, $t0, 0x169
/* ACE200 80057060 24081770 */  li    $t0, 6000
/* ACE204 80057064 29010169 */  slti  $at, $t0, 0x169
.L80057068:
/* ACE208 80057068 10200008 */  beqz  $at, .L8005708C
/* ACE20C 8005706C 01000821 */   addu  $at, $t0, $zero
/* ACE210 80057070 00084080 */  sll   $t0, $t0, 2
/* ACE214 80057074 01014023 */  subu  $t0, $t0, $at
/* ACE218 80057078 000840C0 */  sll   $t0, $t0, 3
/* ACE21C 8005707C 01014021 */  addu  $t0, $t0, $at
/* ACE220 80057080 00084080 */  sll   $t0, $t0, 2
/* ACE224 80057084 00084400 */  sll   $t0, $t0, 0x10
/* ACE228 80057088 00084403 */  sra   $t0, $t0, 0x10
.L8005708C:
/* ACE22C 8005708C 860C0000 */  lh    $t4, ($s0)
/* ACE230 80057090 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACE234 80057094 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* ACE238 80057098 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* ACE23C 8005709C C4860000 */  lwc1  $f6, ($a0)
/* ACE240 800570A0 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* ACE244 800570A4 46062032 */  c.eq.s $f4, $f6
/* ACE248 800570A8 00000000 */  nop
/* ACE24C 800570AC 45020010 */  bc1fl .L800570F0
/* ACE250 800570B0 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE254 800570B4 C48A0004 */  lwc1  $f10, 4($a0)
/* ACE258 800570B8 C7A400A8 */  lwc1  $f4, 0xa8($sp)
/* ACE25C 800570BC 460A4032 */  c.eq.s $f8, $f10
/* ACE260 800570C0 00000000 */  nop
/* ACE264 800570C4 4502000A */  bc1fl .L800570F0
/* ACE268 800570C8 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE26C 800570CC C4860008 */  lwc1  $f6, 8($a0)
/* ACE270 800570D0 46062032 */  c.eq.s $f4, $f6
/* ACE274 800570D4 00000000 */  nop
/* ACE278 800570D8 45020005 */  bc1fl .L800570F0
/* ACE27C 800570DC 8E0F0090 */   lw    $t7, 0x90($s0)
/* ACE280 800570E0 860D015E */  lh    $t5, 0x15e($s0)
/* ACE284 800570E4 55A0001A */  bnezl $t5, .L80057150
/* ACE288 800570E8 26030004 */   addiu $v1, $s0, 4
/* ACE28C 800570EC 8E0F0090 */  lw    $t7, 0x90($s0)
.L800570F0:
/* ACE290 800570F0 240E000C */  li    $t6, 12
/* ACE294 800570F4 2529D3A0 */  addiu $t1, %lo(D_8011D3A0) # addiu $t1, $t1, -0x2c60
/* ACE298 800570F8 A5EE0110 */  sh    $t6, 0x110($t7)
/* ACE29C 800570FC 8D380000 */  lw    $t8, ($t1)
/* ACE2A0 80057100 26030004 */  addiu $v1, $s0, 4
/* ACE2A4 80057104 240C000C */  li    $t4, 12
/* ACE2A8 80057108 330BF0FF */  andi  $t3, $t8, 0xf0ff
/* ACE2AC 8005710C 35790300 */  ori   $t9, $t3, 0x300
/* ACE2B0 80057110 AD390000 */  sw    $t9, ($t1)
/* ACE2B4 80057114 C6080098 */  lwc1  $f8, 0x98($s0)
/* ACE2B8 80057118 A46C0004 */  sh    $t4, 4($v1)
/* ACE2BC 8005711C 27AD00A0 */  addiu $t5, $sp, 0xa0
/* ACE2C0 80057120 E4680000 */  swc1  $f8, ($v1)
/* ACE2C4 80057124 8DAF0000 */  lw    $t7, ($t5)
/* ACE2C8 80057128 AC8F0000 */  sw    $t7, ($a0)
/* ACE2CC 8005712C 8DAE0004 */  lw    $t6, 4($t5)
/* ACE2D0 80057130 AC8E0004 */  sw    $t6, 4($a0)
/* ACE2D4 80057134 8DAF0008 */  lw    $t7, 8($t5)
/* ACE2D8 80057138 AC8F0008 */  sw    $t7, 8($a0)
/* ACE2DC 8005713C 8602015E */  lh    $v0, 0x15e($s0)
/* ACE2E0 80057140 14400002 */  bnez  $v0, .L8005714C
/* ACE2E4 80057144 24580001 */   addiu $t8, $v0, 1
/* ACE2E8 80057148 A618015E */  sh    $t8, 0x15e($s0)
.L8005714C:
/* ACE2EC 8005714C 26030004 */  addiu $v1, $s0, 4
.L80057150:
/* ACE2F0 80057150 84650004 */  lh    $a1, 4($v1)
/* ACE2F4 80057154 3C098012 */  lui   $t1, %hi(D_8011D3A0)
/* ACE2F8 80057158 2529D3A0 */  addiu $t1, %lo(D_8011D3A0) # addiu $t1, $t1, -0x2c60
/* ACE2FC 8005715C 18A00077 */  blez  $a1, .L8005733C
/* ACE300 80057160 26020094 */   addiu $v0, $s0, 0x94
/* ACE304 80057164 44855000 */  mtc1  $a1, $f10
/* ACE308 80057168 27AA0094 */  addiu $t2, $sp, 0x94
/* ACE30C 8005716C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACE310 80057170 46805120 */  cvt.s.w $f4, $f10
/* ACE314 80057174 44810000 */  mtc1  $at, $f0
/* ACE318 80057178 3C018014 */  lui   $at, %hi(D_8013A3C4)
/* ACE31C 8005717C 27AC0088 */  addiu $t4, $sp, 0x88
/* ACE320 80057180 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* ACE324 80057184 44060000 */  mfc1  $a2, $f0
/* ACE328 80057188 E7A40058 */  swc1  $f4, 0x58($sp)
/* ACE32C 8005718C 8C990000 */  lw    $t9, ($a0)
/* ACE330 80057190 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* ACE334 80057194 AD590000 */  sw    $t9, ($t2)
/* ACE338 80057198 8C8B0004 */  lw    $t3, 4($a0)
/* ACE33C 8005719C AD4B0004 */  sw    $t3, 4($t2)
/* ACE340 800571A0 8C990008 */  lw    $t9, 8($a0)
/* ACE344 800571A4 AD590008 */  sw    $t9, 8($t2)
/* ACE348 800571A8 C7A80094 */  lwc1  $f8, 0x94($sp)
/* ACE34C 800571AC C4460000 */  lwc1  $f6, ($v0)
/* ACE350 800571B0 46083281 */  sub.s $f10, $f6, $f8
/* ACE354 800571B4 46005102 */  mul.s $f4, $f10, $f0
/* ACE358 800571B8 46044180 */  add.s $f6, $f8, $f4
/* ACE35C 800571BC E7A60094 */  swc1  $f6, 0x94($sp)
/* ACE360 800571C0 C4680000 */  lwc1  $f8, ($v1)
/* ACE364 800571C4 C44A0004 */  lwc1  $f10, 4($v0)
/* ACE368 800571C8 C426A3C4 */  lwc1  $f6, %lo(D_8013A3C4)($at)
/* ACE36C 800571CC 46085101 */  sub.s $f4, $f10, $f8
/* ACE370 800571D0 C7A80098 */  lwc1  $f8, 0x98($sp)
/* ACE374 800571D4 46062282 */  mul.s $f10, $f4, $f6
/* ACE378 800571D8 460A4100 */  add.s $f4, $f8, $f10
/* ACE37C 800571DC E7A40098 */  swc1  $f4, 0x98($sp)
/* ACE380 800571E0 8D4E0000 */  lw    $t6, ($t2)
/* ACE384 800571E4 AD8E0000 */  sw    $t6, ($t4)
/* ACE388 800571E8 8D4D0004 */  lw    $t5, 4($t2)
/* ACE38C 800571EC AD8D0004 */  sw    $t5, 4($t4)
/* ACE390 800571F0 8D4E0008 */  lw    $t6, 8($t2)
/* ACE394 800571F4 AD8E0008 */  sw    $t6, 8($t4)
/* ACE398 800571F8 C62E0004 */  lwc1  $f14, 4($s1)
/* ACE39C 800571FC A7A80062 */  sh    $t0, 0x62($sp)
/* ACE3A0 80057200 AFA30030 */  sw    $v1, 0x30($sp)
/* ACE3A4 80057204 0C010E27 */  jal   func_8004389C
/* ACE3A8 80057208 C7AC0098 */   lwc1  $f12, 0x98($sp)
/* ACE3AC 8005720C 87B80064 */  lh    $t8, 0x64($sp)
/* ACE3B0 80057210 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ACE3B4 80057214 44813000 */  mtc1  $at, $f6
/* ACE3B8 80057218 87AF0066 */  lh    $t7, 0x66($sp)
/* ACE3BC 8005721C 00185823 */  negu  $t3, $t8
/* ACE3C0 80057220 E7A0008C */  swc1  $f0, 0x8c($sp)
/* ACE3C4 80057224 A7AB00B0 */  sh    $t3, 0xb0($sp)
/* ACE3C8 80057228 27A4007C */  addiu $a0, $sp, 0x7c
/* ACE3CC 8005722C 27A50088 */  addiu $a1, $sp, 0x88
/* ACE3D0 80057230 27A600AC */  addiu $a2, $sp, 0xac
/* ACE3D4 80057234 E7A600AC */  swc1  $f6, 0xac($sp)
/* ACE3D8 80057238 0C010F0A */  jal   func_80043C28
/* ACE3DC 8005723C A7AF00B2 */   sh    $t7, 0xb2($sp)
/* ACE3E0 80057240 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACE3E4 80057244 44814000 */  mtc1  $at, $f8
/* ACE3E8 80057248 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* ACE3EC 8005724C C7A40088 */  lwc1  $f4, 0x88($sp)
/* ACE3F0 80057250 8FA30030 */  lw    $v1, 0x30($sp)
/* ACE3F4 80057254 460A4003 */  div.s $f0, $f8, $f10
/* ACE3F8 80057258 87A80062 */  lh    $t0, 0x62($sp)
/* ACE3FC 8005725C 3C018014 */  lui   $at, %hi(D_8013A3C8)
/* ACE400 80057260 E7A00054 */  swc1  $f0, 0x54($sp)
/* ACE404 80057264 C62C0000 */  lwc1  $f12, ($s1)
/* ACE408 80057268 C6220004 */  lwc1  $f2, 4($s1)
/* ACE40C 8005726C C62E0008 */  lwc1  $f14, 8($s1)
/* ACE410 80057270 460C2181 */  sub.s $f6, $f4, $f12
/* ACE414 80057274 46003202 */  mul.s $f8, $f6, $f0
/* ACE418 80057278 46086280 */  add.s $f10, $f12, $f8
/* ACE41C 8005727C E62A0000 */  swc1  $f10, ($s1)
/* ACE420 80057280 C7A4008C */  lwc1  $f4, 0x8c($sp)
/* ACE424 80057284 46022181 */  sub.s $f6, $f4, $f2
/* ACE428 80057288 46003202 */  mul.s $f8, $f6, $f0
/* ACE42C 8005728C 46081280 */  add.s $f10, $f2, $f8
/* ACE430 80057290 E62A0004 */  swc1  $f10, 4($s1)
/* ACE434 80057294 C7A40090 */  lwc1  $f4, 0x90($sp)
/* ACE438 80057298 460E2181 */  sub.s $f6, $f4, $f14
/* ACE43C 8005729C 46003202 */  mul.s $f8, $f6, $f0
/* ACE440 800572A0 46087280 */  add.s $f10, $f14, $f8
/* ACE444 800572A4 E62A0008 */  swc1  $f10, 8($s1)
/* ACE448 800572A8 C6500000 */  lwc1  $f16, ($s2)
/* ACE44C 800572AC C7A4007C */  lwc1  $f4, 0x7c($sp)
/* ACE450 800572B0 C6520004 */  lwc1  $f18, 4($s2)
/* ACE454 800572B4 C6420008 */  lwc1  $f2, 8($s2)
/* ACE458 800572B8 46102181 */  sub.s $f6, $f4, $f16
/* ACE45C 800572BC 46003202 */  mul.s $f8, $f6, $f0
/* ACE460 800572C0 46088280 */  add.s $f10, $f16, $f8
/* ACE464 800572C4 E64A0000 */  swc1  $f10, ($s2)
/* ACE468 800572C8 C7A40080 */  lwc1  $f4, 0x80($sp)
/* ACE46C 800572CC 46122181 */  sub.s $f6, $f4, $f18
/* ACE470 800572D0 46003202 */  mul.s $f8, $f6, $f0
/* ACE474 800572D4 46089280 */  add.s $f10, $f18, $f8
/* ACE478 800572D8 E64A0004 */  swc1  $f10, 4($s2)
/* ACE47C 800572DC C7A40084 */  lwc1  $f4, 0x84($sp)
/* ACE480 800572E0 C7A80054 */  lwc1  $f8, 0x54($sp)
/* ACE484 800572E4 46022181 */  sub.s $f6, $f4, $f2
/* ACE488 800572E8 46083282 */  mul.s $f10, $f6, $f8
/* ACE48C 800572EC 44883000 */  mtc1  $t0, $f6
/* ACE490 800572F0 00000000 */  nop
/* ACE494 800572F4 46803220 */  cvt.s.w $f8, $f6
/* ACE498 800572F8 460A1100 */  add.s $f4, $f2, $f10
/* ACE49C 800572FC E6440008 */  swc1  $f4, 8($s2)
/* ACE4A0 80057300 C42AA3C8 */  lwc1  $f10, %lo(D_8013A3C8)($at)
/* ACE4A4 80057304 84790004 */  lh    $t9, 4($v1)
/* ACE4A8 80057308 C60000FC */  lwc1  $f0, 0xfc($s0)
/* ACE4AC 8005730C 460A4102 */  mul.s $f4, $f8, $f10
/* ACE4B0 80057310 44994000 */  mtc1  $t9, $f8
/* ACE4B4 80057314 00000000 */  nop
/* ACE4B8 80057318 468042A0 */  cvt.s.w $f10, $f8
/* ACE4BC 8005731C 46002181 */  sub.s $f6, $f4, $f0
/* ACE4C0 80057320 460A3103 */  div.s $f4, $f6, $f10
/* ACE4C4 80057324 46040200 */  add.s $f8, $f0, $f4
/* ACE4C8 80057328 E60800FC */  swc1  $f8, 0xfc($s0)
/* ACE4CC 8005732C 846C0004 */  lh    $t4, 4($v1)
/* ACE4D0 80057330 258DFFFF */  addiu $t5, $t4, -1
/* ACE4D4 80057334 10000035 */  b     .L8005740C
/* ACE4D8 80057338 A46D0004 */   sh    $t5, 4($v1)
.L8005733C:
/* ACE4DC 8005733C 8D2E0000 */  lw    $t6, ($t1)
/* ACE4E0 80057340 27AA0094 */  addiu $t2, $sp, 0x94
/* ACE4E4 80057344 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACE4E8 80057348 31CFF0FF */  andi  $t7, $t6, 0xf0ff
/* ACE4EC 8005734C AD2F0000 */  sw    $t7, ($t1)
/* ACE4F0 80057350 8C8B0000 */  lw    $t3, ($a0)
/* ACE4F4 80057354 44810000 */  mtc1  $at, $f0
/* ACE4F8 80057358 3C018014 */  lui   $at, %hi(D_8013A3CC)
/* ACE4FC 8005735C AD4B0000 */  sw    $t3, ($t2)
/* ACE500 80057360 8C980004 */  lw    $t8, 4($a0)
/* ACE504 80057364 3C073C23 */  lui   $a3, (0x3C23D70A >> 16) # lui $a3, 0x3c23
/* ACE508 80057368 44060000 */  mfc1  $a2, $f0
/* ACE50C 8005736C AD580004 */  sw    $t8, 4($t2)
/* ACE510 80057370 8C8B0008 */  lw    $t3, 8($a0)
/* ACE514 80057374 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* ACE518 80057378 AD4B0008 */  sw    $t3, 8($t2)
/* ACE51C 8005737C C7AA0094 */  lwc1  $f10, 0x94($sp)
/* ACE520 80057380 C4460000 */  lwc1  $f6, ($v0)
/* ACE524 80057384 460A3101 */  sub.s $f4, $f6, $f10
/* ACE528 80057388 46002202 */  mul.s $f8, $f4, $f0
/* ACE52C 8005738C 46085180 */  add.s $f6, $f10, $f8
/* ACE530 80057390 E7A60094 */  swc1  $f6, 0x94($sp)
/* ACE534 80057394 C46A0000 */  lwc1  $f10, ($v1)
/* ACE538 80057398 C4440004 */  lwc1  $f4, 4($v0)
/* ACE53C 8005739C C426A3CC */  lwc1  $f6, %lo(D_8013A3CC)($at)
/* ACE540 800573A0 460A2201 */  sub.s $f8, $f4, $f10
/* ACE544 800573A4 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* ACE548 800573A8 46064102 */  mul.s $f4, $f8, $f6
/* ACE54C 800573AC 46045200 */  add.s $f8, $f10, $f4
/* ACE550 800573B0 E7A80098 */  swc1  $f8, 0x98($sp)
/* ACE554 800573B4 8D4C0000 */  lw    $t4, ($t2)
/* ACE558 800573B8 AE2C0000 */  sw    $t4, ($s1)
/* ACE55C 800573BC 8D590004 */  lw    $t9, 4($t2)
/* ACE560 800573C0 AE390004 */  sw    $t9, 4($s1)
/* ACE564 800573C4 8D4C0008 */  lw    $t4, 8($t2)
/* ACE568 800573C8 C62E0004 */  lwc1  $f14, 4($s1)
/* ACE56C 800573CC AE2C0008 */  sw    $t4, 8($s1)
/* ACE570 800573D0 0C010E27 */  jal   func_8004389C
/* ACE574 800573D4 C7AC0098 */   lwc1  $f12, 0x98($sp)
/* ACE578 800573D8 E6200004 */  swc1  $f0, 4($s1)
/* ACE57C 800573DC 87AE0064 */  lh    $t6, 0x64($sp)
/* ACE580 800573E0 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ACE584 800573E4 44813000 */  mtc1  $at, $f6
/* ACE588 800573E8 87AD0066 */  lh    $t5, 0x66($sp)
/* ACE58C 800573EC 000E7823 */  negu  $t7, $t6
/* ACE590 800573F0 A7AF00B0 */  sh    $t7, 0xb0($sp)
/* ACE594 800573F4 02402025 */  move  $a0, $s2
/* ACE598 800573F8 02202825 */  move  $a1, $s1
/* ACE59C 800573FC 27A600AC */  addiu $a2, $sp, 0xac
/* ACE5A0 80057400 E7A600AC */  swc1  $f6, 0xac($sp)
/* ACE5A4 80057404 0C010F0A */  jal   func_80043C28
/* ACE5A8 80057408 A7AD00B2 */   sh    $t5, 0xb2($sp)
.L8005740C:
/* ACE5AC 8005740C 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACE5B0 80057410 8FB00018 */  lw    $s0, 0x18($sp)
/* ACE5B4 80057414 8FB1001C */  lw    $s1, 0x1c($sp)
/* ACE5B8 80057418 8FB20020 */  lw    $s2, 0x20($sp)
/* ACE5BC 8005741C 27BD00C0 */  addiu $sp, $sp, 0xc0
/* ACE5C0 80057420 03E00008 */  jr    $ra
/* ACE5C4 80057424 24020001 */   li    $v0, 1
