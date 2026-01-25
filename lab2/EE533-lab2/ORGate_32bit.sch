VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31)
        SIGNAL B(31)
        SIGNAL A(30)
        SIGNAL B(30)
        SIGNAL A(29)
        SIGNAL B(29)
        SIGNAL A(28)
        SIGNAL B(28)
        SIGNAL A(27)
        SIGNAL B(27)
        SIGNAL A(26)
        SIGNAL B(26)
        SIGNAL A(25)
        SIGNAL B(25)
        SIGNAL A(24)
        SIGNAL B(24)
        SIGNAL A(23)
        SIGNAL B(23)
        SIGNAL A(22)
        SIGNAL B(22)
        SIGNAL A(21)
        SIGNAL B(21)
        SIGNAL A(20)
        SIGNAL B(20)
        SIGNAL A(19)
        SIGNAL B(19)
        SIGNAL A(18)
        SIGNAL B(18)
        SIGNAL A(17)
        SIGNAL B(17)
        SIGNAL A(16)
        SIGNAL B(16)
        SIGNAL A(15)
        SIGNAL B(15)
        SIGNAL S(31)
        SIGNAL S(30)
        SIGNAL S(28)
        SIGNAL S(27)
        SIGNAL S(26)
        SIGNAL S(25)
        SIGNAL S(24)
        SIGNAL A(14)
        SIGNAL B(14)
        SIGNAL A(13)
        SIGNAL B(13)
        SIGNAL A(12)
        SIGNAL B(12)
        SIGNAL A(11)
        SIGNAL B(11)
        SIGNAL A(10)
        SIGNAL B(10)
        SIGNAL A(9)
        SIGNAL B(9)
        SIGNAL A(8)
        SIGNAL B(8)
        SIGNAL S(8)
        SIGNAL S(9)
        SIGNAL S(10)
        SIGNAL S(11)
        SIGNAL S(12)
        SIGNAL S(13)
        SIGNAL S(14)
        SIGNAL S(15)
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL S(29)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL S(31:0)
        SIGNAL S(22)
        SIGNAL S(21)
        SIGNAL S(20)
        SIGNAL S(19)
        SIGNAL S(17)
        SIGNAL S(18)
        SIGNAL S(16)
        SIGNAL S(23)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_34 or2
            PIN I0 B(31)
            PIN I1 A(31)
            PIN O S(31)
        END BLOCK
        BEGIN BLOCK XLXI_35 or2
            PIN I0 B(30)
            PIN I1 A(30)
            PIN O S(30)
        END BLOCK
        BEGIN BLOCK XLXI_36 or2
            PIN I0 B(29)
            PIN I1 A(29)
            PIN O S(29)
        END BLOCK
        BEGIN BLOCK XLXI_37 or2
            PIN I0 B(28)
            PIN I1 A(28)
            PIN O S(28)
        END BLOCK
        BEGIN BLOCK XLXI_38 or2
            PIN I0 B(27)
            PIN I1 A(27)
            PIN O S(27)
        END BLOCK
        BEGIN BLOCK XLXI_39 or2
            PIN I0 B(26)
            PIN I1 A(26)
            PIN O S(26)
        END BLOCK
        BEGIN BLOCK XLXI_40 or2
            PIN I0 B(25)
            PIN I1 A(25)
            PIN O S(25)
        END BLOCK
        BEGIN BLOCK XLXI_41 or2
            PIN I0 B(24)
            PIN I1 A(24)
            PIN O S(24)
        END BLOCK
        BEGIN BLOCK XLXI_42 or2
            PIN I0 B(16)
            PIN I1 A(16)
            PIN O S(16)
        END BLOCK
        BEGIN BLOCK XLXI_43 or2
            PIN I0 B(17)
            PIN I1 A(17)
            PIN O S(17)
        END BLOCK
        BEGIN BLOCK XLXI_44 or2
            PIN I0 B(18)
            PIN I1 A(18)
            PIN O S(18)
        END BLOCK
        BEGIN BLOCK XLXI_45 or2
            PIN I0 B(19)
            PIN I1 A(19)
            PIN O S(19)
        END BLOCK
        BEGIN BLOCK XLXI_46 or2
            PIN I0 B(20)
            PIN I1 A(20)
            PIN O S(20)
        END BLOCK
        BEGIN BLOCK XLXI_47 or2
            PIN I0 B(21)
            PIN I1 A(21)
            PIN O S(21)
        END BLOCK
        BEGIN BLOCK XLXI_48 or2
            PIN I0 B(22)
            PIN I1 A(22)
            PIN O S(22)
        END BLOCK
        BEGIN BLOCK XLXI_49 or2
            PIN I0 B(23)
            PIN I1 A(23)
            PIN O S(23)
        END BLOCK
        BEGIN BLOCK XLXI_50 or2
            PIN I0 B(15)
            PIN I1 A(15)
            PIN O S(15)
        END BLOCK
        BEGIN BLOCK XLXI_51 or2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_52 or2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_53 or2
            PIN I0 B(14)
            PIN I1 A(14)
            PIN O S(14)
        END BLOCK
        BEGIN BLOCK XLXI_54 or2
            PIN I0 B(13)
            PIN I1 A(13)
            PIN O S(13)
        END BLOCK
        BEGIN BLOCK XLXI_55 or2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_56 or2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_57 or2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_58 or2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_59 or2
            PIN I0 B(12)
            PIN I1 A(12)
            PIN O S(12)
        END BLOCK
        BEGIN BLOCK XLXI_60 or2
            PIN I0 B(11)
            PIN I1 A(11)
            PIN O S(11)
        END BLOCK
        BEGIN BLOCK XLXI_61 or2
            PIN I0 B(10)
            PIN I1 A(10)
            PIN O S(10)
        END BLOCK
        BEGIN BLOCK XLXI_62 or2
            PIN I0 B(9)
            PIN I1 A(9)
            PIN O S(9)
        END BLOCK
        BEGIN BLOCK XLXI_63 or2
            PIN I0 B(8)
            PIN I1 A(8)
            PIN O S(8)
        END BLOCK
        BEGIN BLOCK XLXI_64 or2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_65 or2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O S(1)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31)
            WIRE 480 784 512 784
            BEGIN DISPLAY 480 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31)
            WIRE 480 848 512 848
            BEGIN DISPLAY 480 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(30)
            WIRE 480 944 512 944
            BEGIN DISPLAY 480 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(30)
            WIRE 480 1008 512 1008
            BEGIN DISPLAY 480 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(29)
            WIRE 480 1104 512 1104
            BEGIN DISPLAY 480 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(29)
            WIRE 480 1168 512 1168
            BEGIN DISPLAY 480 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(28)
            WIRE 480 1264 512 1264
            BEGIN DISPLAY 480 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(28)
            WIRE 480 1328 512 1328
            BEGIN DISPLAY 480 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(27)
            WIRE 480 1424 512 1424
            BEGIN DISPLAY 480 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(27)
            WIRE 480 1488 512 1488
            BEGIN DISPLAY 480 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(26)
            WIRE 480 1584 512 1584
            BEGIN DISPLAY 480 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(26)
            WIRE 480 1648 512 1648
            BEGIN DISPLAY 480 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(25)
            WIRE 480 1744 512 1744
            BEGIN DISPLAY 480 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(25)
            WIRE 480 1808 512 1808
            BEGIN DISPLAY 480 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(24)
            WIRE 480 1904 512 1904
            BEGIN DISPLAY 480 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(24)
            WIRE 480 1968 512 1968
            BEGIN DISPLAY 480 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23)
            WIRE 960 784 992 784
            BEGIN DISPLAY 960 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23)
            WIRE 960 848 992 848
            BEGIN DISPLAY 960 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(22)
            WIRE 960 944 992 944
            BEGIN DISPLAY 960 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(22)
            WIRE 960 1008 992 1008
            BEGIN DISPLAY 960 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(21)
            WIRE 960 1104 992 1104
            BEGIN DISPLAY 960 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(21)
            WIRE 960 1168 992 1168
            BEGIN DISPLAY 960 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(20)
            WIRE 960 1264 992 1264
            BEGIN DISPLAY 960 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(20)
            WIRE 960 1328 992 1328
            BEGIN DISPLAY 960 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(19)
            WIRE 960 1424 992 1424
            BEGIN DISPLAY 960 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(19)
            WIRE 960 1488 992 1488
            BEGIN DISPLAY 960 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(18)
            WIRE 960 1584 992 1584
            BEGIN DISPLAY 960 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(18)
            WIRE 960 1648 992 1648
            BEGIN DISPLAY 960 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(17)
            WIRE 960 1744 992 1744
            BEGIN DISPLAY 960 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(17)
            WIRE 960 1808 992 1808
            BEGIN DISPLAY 960 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(16)
            WIRE 960 1904 992 1904
            BEGIN DISPLAY 960 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(16)
            WIRE 960 1968 992 1968
            BEGIN DISPLAY 960 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15)
            WIRE 1440 784 1472 784
            BEGIN DISPLAY 1440 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15)
            WIRE 1440 848 1472 848
            BEGIN DISPLAY 1440 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31)
            WIRE 768 816 800 816
            BEGIN DISPLAY 800 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(30)
            WIRE 768 976 800 976
            BEGIN DISPLAY 800 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(28)
            WIRE 768 1296 800 1296
            BEGIN DISPLAY 800 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(27)
            WIRE 768 1456 800 1456
            BEGIN DISPLAY 800 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(26)
            WIRE 768 1616 800 1616
            BEGIN DISPLAY 800 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(25)
            WIRE 768 1776 800 1776
            BEGIN DISPLAY 800 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(24)
            WIRE 768 1936 800 1936
            BEGIN DISPLAY 800 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(14)
            WIRE 1440 944 1472 944
            BEGIN DISPLAY 1440 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(14)
            WIRE 1440 1008 1472 1008
            BEGIN DISPLAY 1440 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(13)
            WIRE 1440 1104 1472 1104
            BEGIN DISPLAY 1440 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(13)
            WIRE 1440 1168 1472 1168
            BEGIN DISPLAY 1440 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(12)
            WIRE 1440 1264 1472 1264
            BEGIN DISPLAY 1440 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(12)
            WIRE 1440 1328 1472 1328
            BEGIN DISPLAY 1440 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(11)
            WIRE 1440 1424 1472 1424
            BEGIN DISPLAY 1440 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(11)
            WIRE 1440 1488 1472 1488
            BEGIN DISPLAY 1440 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(10)
            WIRE 1440 1584 1472 1584
            BEGIN DISPLAY 1440 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(10)
            WIRE 1440 1648 1472 1648
            BEGIN DISPLAY 1440 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(9)
            WIRE 1440 1744 1472 1744
            BEGIN DISPLAY 1440 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(9)
            WIRE 1440 1808 1472 1808
            BEGIN DISPLAY 1440 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(8)
            WIRE 1440 1904 1456 1904
            WIRE 1456 1904 1472 1904
            BEGIN DISPLAY 1440 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(8)
            WIRE 1440 1968 1456 1968
            WIRE 1456 1968 1472 1968
            BEGIN DISPLAY 1440 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(8)
            WIRE 1728 1936 1744 1936
            WIRE 1744 1936 1760 1936
            BEGIN DISPLAY 1760 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(9)
            WIRE 1728 1776 1760 1776
            BEGIN DISPLAY 1760 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(10)
            WIRE 1728 1616 1760 1616
            BEGIN DISPLAY 1760 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(11)
            WIRE 1728 1456 1760 1456
            BEGIN DISPLAY 1760 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(12)
            WIRE 1728 1296 1760 1296
            BEGIN DISPLAY 1760 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(13)
            WIRE 1728 1136 1760 1136
            BEGIN DISPLAY 1760 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(14)
            WIRE 1728 976 1760 976
            BEGIN DISPLAY 1760 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15)
            WIRE 1728 816 1760 816
            BEGIN DISPLAY 1760 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 1920 784 1952 784
            BEGIN DISPLAY 1920 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 1920 848 1952 848
            BEGIN DISPLAY 1920 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 1920 944 1952 944
            BEGIN DISPLAY 1920 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 1920 1008 1952 1008
            BEGIN DISPLAY 1920 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1920 1104 1952 1104
            BEGIN DISPLAY 1920 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 1920 1168 1952 1168
            BEGIN DISPLAY 1920 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 1920 1264 1952 1264
            BEGIN DISPLAY 1920 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 1920 1328 1952 1328
            BEGIN DISPLAY 1920 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1920 1424 1952 1424
            BEGIN DISPLAY 1920 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1920 1488 1952 1488
            BEGIN DISPLAY 1920 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1920 1584 1952 1584
            BEGIN DISPLAY 1920 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1920 1648 1952 1648
            BEGIN DISPLAY 1920 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1920 1744 1952 1744
            BEGIN DISPLAY 1920 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1920 1808 1952 1808
            BEGIN DISPLAY 1920 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 1920 1904 1952 1904
            BEGIN DISPLAY 1920 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 1920 1968 1952 1968
            BEGIN DISPLAY 1920 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(29)
            WIRE 768 1136 800 1136
            BEGIN DISPLAY 800 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2208 816 2240 816
            BEGIN DISPLAY 2240 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2208 976 2240 976
            BEGIN DISPLAY 2240 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 2208 1136 2240 1136
            BEGIN DISPLAY 2240 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 2208 1296 2240 1296
            BEGIN DISPLAY 2240 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 2208 1456 2240 1456
            BEGIN DISPLAY 2240 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 2208 1616 2240 1616
            BEGIN DISPLAY 2240 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 2208 1776 2240 1776
            BEGIN DISPLAY 2240 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 2208 1936 2240 1936
            BEGIN DISPLAY 2240 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 576 528 736 528
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 576 608 736 608
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 576 688 736 688
        END BRANCH
        BEGIN BRANCH S(22)
            WIRE 1248 976 1280 976
            BEGIN DISPLAY 1280 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(21)
            WIRE 1248 1136 1280 1136
            BEGIN DISPLAY 1280 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(20)
            WIRE 1248 1296 1280 1296
            BEGIN DISPLAY 1280 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(19)
            WIRE 1248 1456 1280 1456
            BEGIN DISPLAY 1280 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(17)
            WIRE 1248 1776 1280 1776
            BEGIN DISPLAY 1280 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(18)
            WIRE 1248 1616 1280 1616
            BEGIN DISPLAY 1280 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(16)
            WIRE 1248 1936 1280 1936
            BEGIN DISPLAY 1280 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23)
            WIRE 1248 816 1280 816
            BEGIN DISPLAY 1280 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 576 528 A(31:0) R180 28
        IOMARKER 576 608 B(31:0) R180 28
        IOMARKER 736 688 S(31:0) R0 28
        INSTANCE XLXI_34 512 912 R0
        INSTANCE XLXI_35 512 1072 R0
        INSTANCE XLXI_36 512 1232 R0
        INSTANCE XLXI_37 512 1392 R0
        INSTANCE XLXI_39 512 1712 R0
        INSTANCE XLXI_41 512 2032 R0
        INSTANCE XLXI_42 992 2032 R0
        INSTANCE XLXI_43 992 1872 R0
        INSTANCE XLXI_44 992 1712 R0
        INSTANCE XLXI_45 992 1552 R0
        INSTANCE XLXI_46 992 1392 R0
        INSTANCE XLXI_47 992 1232 R0
        INSTANCE XLXI_48 992 1072 R0
        INSTANCE XLXI_49 992 912 R0
        INSTANCE XLXI_50 1472 912 R0
        INSTANCE XLXI_51 1952 912 R0
        INSTANCE XLXI_52 1952 1072 R0
        INSTANCE XLXI_53 1472 1072 R0
        INSTANCE XLXI_54 1472 1232 R0
        INSTANCE XLXI_55 1952 1232 R0
        INSTANCE XLXI_56 1952 1392 R0
        INSTANCE XLXI_57 1952 1552 R0
        INSTANCE XLXI_58 1952 1712 R0
        INSTANCE XLXI_59 1472 1392 R0
        INSTANCE XLXI_60 1472 1552 R0
        INSTANCE XLXI_61 1472 1712 R0
        INSTANCE XLXI_62 1472 1872 R0
        INSTANCE XLXI_63 1472 2032 R0
        INSTANCE XLXI_65 1952 1872 R0
        INSTANCE XLXI_64 1952 2032 R0
        INSTANCE XLXI_40 512 1872 R0
        INSTANCE XLXI_38 512 1552 R0
    END SHEET
END SCHEMATIC
