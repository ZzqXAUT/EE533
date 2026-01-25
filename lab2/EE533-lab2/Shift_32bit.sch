VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(9)
        SIGNAL S(8)
        SIGNAL S(10)
        SIGNAL S(11)
        SIGNAL S(12)
        SIGNAL S(14)
        SIGNAL S(15)
        SIGNAL S(13)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL in1(31:0)
        SIGNAL S(24)
        SIGNAL S(25)
        SIGNAL S(26)
        SIGNAL S(27)
        SIGNAL S(28)
        SIGNAL S(29)
        SIGNAL S(30)
        SIGNAL S(31)
        SIGNAL S(23)
        SIGNAL S(22)
        SIGNAL S(21)
        SIGNAL S(20)
        SIGNAL S(19)
        SIGNAL S(18)
        SIGNAL S(17)
        SIGNAL S(16)
        SIGNAL CE
        SIGNAL XLXN_106
        SIGNAL in1(28)
        SIGNAL in1(27)
        SIGNAL in1(26)
        SIGNAL in1(25)
        SIGNAL in1(24)
        SIGNAL in1(23)
        SIGNAL in1(22)
        SIGNAL in1(21)
        SIGNAL in1(20)
        SIGNAL in1(19)
        SIGNAL in1(18)
        SIGNAL in1(17)
        SIGNAL in1(16)
        SIGNAL in1(15)
        SIGNAL in1(14)
        SIGNAL in1(13)
        SIGNAL in1(12)
        SIGNAL in1(11)
        SIGNAL in1(10)
        SIGNAL in1(9)
        SIGNAL in1(8)
        SIGNAL in1(7)
        SIGNAL in1(6)
        SIGNAL in1(5)
        SIGNAL in1(4)
        SIGNAL in1(3)
        SIGNAL in1(2)
        SIGNAL in1(1)
        SIGNAL in1(0)
        SIGNAL in1(31)
        SIGNAL XLXN_173
        SIGNAL in1(29)
        SIGNAL in1(30)
        SIGNAL S(31:0)
        PORT Input in1(31:0)
        PORT Input CE
        PORT Output S(31:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 in1(29)
            PIN D1 in1(31)
            PIN S0 CE
            PIN O S(30)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 in1(28)
            PIN D1 in1(30)
            PIN S0 CE
            PIN O S(29)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 in1(27)
            PIN D1 in1(29)
            PIN S0 CE
            PIN O S(28)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 in1(26)
            PIN D1 in1(28)
            PIN S0 CE
            PIN O S(27)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 in1(25)
            PIN D1 in1(27)
            PIN S0 CE
            PIN O S(26)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 in1(24)
            PIN D1 in1(26)
            PIN S0 CE
            PIN O S(25)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 in1(23)
            PIN D1 in1(25)
            PIN S0 CE
            PIN O S(24)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 in1(13)
            PIN D1 in1(15)
            PIN S0 CE
            PIN O S(14)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 in1(12)
            PIN D1 in1(14)
            PIN S0 CE
            PIN O S(13)
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 in1(11)
            PIN D1 in1(13)
            PIN S0 CE
            PIN O S(12)
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 in1(10)
            PIN D1 in1(12)
            PIN S0 CE
            PIN O S(11)
        END BLOCK
        BEGIN BLOCK XLXI_12 m2_1
            PIN D0 in1(9)
            PIN D1 in1(11)
            PIN S0 CE
            PIN O S(10)
        END BLOCK
        BEGIN BLOCK XLXI_13 m2_1
            PIN D0 in1(8)
            PIN D1 in1(10)
            PIN S0 CE
            PIN O S(9)
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_1
            PIN D0 in1(7)
            PIN D1 in1(9)
            PIN S0 CE
            PIN O S(8)
        END BLOCK
        BEGIN BLOCK XLXI_15 m2_1
            PIN D0 in1(21)
            PIN D1 in1(23)
            PIN S0 CE
            PIN O S(22)
        END BLOCK
        BEGIN BLOCK XLXI_16 m2_1
            PIN D0 in1(20)
            PIN D1 in1(22)
            PIN S0 CE
            PIN O S(21)
        END BLOCK
        BEGIN BLOCK XLXI_17 m2_1
            PIN D0 in1(19)
            PIN D1 in1(21)
            PIN S0 CE
            PIN O S(20)
        END BLOCK
        BEGIN BLOCK XLXI_18 m2_1
            PIN D0 in1(18)
            PIN D1 in1(20)
            PIN S0 CE
            PIN O S(19)
        END BLOCK
        BEGIN BLOCK XLXI_19 m2_1
            PIN D0 in1(17)
            PIN D1 in1(19)
            PIN S0 CE
            PIN O S(18)
        END BLOCK
        BEGIN BLOCK XLXI_20 m2_1
            PIN D0 in1(16)
            PIN D1 in1(18)
            PIN S0 CE
            PIN O S(17)
        END BLOCK
        BEGIN BLOCK XLXI_21 m2_1
            PIN D0 in1(6)
            PIN D1 in1(8)
            PIN S0 CE
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_22 m2_1
            PIN D0 in1(5)
            PIN D1 in1(7)
            PIN S0 CE
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_23 m2_1
            PIN D0 in1(4)
            PIN D1 in1(6)
            PIN S0 CE
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_24 m2_1
            PIN D0 in1(3)
            PIN D1 in1(5)
            PIN S0 CE
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_25 m2_1
            PIN D0 in1(2)
            PIN D1 in1(4)
            PIN S0 CE
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_26 m2_1
            PIN D0 in1(1)
            PIN D1 in1(3)
            PIN S0 CE
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_27 m2_1
            PIN D0 in1(0)
            PIN D1 in1(2)
            PIN S0 CE
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_28 m2_1
            PIN D0 XLXN_106
            PIN D1 in1(1)
            PIN S0 CE
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_29 m2_1
            PIN D0 in1(30)
            PIN D1 XLXN_173
            PIN S0 CE
            PIN O S(31)
        END BLOCK
        BEGIN BLOCK XLXI_30 m2_1
            PIN D0 in1(22)
            PIN D1 in1(24)
            PIN S0 CE
            PIN O S(23)
        END BLOCK
        BEGIN BLOCK XLXI_31 m2_1
            PIN D0 in1(14)
            PIN D1 in1(16)
            PIN S0 CE
            PIN O S(15)
        END BLOCK
        BEGIN BLOCK XLXI_32 m2_1
            PIN D0 in1(15)
            PIN D1 in1(17)
            PIN S0 CE
            PIN O S(16)
        END BLOCK
        BEGIN BLOCK XLXI_34 gnd
            PIN G XLXN_106
        END BLOCK
        BEGIN BLOCK XLXI_35 gnd
            PIN G XLXN_173
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1536 688 R0
        INSTANCE XLXI_2 1536 928 R0
        INSTANCE XLXI_3 1536 1168 R0
        INSTANCE XLXI_4 1536 1408 R0
        INSTANCE XLXI_5 1536 1648 R0
        INSTANCE XLXI_6 1536 1888 R0
        INSTANCE XLXI_7 1536 2128 R0
        INSTANCE XLXI_8 2496 688 R0
        INSTANCE XLXI_9 2496 928 R0
        INSTANCE XLXI_10 2496 1168 R0
        INSTANCE XLXI_11 2496 1408 R0
        INSTANCE XLXI_12 2496 1648 R0
        INSTANCE XLXI_13 2496 1888 R0
        INSTANCE XLXI_14 2496 2128 R0
        INSTANCE XLXI_15 2016 688 R0
        INSTANCE XLXI_16 2016 928 R0
        INSTANCE XLXI_17 2016 1168 R0
        INSTANCE XLXI_18 2016 1408 R0
        INSTANCE XLXI_19 2016 1648 R0
        INSTANCE XLXI_20 2016 1888 R0
        INSTANCE XLXI_21 2976 448 R0
        INSTANCE XLXI_22 2976 688 R0
        INSTANCE XLXI_23 2976 928 R0
        INSTANCE XLXI_24 2976 1168 R0
        INSTANCE XLXI_25 2976 1408 R0
        INSTANCE XLXI_26 2976 1648 R0
        INSTANCE XLXI_27 2976 1888 R0
        INSTANCE XLXI_28 2976 2128 R0
        BEGIN BRANCH S(9)
            WIRE 2816 1760 2848 1760
            BEGIN DISPLAY 2848 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(8)
            WIRE 2816 2000 2848 2000
            BEGIN DISPLAY 2848 2000 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(10)
            WIRE 2816 1520 2848 1520
            BEGIN DISPLAY 2848 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(11)
            WIRE 2816 1280 2848 1280
            BEGIN DISPLAY 2848 1280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(12)
            WIRE 2816 1040 2848 1040
            BEGIN DISPLAY 2848 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(14)
            WIRE 2816 560 2832 560
            WIRE 2832 560 2848 560
            BEGIN DISPLAY 2848 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15)
            WIRE 2816 320 2832 320
            WIRE 2832 320 2848 320
            BEGIN DISPLAY 2848 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(13)
            WIRE 2816 800 2848 800
            BEGIN DISPLAY 2848 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 3296 320 3328 320
            BEGIN DISPLAY 3328 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 3296 560 3328 560
            BEGIN DISPLAY 3328 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 3296 800 3328 800
            BEGIN DISPLAY 3328 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 3296 1040 3328 1040
            BEGIN DISPLAY 3328 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 3296 1280 3328 1280
            BEGIN DISPLAY 3328 1280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 3296 1520 3328 1520
            BEGIN DISPLAY 3328 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 3296 1760 3328 1760
            BEGIN DISPLAY 3328 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 3296 2000 3328 2000
            BEGIN DISPLAY 3328 2000 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(31:0)
            WIRE 1184 352 1296 352
        END BRANCH
        BEGIN BRANCH S(24)
            WIRE 1856 2000 1872 2000
            WIRE 1872 2000 1888 2000
            BEGIN DISPLAY 1888 2000 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(25)
            WIRE 1856 1760 1888 1760
            BEGIN DISPLAY 1888 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(26)
            WIRE 1856 1520 1888 1520
            BEGIN DISPLAY 1888 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(27)
            WIRE 1856 1280 1888 1280
            BEGIN DISPLAY 1888 1280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(28)
            WIRE 1856 1040 1872 1040
            WIRE 1872 1040 1888 1040
            BEGIN DISPLAY 1888 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(29)
            WIRE 1856 800 1888 800
            BEGIN DISPLAY 1888 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(30)
            WIRE 1856 560 1888 560
            BEGIN DISPLAY 1888 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31)
            WIRE 1856 320 1872 320
            WIRE 1872 320 1888 320
            BEGIN DISPLAY 1888 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_29 1536 448 R0
        BEGIN BRANCH S(23)
            WIRE 2336 320 2352 320
            WIRE 2352 320 2368 320
            BEGIN DISPLAY 2368 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(22)
            WIRE 2336 560 2368 560
            BEGIN DISPLAY 2368 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(21)
            WIRE 2336 800 2368 800
            BEGIN DISPLAY 2368 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(20)
            WIRE 2336 1040 2368 1040
            BEGIN DISPLAY 2368 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(19)
            WIRE 2336 1280 2368 1280
            BEGIN DISPLAY 2368 1280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(18)
            WIRE 2336 1520 2368 1520
            BEGIN DISPLAY 2368 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(17)
            WIRE 2336 1760 2368 1760
            BEGIN DISPLAY 2368 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(16)
            WIRE 2336 2000 2352 2000
            WIRE 2352 2000 2368 2000
            BEGIN DISPLAY 2368 2000 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_30 2016 448 R0
        BEGIN BRANCH CE
            WIRE 1168 544 1360 544
            WIRE 1360 544 1360 704
            WIRE 1360 704 1536 704
            WIRE 1536 704 2016 704
            WIRE 2016 704 2496 704
            WIRE 2496 704 2976 704
            WIRE 1360 704 1360 944
            WIRE 1360 944 1360 1184
            WIRE 1360 1184 1360 1424
            WIRE 1360 1424 1360 1664
            WIRE 1360 1664 1360 1904
            WIRE 1360 1904 1360 2144
            WIRE 1360 2144 1536 2144
            WIRE 1536 2144 2016 2144
            WIRE 2016 2144 2496 2144
            WIRE 2496 2144 2976 2144
            WIRE 1360 1904 1536 1904
            WIRE 1536 1904 2016 1904
            WIRE 2016 1904 2496 1904
            WIRE 2496 1904 2976 1904
            WIRE 1360 1664 1536 1664
            WIRE 1536 1664 2016 1664
            WIRE 2016 1664 2496 1664
            WIRE 2496 1664 2976 1664
            WIRE 1360 1424 1536 1424
            WIRE 1536 1424 2016 1424
            WIRE 2016 1424 2496 1424
            WIRE 2496 1424 2976 1424
            WIRE 1360 1184 1536 1184
            WIRE 1536 1184 2016 1184
            WIRE 2016 1184 2496 1184
            WIRE 2496 1184 2976 1184
            WIRE 1360 944 1536 944
            WIRE 1536 944 2016 944
            WIRE 2016 944 2496 944
            WIRE 2496 944 2976 944
            WIRE 1360 464 1360 544
            WIRE 1360 464 1536 464
            WIRE 1536 464 2016 464
            WIRE 2016 464 2496 464
            WIRE 2496 464 2976 464
            WIRE 1536 416 1536 464
            WIRE 1536 656 1536 704
            WIRE 1536 896 1536 944
            WIRE 1536 1136 1536 1184
            WIRE 1536 1376 1536 1424
            WIRE 1536 1616 1536 1664
            WIRE 1536 1856 1536 1904
            WIRE 1536 2096 1536 2144
            WIRE 2016 416 2016 464
            WIRE 2016 656 2016 704
            WIRE 2016 896 2016 944
            WIRE 2016 1136 2016 1184
            WIRE 2016 1376 2016 1424
            WIRE 2016 1616 2016 1664
            WIRE 2016 1856 2016 1904
            WIRE 2016 2096 2016 2144
            WIRE 2496 416 2496 432
            WIRE 2496 432 2496 464
            WIRE 2496 656 2496 704
            WIRE 2496 896 2496 944
            WIRE 2496 1136 2496 1184
            WIRE 2496 1376 2496 1424
            WIRE 2496 1616 2496 1664
            WIRE 2496 1856 2496 1904
            WIRE 2496 2096 2496 2144
            WIRE 2976 416 2976 464
            WIRE 2976 656 2976 704
            WIRE 2976 896 2976 944
            WIRE 2976 1136 2976 1184
            WIRE 2976 1376 2976 1424
            WIRE 2976 1616 2976 1664
            WIRE 2976 1856 2976 1904
            WIRE 2976 2096 2976 2144
        END BRANCH
        INSTANCE XLXI_32 2016 2128 R0
        IOMARKER 1184 352 in1(31:0) R180 28
        IOMARKER 1168 544 CE R180 28
        BEGIN BRANCH XLXN_106
            WIRE 2944 1968 2976 1968
        END BRANCH
        INSTANCE XLXI_34 2816 1904 R90
        BEGIN BRANCH in1(30)
            WIRE 1504 288 1536 288
            BEGIN DISPLAY 1504 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(28)
            WIRE 1504 768 1536 768
            BEGIN DISPLAY 1504 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(27)
            WIRE 1504 1008 1520 1008
            WIRE 1520 1008 1536 1008
            BEGIN DISPLAY 1504 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(26)
            WIRE 1504 1248 1536 1248
            BEGIN DISPLAY 1504 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(25)
            WIRE 1504 1488 1536 1488
            BEGIN DISPLAY 1504 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(24)
            WIRE 1504 1728 1536 1728
            BEGIN DISPLAY 1504 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(23)
            WIRE 1504 1968 1520 1968
            WIRE 1520 1968 1536 1968
            BEGIN DISPLAY 1504 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(22)
            WIRE 1984 288 2016 288
            BEGIN DISPLAY 1984 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(21)
            WIRE 1984 528 2016 528
            BEGIN DISPLAY 1984 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(20)
            WIRE 1984 768 2016 768
            BEGIN DISPLAY 1984 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(19)
            WIRE 1984 1008 2016 1008
            BEGIN DISPLAY 1984 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(18)
            WIRE 1984 1248 2016 1248
            BEGIN DISPLAY 1984 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(17)
            WIRE 1984 1488 2016 1488
            BEGIN DISPLAY 1984 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(16)
            WIRE 1984 1728 2000 1728
            WIRE 2000 1728 2016 1728
            BEGIN DISPLAY 1984 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(15)
            WIRE 1984 1968 2016 1968
            BEGIN DISPLAY 1984 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(14)
            WIRE 2464 288 2480 288
            WIRE 2480 288 2496 288
            BEGIN DISPLAY 2464 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(13)
            WIRE 2464 528 2496 528
            BEGIN DISPLAY 2464 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(12)
            WIRE 2464 768 2496 768
            BEGIN DISPLAY 2464 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(11)
            WIRE 2464 1008 2496 1008
            BEGIN DISPLAY 2464 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(10)
            WIRE 2464 1248 2496 1248
            BEGIN DISPLAY 2464 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(9)
            WIRE 2464 1488 2496 1488
            BEGIN DISPLAY 2464 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(8)
            WIRE 2464 1728 2496 1728
            BEGIN DISPLAY 2464 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_31 2496 448 R0
        BEGIN BRANCH in1(7)
            WIRE 2464 1968 2496 1968
            BEGIN DISPLAY 2464 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(6)
            WIRE 2944 288 2976 288
            BEGIN DISPLAY 2944 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(5)
            WIRE 2944 528 2976 528
            BEGIN DISPLAY 2944 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(4)
            WIRE 2944 768 2976 768
            BEGIN DISPLAY 2944 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(3)
            WIRE 2944 1008 2976 1008
            BEGIN DISPLAY 2944 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(2)
            WIRE 2944 1248 2976 1248
            BEGIN DISPLAY 2944 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(1)
            WIRE 2944 1488 2976 1488
            BEGIN DISPLAY 2944 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(0)
            WIRE 2944 1728 2976 1728
            BEGIN DISPLAY 2944 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(1)
            WIRE 2944 2032 2976 2032
            BEGIN DISPLAY 2944 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(2)
            WIRE 2944 1792 2976 1792
            BEGIN DISPLAY 2944 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(3)
            WIRE 2944 1552 2976 1552
            BEGIN DISPLAY 2944 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(4)
            WIRE 2944 1312 2976 1312
            BEGIN DISPLAY 2944 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(5)
            WIRE 2944 1072 2976 1072
            BEGIN DISPLAY 2944 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(6)
            WIRE 2944 832 2976 832
            BEGIN DISPLAY 2944 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(7)
            WIRE 2944 592 2976 592
            BEGIN DISPLAY 2944 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(8)
            WIRE 2944 352 2976 352
            BEGIN DISPLAY 2944 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(9)
            WIRE 2464 2032 2496 2032
            BEGIN DISPLAY 2464 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(10)
            WIRE 2464 1792 2496 1792
            BEGIN DISPLAY 2464 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(11)
            WIRE 2464 1552 2496 1552
            BEGIN DISPLAY 2464 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(12)
            WIRE 2464 1312 2496 1312
            BEGIN DISPLAY 2464 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(13)
            WIRE 2464 1072 2496 1072
            BEGIN DISPLAY 2464 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(14)
            WIRE 2464 832 2480 832
            WIRE 2480 832 2496 832
            BEGIN DISPLAY 2464 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(15)
            WIRE 2464 592 2480 592
            WIRE 2480 592 2496 592
            BEGIN DISPLAY 2464 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(16)
            WIRE 2464 352 2480 352
            WIRE 2480 352 2496 352
            BEGIN DISPLAY 2464 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(17)
            WIRE 1984 2032 2016 2032
            BEGIN DISPLAY 1984 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(18)
            WIRE 1984 1792 2016 1792
            BEGIN DISPLAY 1984 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(19)
            WIRE 1984 1552 2016 1552
            BEGIN DISPLAY 1984 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(20)
            WIRE 1984 1312 2016 1312
            BEGIN DISPLAY 1984 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(21)
            WIRE 1984 1072 2016 1072
            BEGIN DISPLAY 1984 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(22)
            WIRE 1984 832 2016 832
            BEGIN DISPLAY 1984 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(23)
            WIRE 1984 592 2000 592
            WIRE 2000 592 2016 592
            BEGIN DISPLAY 1984 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(24)
            WIRE 1984 352 2000 352
            WIRE 2000 352 2016 352
            BEGIN DISPLAY 1984 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(25)
            WIRE 1504 2032 1536 2032
            BEGIN DISPLAY 1504 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(26)
            WIRE 1504 1792 1536 1792
            BEGIN DISPLAY 1504 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(27)
            WIRE 1504 1552 1536 1552
            BEGIN DISPLAY 1504 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(28)
            WIRE 1504 1312 1520 1312
            WIRE 1520 1312 1536 1312
            BEGIN DISPLAY 1504 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(31)
            WIRE 1504 592 1520 592
            WIRE 1520 592 1536 592
            BEGIN DISPLAY 1504 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_173
            WIRE 1504 352 1536 352
        END BRANCH
        INSTANCE XLXI_35 1376 288 R90
        BEGIN BRANCH in1(29)
            WIRE 1504 1072 1536 1072
            BEGIN DISPLAY 1504 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(30)
            WIRE 1504 832 1536 832
            BEGIN DISPLAY 1504 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(29)
            WIRE 1504 528 1536 528
            BEGIN DISPLAY 1504 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1040 448 1152 448
        END BRANCH
        IOMARKER 1152 448 S(31:0) R0 28
    END SHEET
END SCHEMATIC
