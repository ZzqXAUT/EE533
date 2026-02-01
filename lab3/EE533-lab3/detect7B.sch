VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        BEGIN SIGNAL pipe0(71:0)
        END SIGNAL
        SIGNAL CE
        SIGNAL CLK
        BEGIN SIGNAL pipe0(47:0)
        END SIGNAL
        BEGIN SIGNAL pipe1(63:0)
        END SIGNAL
        SIGNAL XLXN_9(111:0)
        BEGIN SIGNAL hwregA(55:0)
        END SIGNAL
        BEGIN SIGNAL hwregA(62:56)
        END SIGNAL
        SIGNAL mrst
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL match_en
        SIGNAL XLXN_17
        SIGNAL match
        SIGNAL XLXN_19
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input CE
        PORT Input CLK
        PORT Input mrst
        PORT Input match_en
        PORT Output match
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 31 8 44 4
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 31 8 32 24
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 31 8 43 40
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_9(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 reg9B
            PIN D(71:0) pipe1(71:0)
            PIN CE CE
            PIN CLK CLK
            PIN CLR XLXN_14
            PIN Q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN detain(111:0) XLXN_9(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C CLK
            PIN CE XLXN_17
            PIN CLR XLXN_14
            PIN D XLXN_17
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C CLK
            PIN D mrst
            PIN Q XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_6 and3b1
            PIN I0 match
            PIN I1 XLXN_15
            PIN I2 match_en
            PIN O XLXN_17
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 736 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 736 976 R0
        END INSTANCE
        INSTANCE XLXI_5 1696 1680 R0
        INSTANCE XLXI_4 2352 1248 R0
        BEGIN BRANCH hwregA(63:0)
            WIRE 800 480 960 480
        END BRANCH
        IOMARKER 800 480 hwregA(63:0) R180 28
        BEGIN BRANCH pipe1(71:0)
            WIRE 704 752 736 752
        END BRANCH
        IOMARKER 704 752 pipe1(71:0) R180 28
        BEGIN BRANCH pipe0(71:0)
            WIRE 1120 752 1152 752
            BEGIN DISPLAY 1152 752 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 704 816 736 816
        END BRANCH
        IOMARKER 704 816 CE R180 28
        BEGIN BRANCH CLK
            WIRE 704 880 720 880
            WIRE 720 880 736 880
            WIRE 720 880 720 1040
            WIRE 720 1040 720 1552
            WIRE 720 1552 1696 1552
            WIRE 720 1040 2256 1040
            WIRE 2256 1040 2256 1120
            WIRE 2256 1120 2352 1120
        END BRANCH
        IOMARKER 704 880 CLK R180 28
        BEGIN BRANCH pipe0(47:0)
            WIRE 560 1152 736 1152
            BEGIN DISPLAY 560 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 560 1216 736 1216
            BEGIN DISPLAY 560 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_3 1392 1312 R0
        END INSTANCE
        BEGIN BRANCH XLXN_9(111:0)
            WIRE 1120 1152 1392 1152
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1360 1216 1392 1216
            BEGIN DISPLAY 1360 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1360 1280 1392 1280
            BEGIN DISPLAY 1360 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1664 1424 1696 1424
        END BRANCH
        IOMARKER 1664 1424 mrst R180 28
        BEGIN BRANCH XLXN_14
            WIRE 640 944 736 944
            WIRE 640 944 640 1680
            WIRE 640 1680 2352 1680
            WIRE 2080 1424 2352 1424
            WIRE 2352 1424 2352 1680
            WIRE 2352 1216 2352 1424
        END BRANCH
        INSTANCE XLXI_6 1968 1280 R0
        BEGIN BRANCH XLXN_15
            WIRE 1776 1152 1968 1152
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1936 1088 1968 1088
        END BRANCH
        IOMARKER 1936 1088 match_en R180 28
        BEGIN BRANCH XLXN_17
            WIRE 2224 1152 2288 1152
            WIRE 2288 992 2352 992
            WIRE 2288 992 2288 1056
            WIRE 2288 1056 2288 1152
            WIRE 2288 1056 2352 1056
        END BRANCH
        BEGIN BRANCH match
            WIRE 1952 800 1968 800
            WIRE 1968 800 2768 800
            WIRE 2768 800 2768 992
            WIRE 2768 992 2832 992
            WIRE 1952 800 1952 1216
            WIRE 1952 1216 1968 1216
            WIRE 2736 992 2752 992
            WIRE 2752 992 2768 992
        END BRANCH
        IOMARKER 2832 992 match R0 28
    END SHEET
END SCHEMATIC
