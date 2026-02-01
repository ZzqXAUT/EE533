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
        BEGIN SIGNAL A(55:48)
        END SIGNAL
        BEGIN SIGNAL B(55:48)
        END SIGNAL
        BEGIN SIGNAL A(47:40)
        END SIGNAL
        BEGIN SIGNAL B(47:40)
        END SIGNAL
        BEGIN SIGNAL amask(6)
        END SIGNAL
        BEGIN SIGNAL amask(5)
        END SIGNAL
        BEGIN SIGNAL A(39:32)
        END SIGNAL
        BEGIN SIGNAL B(39:32)
        END SIGNAL
        BEGIN SIGNAL A(31:24)
        END SIGNAL
        BEGIN SIGNAL B(31:24)
        END SIGNAL
        BEGIN SIGNAL amask(3)
        END SIGNAL
        BEGIN SIGNAL amask(4)
        END SIGNAL
        BEGIN SIGNAL A(7:0)
        END SIGNAL
        BEGIN SIGNAL B(7:0)
        END SIGNAL
        BEGIN SIGNAL B(15:8)
        END SIGNAL
        BEGIN SIGNAL A(15:8)
        END SIGNAL
        BEGIN SIGNAL B(23:16)
        END SIGNAL
        BEGIN SIGNAL A(23:16)
        END SIGNAL
        BEGIN SIGNAL amask(2)
        END SIGNAL
        BEGIN SIGNAL amask(1)
        END SIGNAL
        BEGIN SIGNAL amask(0)
        END SIGNAL
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
        SIGNAL XLXN_39
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
            PIN A(7:0) A(55:48)
            PIN B(7:0) B(55:48)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) A(47:40)
            PIN B(7:0) B(47:40)
            PIN EQ XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) A(39:32)
            PIN B(7:0) B(39:32)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN EQ XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN EQ XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN EQ XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_25
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_26
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_27
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_31
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_30
            PIN O XLXN_39
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
            PIN I0 XLXN_39
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
        BEGIN INSTANCE XLXI_2 736 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 736 1824 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 736 2224 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 736 1024 R0
        END INSTANCE
        BEGIN BRANCH B(55:0)
            WIRE 800 400 960 400
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 800 480 960 480
        END BRANCH
        BEGIN BRANCH A(55:0)
            WIRE 800 320 960 320
        END BRANCH
        IOMARKER 800 320 A(55:0) R180 28
        IOMARKER 800 400 B(55:0) R180 28
        IOMARKER 800 480 amask(6:0) R180 28
        INSTANCE XLXI_8 1360 928 R0
        INSTANCE XLXI_9 1360 1328 R0
        INSTANCE XLXI_10 1360 1728 R0
        INSTANCE XLXI_11 1360 2128 R0
        BEGIN INSTANCE XLXI_5 1936 1104 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1936 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1936 2064 R0
        END INSTANCE
        INSTANCE XLXI_12 2560 1968 R0
        INSTANCE XLXI_13 2560 1488 R0
        INSTANCE XLXI_14 2560 1008 R0
        BEGIN BRANCH A(55:48)
            WIRE 704 704 736 704
            BEGIN DISPLAY 704 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(55:48)
            WIRE 704 896 736 896
            BEGIN DISPLAY 704 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(47:40)
            WIRE 704 1104 736 1104
            BEGIN DISPLAY 704 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(47:40)
            WIRE 704 1296 736 1296
            BEGIN DISPLAY 704 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 1328 864 1360 864
            BEGIN DISPLAY 1328 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1328 1264 1360 1264
            BEGIN DISPLAY 1328 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(39:32)
            WIRE 704 1504 736 1504
            BEGIN DISPLAY 704 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(39:32)
            WIRE 704 1696 736 1696
            BEGIN DISPLAY 704 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 704 1904 736 1904
            BEGIN DISPLAY 704 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 704 2096 736 2096
            BEGIN DISPLAY 704 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1328 2064 1360 2064
            BEGIN DISPLAY 1328 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1328 1664 1360 1664
            BEGIN DISPLAY 1328 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1904 1744 1936 1744
            BEGIN DISPLAY 1904 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1904 1936 1936 1936
            BEGIN DISPLAY 1904 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1904 1456 1936 1456
            BEGIN DISPLAY 1904 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1904 1264 1936 1264
            BEGIN DISPLAY 1904 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1904 976 1936 976
            BEGIN DISPLAY 1904 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1904 784 1936 784
            BEGIN DISPLAY 1904 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2528 944 2560 944
            BEGIN DISPLAY 2528 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2528 1424 2560 1424
            BEGIN DISPLAY 2528 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2528 1904 2560 1904
            BEGIN DISPLAY 2528 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1120 800 1360 800
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1120 1200 1360 1200
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1120 1600 1360 1600
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 2320 1360 2560 1360
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 2320 880 2560 880
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 2320 1840 2560 1840
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1120 2000 1360 2000
        END BRANCH
        INSTANCE XLXI_15 3088 1648 R0
        BEGIN BRANCH XLXN_32
            WIRE 1616 832 1696 832
            WIRE 1696 656 1696 832
            WIRE 1696 656 3088 656
            WIRE 3088 656 3088 1200
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1616 1232 1696 1232
            WIRE 1696 1136 1696 1232
            WIRE 1696 1136 2384 1136
            WIRE 2384 1136 2384 1264
            WIRE 2384 1264 3088 1264
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1616 1632 2352 1632
            WIRE 2352 1328 2352 1632
            WIRE 2352 1328 3088 1328
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1616 2032 2880 2032
            WIRE 2880 1392 2880 2032
            WIRE 2880 1392 3088 1392
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2816 912 2944 912
            WIRE 2944 912 2944 1456
            WIRE 2944 1456 3088 1456
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2816 1392 2816 1520
            WIRE 2816 1520 3088 1520
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 2816 1872 3088 1872
            WIRE 3088 1584 3088 1872
        END BRANCH
        BEGIN BRANCH match
            WIRE 3344 1392 3376 1392
        END BRANCH
        IOMARKER 3376 1392 match R0 28
    END SHEET
END SCHEMATIC
