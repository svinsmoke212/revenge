Address     Cmd     Parameters              General Purpose Registers
800DA884    SH V0, 0x0002 (A0)              v0 = 00000000 00000001 A0 = FFFFFFFF 800FAF84
            SLL V0, V0, 16                  v0 = 00000000 00000001
            SRA V0, V0, 16                  v0 = 00000000 00010000
            SLTI V0, V0, 0x003C             v0 = 00000000 00000001
800DA894    BNEZ V0, 0x800DA8AC             v0 = 00000000 00000001
800DA898        NOP

Step

800DA8AC    JR      RA                      RA = FFFFFFFF 800B93D4
            NOP

Step

800B93D4    LUI S1, 0x8010                  S1 = 00000000 00000000
            ADDIU S1, S1, 0x9B58            s1 = FFFFFFFF 80100000
            JAL 0x800DA850                  RA = FFFFFFFF 800B93D4
800B93E0    ADDIU A1, R0, 0x001E            a1 = 00000000 0000001E  r0 = 00000000 00000000

Step

800DA850    LHU V0, 0x0004 (A0)             v0 = 00000000 00000001  a0 = FFFFFFFF 800FAF84
            SLL A1, A1, 16                  a1 = 00000000 0000001E
            SRA A1, A1, 16                  a1 = 00000000 001E0000
            ADDIU V0, V0, 0x0001            v0 = 00000000 00000000
            SH V0, 0x0004 (A0)              v0 = 00000000 00000001  a0 = FFFFFFFF 800FAF84
            SLL V0, V0, 16                  v0 = 00000000 00000001
            SRA V0, V0, 16                  v0 = 00000000 00010000
            SLT V0, V0, A1                  v0 = 00000000 00000001  a1 = 00000000 0000001E
            BNEZ V0, 0x800DA8AC             v0 = 00000000 00000001
800DA874     NOP

Step

800DA8AC    JR RA                           RA = FFFFFFFF 800B93E8
800DA8B0    NOP

Step

800B93E8    LUI V0, 0x8008                  v0 = 00000000 00000001
            LB V0, 0xE2BA (V0)              v0 = FFFFFFFF 80080000
            BNEZ V0, 0x800B9444             v0 = 00000000 00000004
800B993F4   ADDIU V0, R0, 0x03E8            v0 = 00000000 00000004  r0 = 00000000 00000000

Step

800B9444    LUI A0, 0x8010                  a0 = FFFFFFFF 800FAF84
            LH A0, 0xAF86 (A0)              a0 = FFFFFFFF 80100000
            JAL 0x80095CB0                  RA = FFFFFFFF 800B93E8
800B9450    LH A1, 0x0000 (S0)              a1 = 00000000 0000001E s0 = FFFFFFFF 800FAF84

Step

80095CB0    LUI V0, 0x8010                  v0 = 00000000 000003E8