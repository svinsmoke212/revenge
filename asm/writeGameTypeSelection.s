/*    writing to address 800E836C    */
Address     Cmd     Parameters              General Purpose Registers
800ACD50    SH S4, 0x0004 (S2)              S2 = FFFFFFFF 800E8368  S4 = 00000000 00000000 /* s4 will be 00000000 00000001 for first option and so on */
            ADDU A0, V1, A0                 A0 = FFFFFFFF 803736F0  V1 = 00000000 00000000 /* V1 will be 00000000 00000148 for first option and so on */
            LHU V0, 0x000A (A0)             A0 = FFFFFFFF 803736F0  V0 = 00000000 000000A7
            ORI V0, V0, 0x0008              V0 = 00000000 00000000
            SH V0, 0x000A (A0)              V0 = 00000000 00000008  A0 = FFFFFFFF 803736F0 
            LW V0, 0x0014 (S2)              V0 = 00000000 00000008  S2 = FFFFFFFF 800E8368
            ADDU V0, V1, V0                 V0 = FFFFFFFF 803736F0  V1 = 00000000 00000000
            SB R0, 0x000F (V0)              V0 = FFFFFFFF 803736F0
            LW V0, 0x0014 (S2)              V0 = FFFFFFFF 803736F0  S2 = FFFFFFFF 800E8368
            ADDU V1, V1, V0                 V0 = FFFFFFFF 803736F0  V1 = 00000000 00000000
            ADDIU V0, R0, 0x0008            V0 = FFFFFFFF 803736F0
            SH V0, 0x0008 (V1)              V0 = 00000000 00000008  V1 = FFFFFFFF 803736F0
            ADDIU V0, R0, 0x0200            V0 = 00000000 00000008
            BNE S1, V0, 0x800ACDF0          V0 = 00000000 00000200  S1 = FFFFFFFF FFFFFFFF
800ACD84    NOP

Step

800ACDF0    BLTZ S1, 0x800AD020             S1 = FFFFFFFF FFFFFFFF
800ACDF4    NOP








