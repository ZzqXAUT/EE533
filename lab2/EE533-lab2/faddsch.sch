VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL C
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL S
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL CO
        PORT Input A
        PORT Input B
        PORT Input C
        PORT Output S
        PORT Output CO
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK U1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK U2 xor2
            PIN I0 C
            PIN I1 XLXN_8
            PIN O S
        END BLOCK
        BEGIN BLOCK U3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK U4 and2
            PIN I0 C
            PIN I1 A
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK U5 and2
            PIN I0 C
            PIN I1 B
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_14 or3
            PIN I0 XLXN_13
            PIN I1 XLXN_12
            PIN I2 XLXN_10
            PIN O CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE U1 1280 928 R0
        BEGIN BRANCH A
            WIRE 1120 800 1152 800
            WIRE 1152 800 1280 800
            WIRE 1152 800 1152 992
            WIRE 1152 992 1296 992
            WIRE 1152 992 1152 1152
            WIRE 1152 1152 1296 1152
        END BRANCH
        IOMARKER 1120 800 A R180 28
        BEGIN BRANCH B
            WIRE 1120 864 1200 864
            WIRE 1200 864 1280 864
            WIRE 1200 864 1200 1056
            WIRE 1200 1056 1296 1056
            WIRE 1200 1056 1200 1312
            WIRE 1200 1312 1296 1312
        END BRANCH
        IOMARKER 1120 864 B R180 28
        INSTANCE U2 1712 960 R0
        BEGIN BRANCH C
            WIRE 1120 928 1248 928
            WIRE 1248 928 1696 928
            WIRE 1248 928 1248 1216
            WIRE 1248 1216 1296 1216
            WIRE 1248 1216 1248 1376
            WIRE 1248 1376 1296 1376
            WIRE 1696 896 1712 896
            WIRE 1696 896 1696 928
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1536 832 1712 832
        END BRANCH
        INSTANCE U3 1296 1120 R0
        IOMARKER 1120 928 C R180 28
        INSTANCE U4 1296 1280 R0
        INSTANCE U5 1296 1440 R0
        BEGIN BRANCH S
            WIRE 1968 864 2160 864
        END BRANCH
        IOMARKER 2160 864 S R0 28
        INSTANCE XLXI_14 1728 1312 R0
        BEGIN BRANCH XLXN_10
            WIRE 1552 1024 1648 1024
            WIRE 1648 1024 1728 1024
            WIRE 1728 1024 1728 1120
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1552 1184 1728 1184
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1552 1344 1728 1344
            WIRE 1728 1248 1728 1344
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1984 1184 2144 1184
        END BRANCH
        IOMARKER 2144 1184 CO R0 28
    END SHEET
END SCHEMATIC
