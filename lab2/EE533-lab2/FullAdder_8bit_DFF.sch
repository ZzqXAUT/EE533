VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_40
        SIGNAL XLXN_41(7:0)
        SIGNAL XLXN_45
        SIGNAL XLXN_47(7:0)
        SIGNAL XLXN_48(7:0)
        SIGNAL XLXN_49(7:0)
        SIGNAL XLXN_50(7:0)
        SIGNAL XLXN_51(7:0)
        SIGNAL XLXN_52(7:0)
        SIGNAL XLXN_53(7:0)
        SIGNAL A(7:0)
        SIGNAL XLXN_55(7:0)
        SIGNAL B(7:0)
        SIGNAL B_CLK(0)
        SIGNAL Cin
        SIGNAL A_CLK(1)
        SIGNAL B_CLK(1)
        SIGNAL XLXN_8
        SIGNAL A_CLK(2)
        SIGNAL B_CLK(2)
        SIGNAL XLXN_11
        SIGNAL A_CLK(3)
        SIGNAL B_CLK(3)
        SIGNAL A_CLK(4)
        SIGNAL B_CLK(4)
        SIGNAL XLXN_16
        SIGNAL A_CLK(5)
        SIGNAL B_CLK(5)
        SIGNAL XLXN_19
        SIGNAL A_CLK(6)
        SIGNAL B_CLK(6)
        SIGNAL XLXN_22
        SIGNAL A_CLK(7)
        SIGNAL B_CLK(7)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL Cout
        SIGNAL A_CLK(0)
        SIGNAL XLXN_90(7:0)
        SIGNAL XLXN_91(7:0)
        SIGNAL XLXN_92(7:0)
        SIGNAL XLXN_93(7:0)
        SIGNAL XLXN_94(7:0)
        SIGNAL XLXN_95(7:0)
        SIGNAL XLXN_96(7:0)
        SIGNAL CLK
        SIGNAL EN
        SIGNAL RST
        SIGNAL XLXN_100
        SIGNAL XLXN_101
        SIGNAL XLXN_102
        SIGNAL XLXN_108
        SIGNAL XLXN_109
        SIGNAL XLXN_110
        BEGIN SIGNAL A_CLK(7:0)
        END SIGNAL
        BEGIN SIGNAL B_CLK(7:0)
        END SIGNAL
        SIGNAL S(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input Cin
        PORT Output Cout
        PORT Input CLK
        PORT Input EN
        PORT Input RST
        PORT Output S(7:0)
        BEGIN BLOCKDEF FullAdder_1bit
            TIMESTAMP 2026 1 24 0 22 57
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_16 fd8ce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D(7:0) A(7:0)
            PIN Q(7:0) A_CLK(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 fd8ce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D(7:0) B(7:0)
            PIN Q(7:0) B_CLK(7:0)
        END BLOCK
        BEGIN BLOCK U0 FullAdder_1bit
            PIN A A_CLK(0)
            PIN B B_CLK(0)
            PIN C Cin
            PIN S S(0)
            PIN CO XLXN_8
        END BLOCK
        BEGIN BLOCK U1 FullAdder_1bit
            PIN A A_CLK(1)
            PIN B B_CLK(1)
            PIN C XLXN_8
            PIN S S(1)
            PIN CO XLXN_11
        END BLOCK
        BEGIN BLOCK U2 FullAdder_1bit
            PIN A A_CLK(2)
            PIN B B_CLK(2)
            PIN C XLXN_11
            PIN S S(2)
            PIN CO XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_11 FullAdder_1bit
            PIN A A_CLK(3)
            PIN B B_CLK(3)
            PIN C XLXN_26
            PIN S S(3)
            PIN CO XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_12 FullAdder_1bit
            PIN A A_CLK(4)
            PIN B B_CLK(4)
            PIN C XLXN_16
            PIN S S(4)
            PIN CO XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_13 FullAdder_1bit
            PIN A A_CLK(5)
            PIN B B_CLK(5)
            PIN C XLXN_19
            PIN S S(5)
            PIN CO XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_14 FullAdder_1bit
            PIN A A_CLK(6)
            PIN B B_CLK(6)
            PIN C XLXN_22
            PIN S S(6)
            PIN CO XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_15 FullAdder_1bit
            PIN A A_CLK(7)
            PIN B B_CLK(7)
            PIN C XLXN_25
            PIN S S(7)
            PIN CO Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 656 1184 880 1184
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 656 1520 880 1520
        END BRANCH
        BEGIN INSTANCE U0 1664 1520 R270
        END INSTANCE
        BEGIN INSTANCE U1 1904 1520 R270
        END INSTANCE
        BEGIN INSTANCE U2 2144 1520 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_11 2384 1520 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_12 2624 1520 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_13 2864 1520 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_14 3104 1520 R270
        END INSTANCE
        BEGIN BRANCH B_CLK(0)
            WIRE 1568 1520 1568 1600
            BEGIN DISPLAY 1568 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1632 1520 1632 1600
        END BRANCH
        BEGIN BRANCH A_CLK(1)
            WIRE 1744 1520 1744 1600
            BEGIN DISPLAY 1744 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(1)
            WIRE 1808 1520 1808 1600
            BEGIN DISPLAY 1808 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1632 1120 1632 1136
            WIRE 1632 1120 1696 1120
            WIRE 1696 1120 1696 1760
            WIRE 1696 1760 1872 1760
            WIRE 1872 1520 1872 1760
        END BRANCH
        BEGIN BRANCH A_CLK(2)
            WIRE 1984 1520 1984 1600
            BEGIN DISPLAY 1984 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(2)
            WIRE 2048 1520 2048 1600
            BEGIN DISPLAY 2048 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1872 1120 1872 1136
            WIRE 1872 1120 1936 1120
            WIRE 1936 1120 1936 1760
            WIRE 1936 1760 2112 1760
            WIRE 2112 1520 2112 1760
        END BRANCH
        BEGIN BRANCH A_CLK(3)
            WIRE 2224 1520 2224 1600
            BEGIN DISPLAY 2224 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(3)
            WIRE 2288 1520 2288 1600
            BEGIN DISPLAY 2288 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_CLK(4)
            WIRE 2464 1520 2464 1600
            BEGIN DISPLAY 2464 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(4)
            WIRE 2528 1520 2528 1600
            BEGIN DISPLAY 2528 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2352 1120 2352 1136
            WIRE 2352 1120 2416 1120
            WIRE 2416 1120 2416 1760
            WIRE 2416 1760 2592 1760
            WIRE 2592 1520 2592 1760
        END BRANCH
        BEGIN BRANCH A_CLK(5)
            WIRE 2704 1520 2704 1600
            BEGIN DISPLAY 2704 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(5)
            WIRE 2768 1520 2768 1600
            BEGIN DISPLAY 2768 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 2592 1120 2592 1136
            WIRE 2592 1120 2656 1120
            WIRE 2656 1120 2656 1760
            WIRE 2656 1760 2832 1760
            WIRE 2832 1520 2832 1760
        END BRANCH
        BEGIN BRANCH A_CLK(6)
            WIRE 2944 1520 2944 1600
            BEGIN DISPLAY 2944 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(6)
            WIRE 3008 1520 3008 1600
            BEGIN DISPLAY 3008 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 2832 1120 2832 1136
            WIRE 2832 1120 2896 1120
            WIRE 2896 1120 2896 1760
            WIRE 2896 1760 3072 1760
            WIRE 3072 1520 3072 1760
        END BRANCH
        BEGIN INSTANCE XLXI_15 3344 1520 R270
        END INSTANCE
        BEGIN BRANCH A_CLK(7)
            WIRE 3184 1520 3184 1600
            BEGIN DISPLAY 3184 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(7)
            WIRE 3248 1520 3248 1600
            BEGIN DISPLAY 3248 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 3072 1120 3072 1136
            WIRE 3072 1120 3136 1120
            WIRE 3136 1120 3136 1760
            WIRE 3136 1760 3312 1760
            WIRE 3312 1520 3312 1760
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2112 1120 2112 1136
            WIRE 2112 1120 2176 1120
            WIRE 2176 1120 2176 1760
            WIRE 2176 1760 2352 1760
            WIRE 2352 1520 2352 1760
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1504 1104 1504 1136
            BEGIN DISPLAY 1504 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1744 1104 1744 1136
            BEGIN DISPLAY 1744 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1984 1104 1984 1136
            BEGIN DISPLAY 1984 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 2224 1104 2224 1136
            BEGIN DISPLAY 2224 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 2464 1104 2464 1136
            BEGIN DISPLAY 2464 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 2704 1104 2704 1136
            BEGIN DISPLAY 2704 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2944 1104 2944 1136
            BEGIN DISPLAY 2944 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 3184 1104 3184 1136
            BEGIN DISPLAY 3184 1104 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 3312 1104 3312 1136
        END BRANCH
        BEGIN BRANCH A_CLK(0)
            WIRE 1504 1520 1504 1600
            BEGIN DISPLAY 1504 1600 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 3312 1104 Cout R270 28
        IOMARKER 1632 1600 Cin R90 28
        INSTANCE XLXI_16 880 1440 R0
        IOMARKER 656 1520 B(7:0) R180 28
        IOMARKER 656 1184 A(7:0) R180 28
        BEGIN BRANCH EN
            WIRE 576 1680 800 1680
            WIRE 800 1248 880 1248
            WIRE 800 1248 800 1584
            WIRE 800 1584 800 1680
            WIRE 800 1584 880 1584
        END BRANCH
        IOMARKER 576 1600 CLK R180 28
        IOMARKER 576 1680 EN R180 28
        BEGIN BRANCH CLK
            WIRE 576 1600 736 1600
            WIRE 736 1600 736 1648
            WIRE 736 1648 880 1648
            WIRE 736 1312 880 1312
            WIRE 736 1312 736 1600
        END BRANCH
        INSTANCE XLXI_17 880 1776 R0
        BEGIN BRANCH RST
            WIRE 592 1744 848 1744
            WIRE 848 1744 880 1744
            WIRE 848 1408 880 1408
            WIRE 848 1408 848 1744
        END BRANCH
        IOMARKER 592 1744 RST R180 28
        BEGIN BRANCH A_CLK(7:0)
            WIRE 1264 1184 1296 1184
            BEGIN DISPLAY 1296 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(7:0)
            WIRE 1264 1520 1296 1520
            BEGIN DISPLAY 1296 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1232 1808 1472 1808
        END BRANCH
        IOMARKER 1472 1808 S(7:0) R0 28
    END SHEET
END SCHEMATIC