glabel func_8000DEE4
/* EAE4 8000DEE4 27BDFFE0 */  addiu      $sp, $sp, -0x20  /* sp = FFFFFFFF 80060320 */
/* EAE8 8000DEE8 AFB00018 */  sw         $s0, 0x18($sp)   /* s0 = 00000000 00000001 */
/* EAEC 8000DEEC 00008021 */  addu       $s0, $zero, $zero /* s0 = 00000000 00000000 */
/* EAF0 8000DEF0 00801821 */  addu       $v1, $a0, $zero  /* s0 = 00000000 00000000 */
/* EAF4 8000DEF4 2482FBFF */  addiu      $v0, $a0, 0xFBFF /* -0x401 was in before fbff v0 = 00000000 00000200 a0 = 00000000 00000401 */
/* EAF8 8000DEF8 3042FFFF */  andi       $v0, $v0, 0xFFFF  /* v0 = 00000000 00000000 */
/* EAFC 8000DEFC 2C42002B */  sltiu      $v0, $v0, 0x002B /*  */
/* EB00 8000DF00 10400008 */  beqz       $v0, .L8000DF24 /*  */
/* EB04 8000DF04 AFBF001C */   sw        $ra, 0x1C($sp) /* ra = FFFFFFFF 800ACD38 sp = FFFFFFFF 80060300 */
/* EB08 8000DF08 00041400 */  sll        $v0, $a0, 16 /* a0 = 00000000 00000401 v0 = 00000000 00000000*/
/* EB0C 8000DF0C 000213C3 */  sra        $v0, $v0, 15 /* v0 = 00000000 04010000 */
/* EB10 8000DF10 3C018003 */  lui        $at, %hi(D_800306A0) /* at = FFFFFFFF 800D0004  */
/* EB14 8000DF14 00220821 */  addu       $at, $at, $v0  /* at = FFFFFFFF 80030000 v0 = 00000000 00000802 */
/* EB18 8000DF18 942206A0 */  lhu        $v0, %lo(D_800306A0)($at)  /* at = FFFFFFFF 80030802 */
/* EB1C 8000DF1C 080037CB */  j          .L8000DF2C  /*  */
/* EB20 8000DF20 00021400 */   sll       $v0, $v0, 16  /* v0 = 00000000 0000005A */
.L8000DF24:
/* EB24 8000DF24 00601021 */  addu       $v0, $v1, $zero  /*  */
/* EB28 8000DF28 00021400 */  sll        $v0, $v0, 16  /*  */
.L8000DF2C:
/* EB2C 8000DF2C 00022403 */  sra        $a0, $v0, 16  /* a0 = 00000000 00000401 v0 = 00000000 005A0000*/
/* EB30 8000DF30 0480000C */  bltz       $a0, .L8000DF64  /* a0 = 00000000 0000005A  */
/* EB34 8000DF34 28820097 */   slti      $v0, $a0, 0x97  /* v0 = 00000000 005A0000  a0 = 00000000 0000005A*/
/* EB38 8000DF38 1040000A */  beqz       $v0, .L8000DF64  /* v0 = 00000000 00000001 */
/* EB3C 8000DF3C 2402FFFF */   addiu     $v0, $zero, 0xFFFF  /*  was -0x1 */
/* EB40 8000DF40 AFA20010 */  sw         $v0, 0x10($sp)  /*  v0 = FFFFFFFF FFFFFFFF sp = FFFFFFFF 80060300 */
/* EB44 8000DF44 24050080 */  addiu      $a1, $zero, 0x80 /* a1 = 00000000 00000000 */
/* EB48 8000DF48 24060080 */  addiu      $a2, $zero, 0x80 /* a2 = 00000000 00000000  */
/* EB4C 8000DF4C 0C000CA9 */  jal        func_800032A4 /* ra = FFFFFFFF 800C1DA8 on start up  then when jal sp = FFFFFFFF 800603B8*/
/* EB50 8000DF50 00003821 */   addu      $a3, $zero, $zero /* a3 = 00000000 00000400*/
/* EB54 8000DF54 00408021 */  addu       $s0, $v0, $zero /*  */
/* EB58 8000DF58 02002021 */  addu       $a0, $s0, $zero /*  */
/* EB5C 8000DF5C 0C004FDF */  jal        func_80013F7C /*  */
/* EB60 8000DF60 00002821 */   addu      $a1, $zero, $zero /*  */
.L8000DF64:
/* EB64 8000DF64 02001021 */  addu       $v0, $s0, $zero /*  */
/* EB68 8000DF68 8FBF001C */  lw         $ra, 0x1C($sp) /*  */
/* EB6C 8000DF6C 8FB00018 */  lw         $s0, 0x18($sp)  /*  */
/* EB70 8000DF70 03E00008 */  jr         $ra  /*  */
/* EB74 8000DF74 27BD0020 */   addiu     $sp, $sp, 0x20  /*  */
.size func_8000DEE4, . - func_8000DEE4

