VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL in1(31)
        SIGNAL in2(31)
        SIGNAL in1(30)
        SIGNAL in2(30)
        SIGNAL in1(29)
        SIGNAL in2(29)
        SIGNAL in1(28)
        SIGNAL in2(28)
        SIGNAL in1(27)
        SIGNAL in2(27)
        SIGNAL in1(26)
        SIGNAL in2(26)
        SIGNAL in1(25)
        SIGNAL in2(25)
        SIGNAL in1(24)
        SIGNAL in2(24)
        SIGNAL in1(23)
        SIGNAL in2(23)
        SIGNAL in1(22)
        SIGNAL in2(22)
        SIGNAL in1(21)
        SIGNAL in2(21)
        SIGNAL in1(20)
        SIGNAL in2(20)
        SIGNAL in1(19)
        SIGNAL in2(19)
        SIGNAL in1(18)
        SIGNAL in2(18)
        SIGNAL in1(17)
        SIGNAL in2(17)
        SIGNAL in1(16)
        SIGNAL in2(16)
        SIGNAL in1(15)
        SIGNAL in2(15)
        SIGNAL in1(14)
        SIGNAL in2(14)
        SIGNAL in1(13)
        SIGNAL in2(13)
        SIGNAL in1(12)
        SIGNAL in2(12)
        SIGNAL in1(11)
        SIGNAL in2(11)
        SIGNAL in1(10)
        SIGNAL in2(10)
        SIGNAL in1(9)
        SIGNAL in2(9)
        SIGNAL in2(8)
        SIGNAL in1(8)
        SIGNAL S(9)
        SIGNAL S(8)
        SIGNAL S(10)
        SIGNAL S(11)
        SIGNAL S(12)
        SIGNAL S(14)
        SIGNAL S(15)
        SIGNAL S(13)
        SIGNAL in1(5)
        SIGNAL in2(5)
        SIGNAL in1(4)
        SIGNAL in2(4)
        SIGNAL in1(3)
        SIGNAL in2(3)
        SIGNAL in1(2)
        SIGNAL in2(2)
        SIGNAL in1(1)
        SIGNAL in2(1)
        SIGNAL in2(0)
        SIGNAL in1(0)
        SIGNAL in2(6)
        SIGNAL in1(6)
        SIGNAL in2(7)
        SIGNAL in1(7)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL in1(31:0)
        SIGNAL in2(31:0)
        SIGNAL S(31:0)
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
        SIGNAL OP
        PORT Input in1(31:0)
        PORT Input in2(31:0)
        PORT Output S(31:0)
        PORT Input OP
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
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 in1(31)
            PIN D1 in2(31)
            PIN S0 OP
            PIN O S(31)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 in1(30)
            PIN D1 in2(30)
            PIN S0 OP
            PIN O S(30)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 in1(29)
            PIN D1 in2(29)
            PIN S0 OP
            PIN O S(29)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 in1(28)
            PIN D1 in2(28)
            PIN S0 OP
            PIN O S(28)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 in1(27)
            PIN D1 in2(27)
            PIN S0 OP
            PIN O S(27)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 in1(26)
            PIN D1 in2(26)
            PIN S0 OP
            PIN O S(26)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 in1(25)
            PIN D1 in2(25)
            PIN S0 OP
            PIN O S(25)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 in1(24)
            PIN D1 in2(24)
            PIN S0 OP
            PIN O S(24)
        END BLOCK
        BEGIN BLOCK XLXI_18 m2_1
            PIN D0 in1(14)
            PIN D1 in2(14)
            PIN S0 OP
            PIN O S(14)
        END BLOCK
        BEGIN BLOCK XLXI_19 m2_1
            PIN D0 in1(13)
            PIN D1 in2(13)
            PIN S0 OP
            PIN O S(13)
        END BLOCK
        BEGIN BLOCK XLXI_20 m2_1
            PIN D0 in1(12)
            PIN D1 in2(12)
            PIN S0 OP
            PIN O S(12)
        END BLOCK
        BEGIN BLOCK XLXI_21 m2_1
            PIN D0 in1(11)
            PIN D1 in2(11)
            PIN S0 OP
            PIN O S(11)
        END BLOCK
        BEGIN BLOCK XLXI_22 m2_1
            PIN D0 in1(10)
            PIN D1 in2(10)
            PIN S0 OP
            PIN O S(10)
        END BLOCK
        BEGIN BLOCK XLXI_23 m2_1
            PIN D0 in1(9)
            PIN D1 in2(9)
            PIN S0 OP
            PIN O S(9)
        END BLOCK
        BEGIN BLOCK XLXI_24 m2_1
            PIN D0 in1(8)
            PIN D1 in2(8)
            PIN S0 OP
            PIN O S(8)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 in1(23)
            PIN D1 in2(23)
            PIN S0 OP
            PIN O S(23)
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 in1(22)
            PIN D1 in2(22)
            PIN S0 OP
            PIN O S(22)
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 in1(21)
            PIN D1 in2(21)
            PIN S0 OP
            PIN O S(21)
        END BLOCK
        BEGIN BLOCK XLXI_12 m2_1
            PIN D0 in1(20)
            PIN D1 in2(20)
            PIN S0 OP
            PIN O S(20)
        END BLOCK
        BEGIN BLOCK XLXI_13 m2_1
            PIN D0 in1(19)
            PIN D1 in2(19)
            PIN S0 OP
            PIN O S(19)
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_1
            PIN D0 in1(18)
            PIN D1 in2(18)
            PIN S0 OP
            PIN O S(18)
        END BLOCK
        BEGIN BLOCK XLXI_15 m2_1
            PIN D0 in1(17)
            PIN D1 in2(17)
            PIN S0 OP
            PIN O S(17)
        END BLOCK
        BEGIN BLOCK XLXI_16 m2_1
            PIN D0 in1(16)
            PIN D1 in2(16)
            PIN S0 OP
            PIN O S(16)
        END BLOCK
        BEGIN BLOCK XLXI_25 m2_1
            PIN D0 in1(7)
            PIN D1 in2(7)
            PIN S0 OP
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_26 m2_1
            PIN D0 in1(6)
            PIN D1 in2(6)
            PIN S0 OP
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_27 m2_1
            PIN D0 in1(5)
            PIN D1 in2(5)
            PIN S0 OP
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_28 m2_1
            PIN D0 in1(4)
            PIN D1 in2(4)
            PIN S0 OP
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_29 m2_1
            PIN D0 in1(3)
            PIN D1 in2(3)
            PIN S0 OP
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_30 m2_1
            PIN D0 in1(2)
            PIN D1 in2(2)
            PIN S0 OP
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_31 m2_1
            PIN D0 in1(1)
            PIN D1 in2(1)
            PIN S0 OP
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_32 m2_1
            PIN D0 in1(0)
            PIN D1 in2(0)
            PIN S0 OP
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_17 m2_1
            PIN D0 in1(15)
            PIN D1 in2(15)
            PIN S0 OP
            PIN O S(15)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 704 592 R0
        INSTANCE XLXI_3 704 832 R0
        INSTANCE XLXI_4 704 1072 R0
        INSTANCE XLXI_5 704 1312 R0
        INSTANCE XLXI_6 704 1552 R0
        INSTANCE XLXI_7 704 1792 R0
        INSTANCE XLXI_8 704 2032 R0
        INSTANCE XLXI_18 1664 592 R0
        INSTANCE XLXI_19 1664 832 R0
        INSTANCE XLXI_20 1664 1072 R0
        INSTANCE XLXI_21 1664 1312 R0
        INSTANCE XLXI_22 1664 1552 R0
        INSTANCE XLXI_23 1664 1792 R0
        INSTANCE XLXI_24 1664 2032 R0
        INSTANCE XLXI_10 1184 592 R0
        INSTANCE XLXI_11 1184 832 R0
        INSTANCE XLXI_12 1184 1072 R0
        INSTANCE XLXI_13 1184 1312 R0
        INSTANCE XLXI_14 1184 1552 R0
        INSTANCE XLXI_15 1184 1792 R0
        INSTANCE XLXI_25 2144 352 R0
        INSTANCE XLXI_26 2144 592 R0
        INSTANCE XLXI_27 2144 832 R0
        INSTANCE XLXI_28 2144 1072 R0
        INSTANCE XLXI_29 2144 1312 R0
        INSTANCE XLXI_30 2144 1552 R0
        INSTANCE XLXI_31 2144 1792 R0
        INSTANCE XLXI_32 2144 2032 R0
        BEGIN BRANCH in1(31)
            WIRE 672 192 688 192
            WIRE 688 192 704 192
            BEGIN DISPLAY 672 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(31)
            WIRE 672 256 688 256
            WIRE 688 256 704 256
            BEGIN DISPLAY 672 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(30)
            WIRE 672 432 704 432
            BEGIN DISPLAY 672 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(30)
            WIRE 672 496 704 496
            BEGIN DISPLAY 672 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(29)
            WIRE 672 672 704 672
            BEGIN DISPLAY 672 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(29)
            WIRE 672 736 704 736
            BEGIN DISPLAY 672 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(28)
            WIRE 672 912 704 912
            BEGIN DISPLAY 672 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(28)
            WIRE 672 976 704 976
            BEGIN DISPLAY 672 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(27)
            WIRE 672 1152 704 1152
            BEGIN DISPLAY 672 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(27)
            WIRE 672 1216 704 1216
            BEGIN DISPLAY 672 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(26)
            WIRE 672 1392 704 1392
            BEGIN DISPLAY 672 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(26)
            WIRE 672 1456 704 1456
            BEGIN DISPLAY 672 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(25)
            WIRE 672 1632 704 1632
            BEGIN DISPLAY 672 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(25)
            WIRE 672 1696 704 1696
            BEGIN DISPLAY 672 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(24)
            WIRE 672 1872 704 1872
            BEGIN DISPLAY 672 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(24)
            WIRE 672 1936 704 1936
            BEGIN DISPLAY 672 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(23)
            WIRE 1152 192 1168 192
            WIRE 1168 192 1184 192
            BEGIN DISPLAY 1152 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(23)
            WIRE 1152 256 1168 256
            WIRE 1168 256 1184 256
            BEGIN DISPLAY 1152 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(22)
            WIRE 1152 432 1184 432
            BEGIN DISPLAY 1152 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(22)
            WIRE 1152 496 1184 496
            BEGIN DISPLAY 1152 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(21)
            WIRE 1152 672 1184 672
            BEGIN DISPLAY 1152 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(21)
            WIRE 1152 736 1184 736
            BEGIN DISPLAY 1152 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(20)
            WIRE 1152 912 1184 912
            BEGIN DISPLAY 1152 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(20)
            WIRE 1152 976 1184 976
            BEGIN DISPLAY 1152 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(19)
            WIRE 1152 1152 1184 1152
            BEGIN DISPLAY 1152 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(19)
            WIRE 1152 1216 1184 1216
            BEGIN DISPLAY 1152 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(18)
            WIRE 1152 1392 1184 1392
            BEGIN DISPLAY 1152 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(18)
            WIRE 1152 1456 1184 1456
            BEGIN DISPLAY 1152 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(17)
            WIRE 1152 1632 1184 1632
            BEGIN DISPLAY 1152 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(17)
            WIRE 1152 1696 1184 1696
            BEGIN DISPLAY 1152 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(15)
            WIRE 1632 192 1664 192
            BEGIN DISPLAY 1632 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(15)
            WIRE 1632 256 1664 256
            BEGIN DISPLAY 1632 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(14)
            WIRE 1632 432 1648 432
            WIRE 1648 432 1664 432
            BEGIN DISPLAY 1632 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(14)
            WIRE 1632 496 1648 496
            WIRE 1648 496 1664 496
            BEGIN DISPLAY 1632 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(13)
            WIRE 1632 672 1664 672
            BEGIN DISPLAY 1632 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(13)
            WIRE 1632 736 1664 736
            BEGIN DISPLAY 1632 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(12)
            WIRE 1632 912 1664 912
            BEGIN DISPLAY 1632 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(12)
            WIRE 1632 976 1664 976
            BEGIN DISPLAY 1632 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(11)
            WIRE 1632 1152 1664 1152
            BEGIN DISPLAY 1632 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(11)
            WIRE 1632 1216 1664 1216
            BEGIN DISPLAY 1632 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(10)
            WIRE 1632 1392 1664 1392
            BEGIN DISPLAY 1632 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(10)
            WIRE 1632 1456 1664 1456
            BEGIN DISPLAY 1632 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(9)
            WIRE 1632 1632 1664 1632
            BEGIN DISPLAY 1632 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(9)
            WIRE 1632 1696 1664 1696
            BEGIN DISPLAY 1632 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(8)
            WIRE 1632 1936 1664 1936
            BEGIN DISPLAY 1632 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(8)
            WIRE 1632 1872 1664 1872
            BEGIN DISPLAY 1632 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(9)
            WIRE 1984 1664 2016 1664
            BEGIN DISPLAY 2016 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(8)
            WIRE 1984 1904 2016 1904
            BEGIN DISPLAY 2016 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(10)
            WIRE 1984 1424 2016 1424
            BEGIN DISPLAY 2016 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(11)
            WIRE 1984 1184 2016 1184
            BEGIN DISPLAY 2016 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(12)
            WIRE 1984 944 2016 944
            BEGIN DISPLAY 2016 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(14)
            WIRE 1984 464 2000 464
            WIRE 2000 464 2016 464
            BEGIN DISPLAY 2016 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15)
            WIRE 1984 224 2016 224
            BEGIN DISPLAY 2016 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(13)
            WIRE 1984 704 2016 704
            BEGIN DISPLAY 2016 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(5)
            WIRE 2112 672 2144 672
            BEGIN DISPLAY 2112 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(5)
            WIRE 2112 736 2144 736
            BEGIN DISPLAY 2112 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(4)
            WIRE 2112 912 2144 912
            BEGIN DISPLAY 2112 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(4)
            WIRE 2112 976 2144 976
            BEGIN DISPLAY 2112 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(3)
            WIRE 2112 1152 2144 1152
            BEGIN DISPLAY 2112 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(3)
            WIRE 2112 1216 2144 1216
            BEGIN DISPLAY 2112 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(2)
            WIRE 2112 1392 2144 1392
            BEGIN DISPLAY 2112 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(2)
            WIRE 2112 1456 2144 1456
            BEGIN DISPLAY 2112 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(1)
            WIRE 2112 1632 2144 1632
            BEGIN DISPLAY 2112 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(1)
            WIRE 2112 1696 2144 1696
            BEGIN DISPLAY 2112 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(0)
            WIRE 2112 1936 2144 1936
            BEGIN DISPLAY 2112 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(0)
            WIRE 2112 1872 2144 1872
            BEGIN DISPLAY 2112 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(6)
            WIRE 2112 496 2144 496
            BEGIN DISPLAY 2112 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(6)
            WIRE 2112 432 2144 432
            BEGIN DISPLAY 2112 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(7)
            WIRE 2112 256 2144 256
            BEGIN DISPLAY 2112 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(7)
            WIRE 2112 192 2144 192
            BEGIN DISPLAY 2112 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2464 224 2496 224
            BEGIN DISPLAY 2496 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2464 464 2496 464
            BEGIN DISPLAY 2496 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 2464 704 2496 704
            BEGIN DISPLAY 2496 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 2464 944 2496 944
            BEGIN DISPLAY 2496 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 2464 1184 2496 1184
            BEGIN DISPLAY 2496 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 2464 1424 2496 1424
            BEGIN DISPLAY 2496 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 2464 1664 2496 1664
            BEGIN DISPLAY 2496 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 2464 1904 2496 1904
            BEGIN DISPLAY 2496 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(31:0)
            WIRE 352 256 464 256
        END BRANCH
        BEGIN BRANCH in2(31:0)
            WIRE 352 320 464 320
        END BRANCH
        IOMARKER 352 256 in1(31:0) R180 28
        IOMARKER 352 320 in2(31:0) R180 28
        BEGIN BRANCH S(31:0)
            WIRE 208 384 320 384
        END BRANCH
        IOMARKER 320 384 S(31:0) R0 28
        BEGIN BRANCH S(24)
            WIRE 1024 1904 1056 1904
            BEGIN DISPLAY 1056 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(25)
            WIRE 1024 1664 1056 1664
            BEGIN DISPLAY 1056 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(26)
            WIRE 1024 1424 1056 1424
            BEGIN DISPLAY 1056 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(27)
            WIRE 1024 1184 1056 1184
            BEGIN DISPLAY 1056 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(28)
            WIRE 1024 944 1056 944
            BEGIN DISPLAY 1056 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(29)
            WIRE 1024 704 1056 704
            BEGIN DISPLAY 1056 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(30)
            WIRE 1024 464 1056 464
            BEGIN DISPLAY 1056 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31)
            WIRE 1024 224 1040 224
            WIRE 1040 224 1056 224
            BEGIN DISPLAY 1056 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_1 704 352 R0
        BEGIN BRANCH S(23)
            WIRE 1504 224 1520 224
            WIRE 1520 224 1536 224
            BEGIN DISPLAY 1536 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(22)
            WIRE 1504 464 1536 464
            BEGIN DISPLAY 1536 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(21)
            WIRE 1504 704 1536 704
            BEGIN DISPLAY 1536 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(20)
            WIRE 1504 944 1536 944
            BEGIN DISPLAY 1536 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(19)
            WIRE 1504 1184 1536 1184
            BEGIN DISPLAY 1536 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(18)
            WIRE 1504 1424 1536 1424
            BEGIN DISPLAY 1536 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(17)
            WIRE 1504 1664 1536 1664
            BEGIN DISPLAY 1536 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(16)
            WIRE 1504 1904 1520 1904
            WIRE 1520 1904 1536 1904
            BEGIN DISPLAY 1536 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1184 352 R0
        INSTANCE XLXI_17 1664 352 R0
        IOMARKER 336 448 OP R180 28
        BEGIN BRANCH OP
            WIRE 336 448 528 448
            WIRE 528 448 528 608
            WIRE 528 608 704 608
            WIRE 704 608 1184 608
            WIRE 1184 608 1664 608
            WIRE 1664 608 2144 608
            WIRE 528 608 528 848
            WIRE 528 848 528 1088
            WIRE 528 1088 528 1328
            WIRE 528 1328 528 1568
            WIRE 528 1568 528 1808
            WIRE 528 1808 528 2048
            WIRE 528 2048 704 2048
            WIRE 704 2048 1184 2048
            WIRE 1184 2048 1664 2048
            WIRE 1664 2048 2144 2048
            WIRE 528 1808 704 1808
            WIRE 704 1808 1184 1808
            WIRE 1184 1808 1664 1808
            WIRE 1664 1808 2144 1808
            WIRE 528 1568 704 1568
            WIRE 704 1568 1184 1568
            WIRE 1184 1568 1664 1568
            WIRE 1664 1568 2144 1568
            WIRE 528 1328 704 1328
            WIRE 704 1328 1184 1328
            WIRE 1184 1328 1664 1328
            WIRE 1664 1328 2144 1328
            WIRE 528 1088 704 1088
            WIRE 704 1088 1184 1088
            WIRE 1184 1088 1664 1088
            WIRE 1664 1088 2144 1088
            WIRE 528 848 704 848
            WIRE 704 848 1184 848
            WIRE 1184 848 1664 848
            WIRE 1664 848 2144 848
            WIRE 528 368 528 448
            WIRE 528 368 704 368
            WIRE 704 368 1184 368
            WIRE 1184 368 1664 368
            WIRE 1664 368 2144 368
            WIRE 704 320 704 368
            WIRE 704 560 704 608
            WIRE 704 800 704 848
            WIRE 704 1040 704 1088
            WIRE 704 1280 704 1328
            WIRE 704 1520 704 1568
            WIRE 704 1760 704 1808
            WIRE 704 2000 704 2048
            WIRE 1184 320 1184 368
            WIRE 1184 560 1184 608
            WIRE 1184 800 1184 848
            WIRE 1184 1040 1184 1088
            WIRE 1184 1280 1184 1328
            WIRE 1184 1520 1184 1568
            WIRE 1184 1760 1184 1808
            WIRE 1184 2000 1184 2048
            WIRE 1664 320 1664 336
            WIRE 1664 336 1664 368
            WIRE 1664 560 1664 608
            WIRE 1664 800 1664 848
            WIRE 1664 1040 1664 1088
            WIRE 1664 1280 1664 1328
            WIRE 1664 1520 1664 1568
            WIRE 1664 1760 1664 1808
            WIRE 1664 2000 1664 2048
            WIRE 2144 320 2144 368
            WIRE 2144 560 2144 608
            WIRE 2144 800 2144 848
            WIRE 2144 1040 2144 1088
            WIRE 2144 1280 2144 1328
            WIRE 2144 1520 2144 1568
            WIRE 2144 1760 2144 1808
            WIRE 2144 2000 2144 2048
        END BRANCH
        BEGIN BRANCH in2(16)
            WIRE 1152 1936 1168 1936
            WIRE 1168 1936 1184 1936
            BEGIN DISPLAY 1152 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(16)
            WIRE 1152 1872 1168 1872
            WIRE 1168 1872 1184 1872
            BEGIN DISPLAY 1152 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_16 1184 2032 R0
    END SHEET
END SCHEMATIC
