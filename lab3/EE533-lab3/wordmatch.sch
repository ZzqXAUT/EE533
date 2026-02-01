VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL detain(111:0)
        BEGIN SIGNAL detain(55:0)
        END SIGNAL
        BEGIN SIGNAL detain(63:8)
        END SIGNAL
        BEGIN SIGNAL detain(71:16)
        END SIGNAL
        BEGIN SIGNAL detain(87:32)
        END SIGNAL
        BEGIN SIGNAL detain(79:24)
        END SIGNAL
        BEGIN SIGNAL detain(103:48)
        END SIGNAL
        BEGIN SIGNAL detain(95:40)
        END SIGNAL
        BEGIN SIGNAL detain(111:56)
        END SIGNAL
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL XLXN_16(55:0)
        SIGNAL XLXN_17(55:0)
        SIGNAL XLXN_18(55:0)
        SIGNAL XLXN_19(55:0)
        SIGNAL XLXN_20(55:0)
        SIGNAL XLXN_21
        SIGNAL XLXN_22(55:0)
        SIGNAL XLXN_23(55:0)
        SIGNAL XLXN_24(6:0)
        SIGNAL XLXN_25(6:0)
        SIGNAL XLXN_26(6:0)
        SIGNAL XLXN_27(6:0)
        SIGNAL XLXN_28(6:0)
        SIGNAL XLXN_29(6:0)
        SIGNAL XLXN_30(6:0)
        SIGNAL XLXN_31(6:0)
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL match
        PORT Input detain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 31 8 34 18
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN B(55:0) detain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN B(55:0) detain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN B(55:0) detain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN B(55:0) detain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN B(55:0) detain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN B(55:0) detain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN B(55:0) detain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN B(55:0) detain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN A(55:0) datacomp(55:0)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_39
            PIN I1 XLXN_38
            PIN I2 XLXN_37
            PIN I3 XLXN_36
            PIN I4 XLXN_35
            PIN I5 XLXN_34
            PIN I6 XLXN_33
            PIN I7 XLXN_32
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_6 896 2352 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 896 2592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 896 2112 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 896 1872 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 896 1632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 896 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 896 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 896 912 R0
        END INSTANCE
        BEGIN BRANCH detain(111:0)
            WIRE 960 560 1120 560
        END BRANCH
        IOMARKER 960 560 detain(111:0) R180 28
        BEGIN BRANCH detain(55:0)
            WIRE 864 752 896 752
            BEGIN DISPLAY 864 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(63:8)
            WIRE 864 992 896 992
            BEGIN DISPLAY 864 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(71:16)
            WIRE 864 1232 896 1232
            BEGIN DISPLAY 864 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(87:32)
            WIRE 864 1712 896 1712
            BEGIN DISPLAY 864 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(79:24)
            WIRE 864 1472 896 1472
            BEGIN DISPLAY 864 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(103:48)
            WIRE 864 2192 896 2192
            BEGIN DISPLAY 864 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(95:40)
            WIRE 864 1952 896 1952
            BEGIN DISPLAY 864 1952 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH detain(111:56)
            WIRE 864 2432 896 2432
            BEGIN DISPLAY 864 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1600 1872 R0
        BEGIN BRANCH datacomp(55:0)
            WIRE 320 720 560 720
            WIRE 560 720 560 880
            WIRE 560 880 896 880
            WIRE 560 880 560 1120
            WIRE 560 1120 896 1120
            WIRE 560 1120 560 1360
            WIRE 560 1360 896 1360
            WIRE 560 1360 560 1600
            WIRE 560 1600 896 1600
            WIRE 560 1600 560 1840
            WIRE 560 1840 896 1840
            WIRE 560 1840 560 2080
            WIRE 560 2080 560 2320
            WIRE 560 2320 896 2320
            WIRE 560 2320 560 2560
            WIRE 560 2560 896 2560
            WIRE 560 2080 896 2080
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 320 800 640 800
            WIRE 640 800 640 816
            WIRE 640 816 896 816
            WIRE 640 816 640 1056
            WIRE 640 1056 896 1056
            WIRE 640 1056 640 1296
            WIRE 640 1296 896 1296
            WIRE 640 1296 640 1536
            WIRE 640 1536 896 1536
            WIRE 640 1536 640 1776
            WIRE 640 1776 896 1776
            WIRE 640 1776 640 2016
            WIRE 640 2016 896 2016
            WIRE 640 2016 640 2256
            WIRE 640 2256 896 2256
            WIRE 640 2256 640 2496
            WIRE 640 2496 896 2496
        END BRANCH
        IOMARKER 320 720 datacomp(55:0) R180 28
        IOMARKER 320 800 wildcard(6:0) R180 28
        BEGIN BRANCH XLXN_32
            WIRE 1280 752 1440 752
            WIRE 1440 752 1440 1360
            WIRE 1440 1360 1600 1360
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1280 992 1424 992
            WIRE 1424 992 1424 1424
            WIRE 1424 1424 1600 1424
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1280 1232 1408 1232
            WIRE 1408 1232 1408 1488
            WIRE 1408 1488 1600 1488
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1280 1472 1392 1472
            WIRE 1392 1472 1392 1552
            WIRE 1392 1552 1600 1552
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1280 1712 1440 1712
            WIRE 1440 1616 1440 1712
            WIRE 1440 1616 1600 1616
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1280 1952 1456 1952
            WIRE 1456 1680 1456 1952
            WIRE 1456 1680 1600 1680
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1280 2192 1472 2192
            WIRE 1472 1744 1472 2192
            WIRE 1472 1744 1600 1744
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1280 2432 1600 2432
            WIRE 1600 1808 1600 2432
        END BRANCH
        BEGIN BRANCH match
            WIRE 1856 1584 1888 1584
        END BRANCH
        IOMARKER 1888 1584 match R0 28
    END SHEET
END SCHEMATIC