glabel func_800032A4
/* 3EA4 800032A4 27BDFFE0 */  addiu      $sp, $sp, -0x20 /* sp = FFFFFFFF 80060398 */
/* 3EA8 800032A8 8FA20030 */  lw         $v0, 0x30($sp) /*   */
/* 3EAC 800032AC 00073C00 */  sll        $a3, $a3, 16 /* a3 = 00000000 00000000  */
/* 3EB0 800032B0 00073C03 */  sra        $a3, $a3, 16 /*   */
/* 3EB4 800032B4 00041C00 */  sll        $v1, $a0, 16 /* v1 = 00000000 00000411 a0 = 00000000 00000069 */
/* 3EB8 800032B8 00054400 */  sll        $t0, $a1, 16 /* t0 = 00000000 00800000 a1 = 00000000 00000080 */
/* 3EBC 800032BC AFA70010 */  sw         $a3, 0x10($sp) /*  sp = FFFFFFFF 80060398*/
/* 3EC0 800032C0 00063C00 */  sll        $a3, $a2, 16 /*  a2 = 00000000 00000080 */
/* 3EC4 800032C4 00032C03 */  sra        $a1, $v1, 16 /* v1 = 00000000 00690000  */
/* 3EC8 800032C8 00021400 */  sll        $v0, $v0, 16 /* v0 =  FFFFFFFF FFFFFFFF */
/* 3ECC 800032CC 00021403 */  sra        $v0, $v0, 16 /* v0 =  FFFFFFFF FFFF0000  */
/* 3ED0 800032D0 AFA20014 */  sw         $v0, 0x14($sp) /*   */
/* 3ED4 800032D4 3C028005 */  lui        $v0, %hi(D_800482D4) /*   */
/* 3ED8 800032D8 8C4282D4 */  lw         $v0, %lo(D_800482D4)($v0) /* v0 = FFFFFFFF 80050000  */
/* 3EDC 800032DC 00083403 */  sra        $a2, $t0, 16 /*   */
/* 3EE0 800032E0 00073C03 */  sra        $a3, $a3, 16 /*  a3 = 00000000 00800000  */
/* 3EE4 800032E4 AFBF0018 */  sw         $ra, 0x18($sp) /* ra = FFFFFFFF 8000DF54  */
/* 3EE8 800032E8 0C005050 */  jal        func_80014140 /*   */
/* 3EEC 800032EC 00402021 */   addu      $a0, $v0, $zero /* a0 = 00000000 00000069 v0 = FFFFFFFF 803BF3C0  */
/* 3EF0 800032F0 8FBF0018 */  lw         $ra, 0x18($sp) /*   */
/* 3EF4 800032F4 03E00008 */  jr         $ra /*   */
/* 3EF8 800032F8 27BD0020 */   addiu     $sp, $sp, 0x20 /*   */
.size func_800032A4, . - func_800032A4

