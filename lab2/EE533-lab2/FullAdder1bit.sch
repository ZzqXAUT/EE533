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
        SIGNAL XLXN_5
        SIGNAL S
        SIGNAL XLXN_7
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL CO
        PORT Input A
        PORT Input B
        PORT Input C
        PORT Output S
        PORT Output CO
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
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK U2 xor2
            PIN I0 C
            PIN I1 XLXN_5
            PIN O S
        END BLOCK
        BEGIN BLOCK U3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_7
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
        BEGIN BLOCK U6 or3
            PIN I0 XLXN_13
            PIN I1 XLXN_12
            PIN I2 XLXN_7
            PIN O CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE U1 1088 1408 R0
        BEGIN BRANCH A
            WIRE 928 1280 960 1280
            WIRE 960 1280 1088 1280
            WIRE 960 1280 960 1472
            WIRE 960 1472 1104 1472
            WIRE 960 1472 960 1632
            WIRE 960 1632 1104 1632
        END BRANCH
        BEGIN BRANCH B
            WIRE 928 1344 1008 1344
            WIRE 1008 1344 1088 1344
            WIRE 1008 1344 1008 1536
            WIRE 1008 1536 1104 1536
            WIRE 1008 1536 1008 1792
            WIRE 1008 1792 1104 1792
        END BRANCH
        INSTANCE U2 1520 1440 R0
        BEGIN BRANCH C
            WIRE 928 1408 1056 1408
            WIRE 1056 1408 1504 1408
            WIRE 1056 1408 1056 1696
            WIRE 1056 1696 1104 1696
            WIRE 1056 1696 1056 1856
            WIRE 1056 1856 1104 1856
            WIRE 1504 1376 1520 1376
            WIRE 1504 1376 1504 1408
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1344 1312 1520 1312
        END BRANCH
        INSTANCE U3 1104 1600 R0
        INSTANCE U4 1104 1760 R0
        INSTANCE U5 1104 1920 R0
        BEGIN BRANCH S
            WIRE 1776 1344 1968 1344
        END BRANCH
        INSTANCE U6 1536 1792 R0
        BEGIN BRANCH XLXN_7
            WIRE 1360 1504 1456 1504
            WIRE 1456 1504 1536 1504
            WIRE 1536 1504 1536 1600
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1360 1664 1536 1664
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1360 1824 1536 1824
            WIRE 1536 1728 1536 1824
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1792 1664 1952 1664
        END BRANCH
        IOMARKER 928 1280 A R180 28
        IOMARKER 928 1344 B R180 28
        IOMARKER 928 1408 C R180 28
        IOMARKER 1968 1344 S R0 28
        IOMARKER 1952 1664 CO R0 28
    END SHEET
END SCHEMATIC
