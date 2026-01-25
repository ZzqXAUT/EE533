VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_14
        SIGNAL XLXN_17
        SIGNAL XLXN_32
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_57(7:0)
        SIGNAL XLXN_58
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL B(0)
        SIGNAL Cin
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL XLXN_8
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL XLXN_11
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL XLXN_20
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL XLXN_23
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL XLXN_26
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL XLXN_29
        SIGNAL XLXN_34
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL Cout
        SIGNAL A(0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF FullAdder_1bit
            TIMESTAMP 2026 1 24 0 22 57
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK U0 FullAdder_1bit
            PIN A A(0)
            PIN B B(0)
            PIN C Cin
            PIN S S(0)
            PIN CO XLXN_8
        END BLOCK
        BEGIN BLOCK U1 FullAdder_1bit
            PIN A A(1)
            PIN B B(1)
            PIN C XLXN_8
            PIN S S(1)
            PIN CO XLXN_11
        END BLOCK
        BEGIN BLOCK U2 FullAdder_1bit
            PIN A A(2)
            PIN B B(2)
            PIN C XLXN_11
            PIN S S(2)
            PIN CO XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_11 FullAdder_1bit
            PIN A A(3)
            PIN B B(3)
            PIN C XLXN_34
            PIN S S(3)
            PIN CO XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_12 FullAdder_1bit
            PIN A A(4)
            PIN B B(4)
            PIN C XLXN_20
            PIN S S(4)
            PIN CO XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_13 FullAdder_1bit
            PIN A A(5)
            PIN B B(5)
            PIN C XLXN_23
            PIN S S(5)
            PIN CO XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_14 FullAdder_1bit
            PIN A A(6)
            PIN B B(6)
            PIN C XLXN_26
            PIN S S(6)
            PIN CO XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_15 FullAdder_1bit
            PIN A A(7)
            PIN B B(7)
            PIN C XLXN_29
            PIN S S(7)
            PIN CO Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 1216 320 1456 320
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1216 400 1456 400
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1216 480 1456 480
        END BRANCH
        IOMARKER 1216 320 A(7:0) R180 28
        IOMARKER 1216 400 B(7:0) R180 28
        IOMARKER 1456 480 S(7:0) R0 28
        BEGIN INSTANCE U0 1296 1056 R270
        END INSTANCE
        BEGIN INSTANCE U1 1536 1056 R270
        END INSTANCE
        BEGIN INSTANCE U2 1776 1056 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_11 2016 1056 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_12 2256 1056 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_13 2496 1056 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_14 2736 1056 R270
        END INSTANCE
        BEGIN BRANCH B(0)
            WIRE 1200 1056 1200 1136
            BEGIN DISPLAY 1200 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1264 1056 1264 1136
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1376 1056 1376 1136
            BEGIN DISPLAY 1376 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1440 1056 1440 1136
            BEGIN DISPLAY 1440 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1264 656 1264 672
            WIRE 1264 656 1328 656
            WIRE 1328 656 1328 1296
            WIRE 1328 1296 1504 1296
            WIRE 1504 1056 1504 1296
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1616 1056 1616 1136
            BEGIN DISPLAY 1616 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1680 1056 1680 1136
            BEGIN DISPLAY 1680 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1504 656 1504 672
            WIRE 1504 656 1568 656
            WIRE 1568 656 1568 1296
            WIRE 1568 1296 1744 1296
            WIRE 1744 1056 1744 1296
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1856 1056 1856 1136
            BEGIN DISPLAY 1856 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1920 1056 1920 1136
            BEGIN DISPLAY 1920 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 2096 1056 2096 1136
            BEGIN DISPLAY 2096 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 2160 1056 2160 1136
            BEGIN DISPLAY 2160 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1984 656 1984 672
            WIRE 1984 656 2048 656
            WIRE 2048 656 2048 1296
            WIRE 2048 1296 2224 1296
            WIRE 2224 1056 2224 1296
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 2336 1056 2336 1136
            BEGIN DISPLAY 2336 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 2400 1056 2400 1136
            BEGIN DISPLAY 2400 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 2224 656 2224 672
            WIRE 2224 656 2288 656
            WIRE 2288 656 2288 1296
            WIRE 2288 1296 2464 1296
            WIRE 2464 1056 2464 1296
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 2576 1056 2576 1136
            BEGIN DISPLAY 2576 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 2640 1056 2640 1136
            BEGIN DISPLAY 2640 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2464 656 2464 672
            WIRE 2464 656 2528 656
            WIRE 2528 656 2528 1296
            WIRE 2528 1296 2704 1296
            WIRE 2704 1056 2704 1296
        END BRANCH
        BEGIN INSTANCE XLXI_15 2976 1056 R270
        END INSTANCE
        BEGIN BRANCH A(7)
            WIRE 2816 1056 2816 1136
            BEGIN DISPLAY 2816 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2880 1056 2880 1136
            BEGIN DISPLAY 2880 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 2704 656 2704 672
            WIRE 2704 656 2768 656
            WIRE 2768 656 2768 1296
            WIRE 2768 1296 2944 1296
            WIRE 2944 1056 2944 1296
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1744 656 1744 672
            WIRE 1744 656 1808 656
            WIRE 1808 656 1808 1296
            WIRE 1808 1296 1984 1296
            WIRE 1984 1056 1984 1296
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1136 640 1136 672
            BEGIN DISPLAY 1136 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1376 640 1376 672
            BEGIN DISPLAY 1376 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1616 640 1616 672
            BEGIN DISPLAY 1616 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1856 640 1856 672
            BEGIN DISPLAY 1856 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 2096 640 2096 672
            BEGIN DISPLAY 2096 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 2336 640 2336 672
            BEGIN DISPLAY 2336 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2576 640 2576 672
            BEGIN DISPLAY 2576 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2816 640 2816 672
            BEGIN DISPLAY 2816 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2944 640 2944 672
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 1136 1056 1136 1136
            BEGIN DISPLAY 1136 1136 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2944 640 Cout R270 28
        IOMARKER 1264 1136 Cin R90 28
    END SHEET
END SCHEMATIC