glabel func_80014140
/* 14D40 80014140 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 14D44 80014144 8FA80040 */  lw         $t0, 0x40($sp) /*   */
/** 14D48 80014148 10800006 */  beqz       $a0, .L80014164 /*   */
/** 14D4C 8001414C AFBF0028 */   sw        $ra, 0x28($sp) /*   */
/** 14D50 80014150 8C820010 */  lw         $v0, 0x10($a0) /*   */
/** 14D54 80014154 04410003 */  bgez       $v0, .L80014164 /*   */
/** 14D58 80014158 00000000 */   nop /*   */
/** 14D5C 8001415C 3C018006 */  lui        $at, %hi(D_800604F0) /*   */
/* 14D60 80014160 AC2404F0 */  sw         $a0, %lo(D_800604F0)($at) /*   */
.L80014164: 
/* 14D64 80014164 8FAA0044 */  lw         $t2, 0x44($sp) /*   */
/* 14D68 80014168 2402FFFF */  addiu      $v0, $zero, -0x1 /*   */
/* 14D6C 8001416C 15420005 */  bne        $t2, $v0, .L80014184 /*   */
/* 14D70 80014170 00051080 */   sll       $v0, $a1, 2 /*   */
/* 14D74 80014174 3C038006 */  lui        $v1, %hi(D_800604D8) /*   */
/* 14D78 80014178 8C6304D8 */  lw         $v1, %lo(D_800604D8)($v1) /*   */
/* 14D7C 8001417C 00431021 */  addu       $v0, $v0, $v1 /*   */
/* 14D80 80014180 8C4A0000 */  lw         $t2, 0x0($v0)
.L80014184: /*   */
/* 14D84 80014184 1100000F */  beqz       $t0, .L800141C4 /*   */
/* 14D88 80014188 254B0001 */   addiu     $t3, $t2, 0x1 /*   */
/* 14D8C 8001418C 3C028006 */  lui        $v0, %hi(D_800604C8) /*   */
/* 14D90 80014190 8C4204C8 */  lw         $v0, %lo(D_800604C8)($v0) /*   */
/* 14D94 80014194 3C048006 */  lui        $a0, %hi(D_800604D0) /*   */
/* 14D98 80014198 8C8404D0 */  lw         $a0, %lo(D_800604D0)($a0) /*   */
/* 14D9C 8001419C 1040000D */  beqz       $v0, .L800141D4 /*   */
/* 14DA0 800141A0 00004821 */   addu      $t1, $zero, $zero /*   */
/* 14DA4 800141A4 00401821 */  addu       $v1, $v0, $zero /*   */
.L800141A8: 
/* 14DA8 800141A8 948200C6 */  lhu        $v0, 0xC6($a0) /*   */
/* 14DAC 800141AC 10450025 */  beq        $v0, $a1, .L80014244 /*   */
/* 14DB0 800141B0 25290001 */   addiu     $t1, $t1, 0x1 /*   */
/* 14DB4 800141B4 0123102B */  sltu       $v0, $t1, $v1 /*   */
/* 14DB8 800141B8 1440FFFB */  bnez       $v0, .L800141A8 /*   */
/* 14DBC 800141BC 24840158 */   addiu     $a0, $a0, 0x158 /*   */
/* 14DC0 800141C0 254B0001 */  addiu      $t3, $t2, 0x1 /*   */
.L800141C4:
/* 14DC4 800141C4 3C028006 */  lui        $v0, %hi(D_800604C8) /*   */
/* 14DC8 800141C8 8C4204C8 */  lw         $v0, %lo(D_800604C8)($v0) /*   */
/* 14DCC 800141CC 3C048006 */  lui        $a0, %hi(D_800604D0) /*   */
/* 14DD0 800141D0 8C8404D0 */  lw         $a0, %lo(D_800604D0)($a0)
.L800141D4:
/* 14DD4 800141D4 10400013 */  beqz       $v0, .L80014224 /*   */
/* 14DD8 800141D8 00004821 */   addu      $t1, $zero, $zero /*   */
/* 14DDC 800141DC 00406021 */  addu       $t4, $v0, $zero /*   */
/* 14DE0 800141E0 00804021 */  addu       $t0, $a0, $zero /*   */
.L800141E4: 
/* 14DE4 800141E4 8D020004 */  lw         $v0, 0x4($t0) /*   */
/* 14DE8 800141E8 10400016 */  beqz       $v0, .L80014244 /*   */
/* 14DEC 800141EC 00000000 */   nop /*   */
/* 14DF0 800141F0 950200C6 */  lhu        $v0, 0xC6($t0) /*   */
/* 14DF4 800141F4 10400007 */  beqz       $v0, .L80014214 /*   */
/* 14DF8 800141F8 25290001 */   addiu     $t1, $t1, 0x1 /*   */
/* 14DFC 800141FC 8D030064 */  lw         $v1, 0x64($t0) /*   */
/* 14E00 80014200 006B102A */  slt        $v0, $v1, $t3 /*   */
/* 14E04 80014204 10400003 */  beqz       $v0, .L80014214 /*   */
/* 14E08 80014208 00000000 */   nop /*   */
/* 14E0C 8001420C 00605821 */  addu       $t3, $v1, $zero /*   */
/* 14E10 80014210 01006821 */  addu       $t5, $t0, $zero /*   */
.L80014214:
/* 14E14 80014214 25080158 */  addiu      $t0, $t0, 0x158 /*   */
/* 14E18 80014218 012C102B */  sltu       $v0, $t1, $t4 /*   */
/* 14E1C 8001421C 1440FFF1 */  bnez       $v0, .L800141E4 /*   */
/* 14E20 80014220 24840158 */   addiu     $a0, $a0, 0x158 /*   */
.L80014224: 
/* 14E24 80014224 016A102A */  slt        $v0, $t3, $t2 /*   */
/* 14E28 80014228 10400008 */  beqz       $v0, .L8001424C /*   */
/* 14E2C 8001422C 00001021 */   addu      $v0, $zero, $zero /*   */
/* 14E30 80014230 AFAA0010 */  sw         $t2, 0x10($sp) /*   */
/* 14E34 80014234 0C0057D9 */  jal        func_80015F64 /*   */
/* 14E38 80014238 01A02021 */   addu      $a0, $t5, $zero /*   */
/* 14E3C 8001423C 08005093 */  j          .L8001424C /*   */
/* 14E40 80014240 00000000 */   nop
.L80014244: 
/* 14E44 80014244 0C0057D9 */  jal        func_80015F64 /*   */
/* 14E48 80014248 AFAA0010 */   sw        $t2, 0x10($sp) /*   */
.L8001424C:  
/* 14E4C 8001424C 3C038006 */  lui        $v1, %hi(D_800604F4) /*   */
/* 14E50 80014250 8C6304F4 */  lw         $v1, %lo(D_800604F4)($v1) /*   */
/* 14E54 80014254 3C018006 */  lui        $at, %hi(D_800604F0) /*   */
/* 14E58 80014258 AC2304F0 */  sw         $v1, %lo(D_800604F0)($at) /*   */
/* 14E5C 8001425C 8FBF0028 */  lw         $ra, 0x28($sp) /*   */
/* 14E60 80014260 03E00008 */  jr         $ra /*   */
/* 14E64 80014264 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80014140, . - func_80014140

typedef signed short int16_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
typedef int s32;
typedef unsigned int u32;
typedef signed short s16;
typedef unsigned char uint8_t;

// Declaration of external functions
s32 func_80015F64(void *, s32);

// External global variables
extern u32 D_800604C8;
extern void *D_800604D0;
extern s32 D_800604D8;
extern s32 D_800604F0;
extern s32 D_800604F4;
extern s32 D_800482D4;
extern s32 D_800604D4;
extern s32 D_800604DC;
extern s32 D_800604E8;

// Declaration of func_80014140
s32 func_80014140(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5);

// Function implementation
void func_800032A4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4) {
    func_80014140(D_800482D4, arg0, arg1, arg2, (s32)arg3, (s32)(s16)arg4);
}

s32 func_80014140(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5) {
    s32 temp_v1;
    s32 var_t2;
    s32 var_t3;
    s32 var_v0;
    u32 var_t1;
    u32 var_t1_2;
    void *var_a0;
    void *var_t0;

    if ((arg0 != 0) && (*((int *)arg0 + 4) < 0)) {
        D_800604F0 = arg0;
    }
    var_t2 = arg5;
    if (var_t2 == -1) {
        var_t2 = *((s32 *)((arg1 * 4) + (int)D_800604D8));
    }
    var_t3 = var_t2 + 1;
    if (arg4 != 0) {
        var_a0 = D_800604D0;
        var_t1 = 0;
        if (D_800604C8 != 0) {
            do {
                var_t1 += 1;
                if (*((uint8_t *)var_a0 + 0xC6) != arg1) {
                    var_a0 = (void *)((char *)var_a0 + 0x158);
                    if (var_t1 >= D_800604C8) {
                        var_t3 = var_t2 + 1;
                        break;
                    }
                } else {
                    var_v0 = func_80015F64(var_a0, var_t2);
                    return var_v0;
                }
            } while (1);
        }
    }
    var_a0 = D_800604D0;
    var_t1_2 = 0;
    if (D_800604C8 != 0) {
        var_t0 = var_a0;
        do {
            if (*((s32 *)var_t0 + 1) != 0) {
                var_t1_2 += 1;
                if (*((uint8_t *)var_t0 + 0xC6) != 0) {
                    temp_v1 = *((s32 *)var_t0 + 0x19);
                    if (temp_v1 < var_t3) {
                        var_t3 = temp_v1;
                    }
                }
                var_t0 = (void *)((char *)var_t0 + 0x158);
                var_a0 = (void *)((char *)var_a0 + 0x158);
                if (var_t1_2 >= D_800604C8) {
                    break;
                }
            }
        } while (1);
    }
    var_v0 = 0;
    if (var_t3 < var_t2) {
        var_v0 = func_80015F64((void *)((char *)D_800604D0 + 0x000), var_t2);
    }
    D_800604F0 = D_800604F4;
    return var_v0;
}

// Implementation of func_80015F64
s32 func_80015F64(void *arg0, s32 arg1) {
    s32 temp_lo;
    s32 temp_v0;
    void *temp_t0;
    void *var_a0;
    u32 var_v1;
    uint8_t temp_t2;

    var_a0 = arg0;
    temp_t0 = var_a0;
    temp_t2 = *((uint8_t *)temp_t0 + 0xE9);
    var_v1 = 0;
    *((s32 *)temp_t0 + 1) = 0; // Equivalent to temp_t0->unk4 = 0;
    do {
        *((uint8_t *)var_a0) = 0;
        var_v1 += 1;
        var_a0 = (void *)((char *)var_a0 + 1);
    } while (var_v1 < 0x158U);
    *((uint8_t *)temp_t0 + 0xEC) = 0xFF;
    *((uint8_t *)temp_t0 + 0xDE) = 0xFF;
    temp_lo = 0x6000 / (s32) D_800604DC;
    *((uint8_t *)temp_t0 + 0xF2) = 0;
    *((uint8_t *)temp_t0 + 0xF3) = 0x7F;
    *((uint8_t *)temp_t0 + 0xDC) = 0x7F;
    *((uint8_t *)temp_t0 + 0xE1) = 0x7F;
    *((uint8_t *)temp_t0 + 0xE7) = 0xFF;
    *((uint8_t *)temp_t0 + 0xE2) = 0x7F;
    *((uint8_t *)temp_t0 + 0xDD) = 0x40;
    *((uint8_t *)temp_t0 + 0xDF) = 1;
    *((uint8_t *)temp_t0 + 0xE6) = 1;
    *((uint8_t *)temp_t0 + 0xE8) = 0xF;
    *((uint8_t *)temp_t0 + 0xC6) = (uint8_t)arg1;
    *((int16_t *)temp_t0 + 0x60) = 0xFFFF;
    *((uint8_t *)temp_t0 + 0xBA) = 1;
    *((uint8_t *)temp_t0 + 0xC2) = 1;
    *((uint8_t *)temp_t0 + 0xC4) = 1;
    *((int32_t *)temp_t0 + 6) = -1;
    *((uint8_t *)temp_t0 + 0xBE) = 0x80;
    *((uint8_t *)temp_t0 + 0xD0) = 0x80;
    *((uint8_t *)temp_t0 + 0xB8) = 0x80;
    *((uint8_t *)temp_t0 + 0xE9) = temp_t2;
    *((uint8_t *)temp_t0 + 0xBE) = (uint8_t)arg1;
    *((float *)temp_t0 + 0xF) = 99.9f;
    *((float *)temp_t0 + 0x23) = 0.03125f;
    *((float *)temp_t0 + 0x1E) = 1.0f;
    *((float *)temp_t0 + 0x1F) = 0.003921569f;
    *((float *)temp_t0 + 0x20) = 0.06666667f;
    *((s32 *)temp_t0 + 0x26) = D_800604F0;
    *((int16_t *)temp_t0 + 0x64) = (int16_t)temp_lo;
    *((int16_t *)temp_t0 + 0x5E) = (int16_t)temp_lo;
    *((int16_t *)temp_t0 + 0x68) = (int16_t)arg1;
    *((s32 *)temp_t0 + 0x19) = arg1;
    *((s32 *)temp_t0 + 0x18) = D_800604E8;
    temp_v0 = *((s32 *)((arg1 * 4) + (int)D_800604D4));
    D_800604E8 += 1;
    *((s32 *)temp_t0 + 0x27) = temp_v0;
    *((s32 *)temp_t0 + 1) = temp_v0;
    return *((s32 *)temp_t0 + 0x18);
}