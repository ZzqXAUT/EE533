VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(55:0)
        SIGNAL amask(6:0)
        SIGNAL A(55:0)
        SIGNAL A(55:48)
        SIGNAL B(55:48)
        SIGNAL A(47:40)
        SIGNAL B(47:40)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL A(39:32)
        SIGNAL B(39:32)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL amask(3)
        SIGNAL amask(4)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL B(15:8)
        SIGNAL A(15:8)
        SIGNAL B(23:16)
        SIGNAL A(23:16)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL match
        PORT Input B(55:0)
        PORT Input amask(6:0)
        PORT Input A(55:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 1 30 2 57 18
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) A(47:40)
            PIN B(7:0) B(47:40)
            PIN EQ XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) A(39:32)
            PIN B(7:0) B(39:32)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN EQ XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) A(55:48)
            PIN B(7:0) B(55:48)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_25
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_26
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_7 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_27
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_31
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN EQ XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN EQ XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_30
            PIN O XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_28
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_29
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_15 and7
            PIN I0 XLXN_38
            PIN I1 XLXN_37
            PIN I2 XLXN_36
            PIN I3 XLXN_35
            PIN I4 XLXN_34
            PIN I5 XLXN_33
            PIN I6 XLXN_32
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 336 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 336 1744 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 336 2144 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 336 944 R0
        END INSTANCE
        BEGIN BRANCH B(55:0)
            WIRE 400 320 560 320
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 400 400 560 400
        END BRANCH
        BEGIN BRANCH A(55:0)
            WIRE 400 240 560 240
        END BRANCH
        INSTANCE XLXI_5 960 848 R0
        INSTANCE XLXI_6 960 1248 R0
        INSTANCE XLXI_7 960 1648 R0
        INSTANCE XLXI_8 960 2048 R0
        BEGIN INSTANCE XLXI_9 1536 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 1536 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 1536 1984 R0
        END INSTANCE
        INSTANCE XLXI_12 2160 1888 R0
        INSTANCE XLXI_13 2160 1408 R0
        INSTANCE XLXI_14 2160 928 R0
        BEGIN BRANCH A(55:48)
            WIRE 304 624 336 624
            BEGIN DISPLAY 304 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(55:48)
            WIRE 304 816 336 816
            BEGIN DISPLAY 304 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(47:40)
            WIRE 304 1024 336 1024
            BEGIN DISPLAY 304 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(47:40)
            WIRE 304 1216 336 1216
            BEGIN DISPLAY 304 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 928 784 960 784
            BEGIN DISPLAY 928 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 928 1184 960 1184
            BEGIN DISPLAY 928 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(39:32)
            WIRE 304 1424 336 1424
            BEGIN DISPLAY 304 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(39:32)
            WIRE 304 1616 336 1616
            BEGIN DISPLAY 304 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 304 1824 336 1824
            BEGIN DISPLAY 304 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 304 2016 336 2016
            BEGIN DISPLAY 304 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 928 1984 960 1984
            BEGIN DISPLAY 928 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 928 1584 960 1584
            BEGIN DISPLAY 928 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1504 1664 1536 1664
            BEGIN DISPLAY 1504 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1504 1856 1536 1856
            BEGIN DISPLAY 1504 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1504 1376 1536 1376
            BEGIN DISPLAY 1504 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1504 1184 1536 1184
            BEGIN DISPLAY 1504 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1504 896 1536 896
            BEGIN DISPLAY 1504 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1504 704 1536 704
            BEGIN DISPLAY 1504 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2128 864 2160 864
            BEGIN DISPLAY 2128 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2128 1344 2160 1344
            BEGIN DISPLAY 2128 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2128 1824 2160 1824
            BEGIN DISPLAY 2128 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 720 720 960 720
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 720 1120 960 1120
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 720 1520 960 1520
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1920 1280 2160 1280
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1920 800 2160 800
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1920 1760 2160 1760
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 720 1920 960 1920
        END BRANCH
        INSTANCE XLXI_15 2688 1568 R0
        BEGIN BRANCH XLXN_32
            WIRE 1216 752 1296 752
            WIRE 1296 576 1296 752
            WIRE 1296 576 2688 576
            WIRE 2688 576 2688 1120
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1216 1152 1296 1152
            WIRE 1296 1056 1296 1152
            WIRE 1296 1056 1984 1056
            WIRE 1984 1056 1984 1184
            WIRE 1984 1184 2688 1184
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1216 1552 1952 1552
            WIRE 1952 1248 1952 1552
            WIRE 1952 1248 2688 1248
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1216 1952 2480 1952
            WIRE 2480 1312 2480 1952
            WIRE 2480 1312 2688 1312
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2416 832 2544 832
            WIRE 2544 832 2544 1376
            WIRE 2544 1376 2688 1376
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2416 1312 2416 1440
            WIRE 2416 1440 2688 1440
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 2416 1792 2688 1792
            WIRE 2688 1504 2688 1792
        END BRANCH
        BEGIN BRANCH match
            WIRE 2944 1312 2976 1312
        END BRANCH
        IOMARKER 400 240 A(55:0) R180 28
        IOMARKER 400 320 B(55:0) R180 28
        IOMARKER 400 400 amask(6:0) R180 28
        IOMARKER 2976 1312 match R0 28
    END SHEET
END SCHEMATIC
