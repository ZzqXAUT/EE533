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
        SIGNAL XLXN_3
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
        INSTANCE U1 624 1632 R0
        BEGIN BRANCH A
            WIRE 464 1504 496 1504
            WIRE 496 1504 624 1504
            WIRE 496 1504 496 1696
            WIRE 496 1696 640 1696
            WIRE 496 1696 496 1856
            WIRE 496 1856 640 1856
        END BRANCH
        BEGIN BRANCH B
            WIRE 464 1568 544 1568
            WIRE 544 1568 624 1568
            WIRE 544 1568 544 1760
            WIRE 544 1760 640 1760
            WIRE 544 1760 544 2016
            WIRE 544 2016 640 2016
        END BRANCH
        INSTANCE U2 1056 1664 R0
        BEGIN BRANCH C
            WIRE 464 1632 592 1632
            WIRE 592 1632 1040 1632
            WIRE 592 1632 592 1920
            WIRE 592 1920 640 1920
            WIRE 592 1920 592 2080
            WIRE 592 2080 640 2080
            WIRE 1040 1600 1056 1600
            WIRE 1040 1600 1040 1632
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 880 1536 1056 1536
        END BRANCH
        INSTANCE U3 640 1824 R0
        INSTANCE U4 640 1984 R0
        INSTANCE U5 640 2144 R0
        BEGIN BRANCH S
            WIRE 1312 1568 1504 1568
        END BRANCH
        INSTANCE U6 1072 2016 R0
        BEGIN BRANCH XLXN_7
            WIRE 896 1728 992 1728
            WIRE 992 1728 1072 1728
            WIRE 1072 1728 1072 1824
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 896 1888 1072 1888
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 896 2048 1072 2048
            WIRE 1072 1952 1072 2048
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1328 1888 1488 1888
        END BRANCH
        IOMARKER 464 1504 A R180 28
        IOMARKER 464 1568 B R180 28
        IOMARKER 464 1632 C R180 28
        IOMARKER 1504 1568 S R0 28
        IOMARKER 1488 1888 CO R0 28
    END SHEET
END SCHEMATIC
