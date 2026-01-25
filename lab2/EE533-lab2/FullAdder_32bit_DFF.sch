VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_19
        SIGNAL XLXN_24(31:0)
        SIGNAL XLXN_27
        SIGNAL ADD_SUB
        SIGNAL XLXN_96(31:0)
        SIGNAL XLXN_100
        SIGNAL B_ini(31:0)
        SIGNAL XLXN_103(31:0)
        SIGNAL B_inv(31:0)
        SIGNAL S(31:0)
        SIGNAL XLXN_107
        SIGNAL Cin
        SIGNAL XLXN_52
        SIGNAL XLXN_49
        SIGNAL XLXN_111
        SIGNAL XLXN_112
        SIGNAL A(31:0)
        SIGNAL XLXN_118(31:0)
        SIGNAL XLXN_119
        SIGNAL XLXN_120(31:0)
        BEGIN SIGNAL A_CLK(31:0)
        END SIGNAL
        BEGIN SIGNAL B_CLK(31:0)
        END SIGNAL
        SIGNAL XLXN_113
        SIGNAL XLXN_153
        SIGNAL A_CLK(31:24)
        SIGNAL B_CLK(31:24)
        SIGNAL A_CLK(23:16)
        SIGNAL B_CLK(23:16)
        SIGNAL A_CLK(7:0)
        SIGNAL B_CLK(7:0)
        SIGNAL Cout
        SIGNAL XLXN_42
        SIGNAL XLXN_40
        SIGNAL S(31:24)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL B_CLK(15:8)
        SIGNAL A_CLK(15:8)
        SIGNAL XLXN_170
        SIGNAL XLXN_45
        SIGNAL CLK
        SIGNAL EN
        SIGNAL RST
        SIGNAL XLXN_176
        SIGNAL XLXN_177
        SIGNAL XLXN_178
        SIGNAL XLXN_179
        SIGNAL XLXN_180
        SIGNAL XLXN_181
        SIGNAL XLXN_182
        PORT Input ADD_SUB
        PORT Input B_ini(31:0)
        PORT Output S(31:0)
        PORT Input Cin
        PORT Input A(31:0)
        PORT Output Cout
        PORT Input CLK
        PORT Input EN
        PORT Input RST
        BEGIN BLOCKDEF FullAdder_8bit
            TIMESTAMP 2026 1 24 2 35 22
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF INV_32bit
            TIMESTAMP 2026 1 24 4 36 55
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux_32bit_2_1
            TIMESTAMP 2026 1 25 0 47 43
            LINE N 64 32 0 32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 64 -192 320 64 
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
        BEGIN BLOCKDEF DFF_32bit
            TIMESTAMP 2026 1 25 0 10 48
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 64 -192 320 128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_21 INV_32bit
            PIN Cin(31:0) B_ini(31:0)
            PIN Cout(31:0) B_inv(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_50 Mux_32bit_2_1
            PIN in1(31:0) B_ini(31:0)
            PIN in2(31:0) B_inv(31:0)
            PIN OP ADD_SUB
            PIN S(31:0) XLXN_118(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_43 m2_1
            PIN D0 Cin
            PIN D1 XLXN_52
            PIN S0 ADD_SUB
            PIN O XLXN_112
        END BLOCK
        BEGIN BLOCK XLXI_23 gnd
            PIN G XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I XLXN_49
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_58 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D XLXN_112
            PIN Q XLXN_113
        END BLOCK
        BEGIN BLOCK XLXI_59 DFF_32bit
            PIN RST RST
            PIN CLK CLK
            PIN EN EN
            PIN Data(31:0) XLXN_118(31:0)
            PIN Data_CLK(31:0) B_CLK(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_60 DFF_32bit
            PIN RST RST
            PIN CLK CLK
            PIN EN EN
            PIN Data(31:0) A(31:0)
            PIN Data_CLK(31:0) A_CLK(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 FullAdder_8bit
            PIN A(7:0) A_CLK(7:0)
            PIN B(7:0) B_CLK(7:0)
            PIN Cin XLXN_113
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_18 FullAdder_8bit
            PIN A(7:0) A_CLK(23:16)
            PIN B(7:0) B_CLK(23:16)
            PIN Cin XLXN_42
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_19 FullAdder_8bit
            PIN A(7:0) A_CLK(15:8)
            PIN B(7:0) B_CLK(15:8)
            PIN Cin XLXN_40
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_17 FullAdder_8bit
            PIN A(7:0) A_CLK(31:24)
            PIN B(7:0) B_CLK(31:24)
            PIN Cin XLXN_45
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ADD_SUB
            WIRE 608 2336 944 2336
            WIRE 944 2336 1392 2336
            WIRE 944 1584 992 1584
            WIRE 944 1584 944 2336
            WIRE 1392 2144 1392 2336
        END BRANCH
        BEGIN BRANCH B_ini(31:0)
            WIRE 496 1360 496 1456
            WIRE 496 1456 544 1456
            WIRE 496 1360 688 1360
            WIRE 672 1248 688 1248
            WIRE 688 1248 688 1360
            WIRE 688 1248 832 1248
            WIRE 832 1248 832 1392
            WIRE 832 1392 992 1392
        END BRANCH
        BEGIN BRANCH B_inv(31:0)
            WIRE 928 1456 992 1456
        END BRANCH
        BEGIN INSTANCE XLXI_21 544 1488 R0
        END INSTANCE
        BEGIN BRANCH S(31:0)
            WIRE 576 1632 736 1632
        END BRANCH
        IOMARKER 672 1248 B_ini(31:0) R180 28
        IOMARKER 736 1632 S(31:0) R0 28
        IOMARKER 608 2336 ADD_SUB R180 28
        BEGIN BRANCH Cin
            WIRE 1216 2016 1392 2016
        END BRANCH
        INSTANCE XLXI_43 1392 2176 R0
        BEGIN BRANCH XLXN_52
            WIRE 1360 2080 1392 2080
        END BRANCH
        INSTANCE XLXI_23 1024 2240 R0
        INSTANCE XLXI_24 1136 2112 R0
        BEGIN BRANCH XLXN_49
            WIRE 1088 2080 1136 2080
            WIRE 1088 2080 1088 2112
        END BRANCH
        IOMARKER 1216 2016 Cin R180 28
        BEGIN INSTANCE XLXI_59 1552 1536 R0
        END INSTANCE
        BEGIN BRANCH XLXN_112
            WIRE 1712 2048 1792 2048
        END BRANCH
        INSTANCE XLXI_58 1792 2304 R0
        IOMARKER 624 1168 A(31:0) R180 28
        BEGIN BRANCH A(31:0)
            WIRE 624 1168 784 1168
            WIRE 784 1120 1552 1120
            WIRE 784 1120 784 1168
        END BRANCH
        BEGIN BRANCH XLXN_118(31:0)
            WIRE 1376 1392 1376 1568
            WIRE 1376 1568 1552 1568
        END BRANCH
        BEGIN INSTANCE XLXI_60 1552 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_50 992 1552 R0
        END INSTANCE
        BEGIN BRANCH A_CLK(31:0)
            WIRE 1936 1120 1968 1120
            BEGIN DISPLAY 1968 1120 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(31:0)
            WIRE 1936 1568 1968 1568
            BEGIN DISPLAY 1968 1568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_CLK(31:24)
            WIRE 2272 1024 2368 1024
            BEGIN DISPLAY 2272 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(31:24)
            WIRE 2272 1088 2368 1088
            BEGIN DISPLAY 2272 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_CLK(23:16)
            WIRE 2272 1296 2368 1296
            BEGIN DISPLAY 2272 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(23:16)
            WIRE 2272 1360 2368 1360
            BEGIN DISPLAY 2272 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_20 2368 2000 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 2368 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 2368 1728 R0
        END INSTANCE
        BEGIN BRANCH A_CLK(7:0)
            WIRE 2272 1840 2368 1840
            BEGIN DISPLAY 2272 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(7:0)
            WIRE 2272 1904 2368 1904
            BEGIN DISPLAY 2272 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2752 1152 2832 1152
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 2352 1424 2368 1424
            WIRE 2352 1424 2352 1504
            WIRE 2352 1504 2800 1504
            WIRE 2800 1504 2800 1696
            WIRE 2752 1696 2800 1696
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 2352 1696 2368 1696
            WIRE 2352 1696 2352 1776
            WIRE 2352 1776 2800 1776
            WIRE 2800 1776 2800 1968
            WIRE 2752 1968 2800 1968
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 2752 1024 2832 1024
            BEGIN DISPLAY 2832 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 2752 1296 2832 1296
            BEGIN DISPLAY 2832 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 2752 1568 2832 1568
            BEGIN DISPLAY 2832 1568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 2752 1840 2832 1840
            BEGIN DISPLAY 2832 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_CLK(15:8)
            WIRE 2272 1632 2368 1632
            BEGIN DISPLAY 2272 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_CLK(15:8)
            WIRE 2272 1568 2368 1568
            BEGIN DISPLAY 2272 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 2352 1152 2352 1232
            WIRE 2352 1232 2800 1232
            WIRE 2800 1232 2800 1424
            WIRE 2352 1152 2368 1152
            WIRE 2752 1424 2800 1424
        END BRANCH
        BEGIN INSTANCE XLXI_17 2368 1184 R0
        END INSTANCE
        IOMARKER 2832 1152 Cout R0 28
        BEGIN BRANCH XLXN_113
            WIRE 2176 2048 2192 2048
            WIRE 2192 1968 2368 1968
            WIRE 2192 1968 2192 2048
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1120 1680 1280 1680
            WIRE 1280 1632 1280 1680
            WIRE 1280 1632 1520 1632
            WIRE 1520 1632 1552 1632
            WIRE 1520 1632 1520 1920
            WIRE 1520 1920 1712 1920
            WIRE 1712 1920 1712 2176
            WIRE 1712 2176 1792 2176
            WIRE 1520 1184 1552 1184
            WIRE 1520 1184 1520 1632
        END BRANCH
        BEGIN BRANCH EN
            WIRE 1120 1760 1280 1760
            WIRE 1280 1760 1472 1760
            WIRE 1472 1760 1728 1760
            WIRE 1728 1760 1728 2112
            WIRE 1728 2112 1792 2112
            WIRE 1472 992 1552 992
            WIRE 1472 992 1472 1440
            WIRE 1472 1440 1552 1440
            WIRE 1472 1440 1472 1760
        END BRANCH
        BEGIN BRANCH RST
            WIRE 1120 1840 1280 1840
            WIRE 1280 1840 1424 1840
            WIRE 1424 1840 1776 1840
            WIRE 1776 1840 1776 2272
            WIRE 1776 2272 1792 2272
            WIRE 1424 928 1552 928
            WIRE 1424 928 1424 1376
            WIRE 1424 1376 1552 1376
            WIRE 1424 1376 1424 1840
        END BRANCH
        IOMARKER 1120 1680 CLK R180 28
        IOMARKER 1120 1760 EN R180 28
        IOMARKER 1120 1840 RST R180 28
    END SHEET
END SCHEMATIC
