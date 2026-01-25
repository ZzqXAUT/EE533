VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADD_SUB
        SIGNAL LRshift
        SIGNAL in2(31:0)
        SIGNAL Cin
        SIGNAL ANS(31:0)
        SIGNAL Cout
        SIGNAL XLXN_31(31:0)
        SIGNAL XLXN_32(31:0)
        SIGNAL XLXN_42(31:0)
        SIGNAL XLXN_43(31:0)
        SIGNAL XLXN_50
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_61
        SIGNAL OPcode(1:0)
        SIGNAL XLXN_140(31:0)
        SIGNAL XLXN_141(31:0)
        SIGNAL in1(31:0)
        SIGNAL XLXN_145(31:0)
        SIGNAL EN
        SIGNAL CLK
        SIGNAL XLXN_151
        SIGNAL XLXN_152
        SIGNAL XLXN_153
        SIGNAL XLXN_154
        SIGNAL XLXN_155
        SIGNAL XLXN_156
        SIGNAL XLXN_157
        SIGNAL XLXN_158
        SIGNAL XLXN_159
        SIGNAL XLXN_160
        SIGNAL XLXN_161
        SIGNAL XLXN_162
        SIGNAL XLXN_163
        SIGNAL XLXN_164
        SIGNAL RST
        SIGNAL XLXN_168
        SIGNAL XLXN_169
        SIGNAL XLXN_170(31:0)
        SIGNAL XLXN_171(31:0)
        SIGNAL XLXN_172(31:0)
        SIGNAL XLXN_173(31:0)
        SIGNAL XLXN_174(31:0)
        SIGNAL XLXN_175(31:0)
        SIGNAL XLXN_176(31:0)
        SIGNAL XLXN_177(31:0)
        SIGNAL XLXN_178
        SIGNAL XLXN_179
        SIGNAL XLXN_180
        SIGNAL XLXN_183(1:0)
        SIGNAL XLXN_186(31:0)
        SIGNAL XLXN_187
        PORT Input ADD_SUB
        PORT Input LRshift
        PORT Input in2(31:0)
        PORT Input Cin
        PORT Output ANS(31:0)
        PORT Output Cout
        PORT Input OPcode(1:0)
        PORT Input in1(31:0)
        PORT Input EN
        PORT Input CLK
        PORT Input RST
        BEGIN BLOCKDEF FullAdder_32bit
            TIMESTAMP 2026 1 25 0 50 9
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -192 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF Shift_32bit
            TIMESTAMP 2026 1 24 23 15 56
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ORGate_32bit
            TIMESTAMP 2026 1 24 6 25 12
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF AndGate_32bit
            TIMESTAMP 2026 1 24 6 16 45
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCKDEF DFF_2bit
            TIMESTAMP 2026 1 25 0 8 10
            LINE N 64 32 0 32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -192 320 64 
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
        BEGIN BLOCKDEF Mux_32bit_4_1
            TIMESTAMP 2026 1 25 0 37 40
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 FullAdder_32bit
            PIN Cin XLXN_178
            PIN A(31:0) XLXN_174(31:0)
            PIN B_ini(31:0) XLXN_177(31:0)
            PIN ADD_SUB XLXN_179
            PIN Cout XLXN_187
            PIN S(31:0) XLXN_31(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 Shift_32bit
            PIN in1(31:0) XLXN_174(31:0)
            PIN CE XLXN_180
            PIN S(31:0) XLXN_32(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 AndGate_32bit
            PIN A(31:0) XLXN_174(31:0)
            PIN B(31:0) XLXN_177(31:0)
            PIN S(31:0) XLXN_42(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 ORGate_32bit
            PIN A(31:0) XLXN_174(31:0)
            PIN B(31:0) XLXN_177(31:0)
            PIN S(31:0) XLXN_43(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D Cin
            PIN Q XLXN_178
        END BLOCK
        BEGIN BLOCK XLXI_31 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D ADD_SUB
            PIN Q XLXN_179
        END BLOCK
        BEGIN BLOCK XLXI_32 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D LRshift
            PIN Q XLXN_180
        END BLOCK
        BEGIN BLOCK XLXI_36 DFF_2bit
            PIN RST RST
            PIN Data(1:0) OPcode(1:0)
            PIN EN EN
            PIN CLK CLK
            PIN Data_CLK(1:0) XLXN_183(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 DFF_32bit
            PIN RST RST
            PIN CLK CLK
            PIN EN EN
            PIN Data(31:0) in2(31:0)
            PIN Data_CLK(31:0) XLXN_177(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 DFF_32bit
            PIN RST RST
            PIN CLK CLK
            PIN EN EN
            PIN Data(31:0) in1(31:0)
            PIN Data_CLK(31:0) XLXN_174(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_41 Mux_32bit_4_1
            PIN A(31:0) XLXN_31(31:0)
            PIN B(31:0) XLXN_32(31:0)
            PIN C(31:0) XLXN_42(31:0)
            PIN D(31:0) XLXN_43(31:0)
            PIN OP(1:0) XLXN_183(1:0)
            PIN S(31:0) XLXN_186(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_42 DFF_32bit
            PIN RST RST
            PIN CLK CLK
            PIN EN EN
            PIN Data(31:0) XLXN_186(31:0)
            PIN Data_CLK(31:0) ANS(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_43 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D XLXN_187
            PIN Q Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1664 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1664 1376 R0
        END INSTANCE
        BEGIN BRANCH XLXN_31(31:0)
            WIRE 2048 880 2064 880
            WIRE 2064 880 2064 1152
            WIRE 2064 1152 2336 1152
        END BRANCH
        BEGIN BRANCH XLXN_32(31:0)
            WIRE 2048 1216 2336 1216
        END BRANCH
        BEGIN INSTANCE XLXI_5 1664 1648 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1664 1904 R0
        END INSTANCE
        BEGIN BRANCH XLXN_42(31:0)
            WIRE 2048 1552 2064 1552
            WIRE 2064 1280 2336 1280
            WIRE 2064 1280 2064 1552
        END BRANCH
        BEGIN BRANCH XLXN_43(31:0)
            WIRE 2048 1808 2128 1808
            WIRE 2128 1344 2128 1808
            WIRE 2128 1344 2336 1344
        END BRANCH
        INSTANCE XLXI_30 1040 1392 R0
        INSTANCE XLXI_31 1040 1728 R0
        INSTANCE XLXI_32 1040 2064 R0
        BEGIN INSTANCE XLXI_36 1040 2288 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_39 1040 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_40 1040 464 R0
        END INSTANCE
        BEGIN BRANCH ADD_SUB
            WIRE 368 736 672 736
            WIRE 672 736 672 1472
            WIRE 672 1472 1040 1472
        END BRANCH
        BEGIN BRANCH LRshift
            WIRE 368 816 656 816
            WIRE 656 816 656 1808
            WIRE 656 1808 1040 1808
        END BRANCH
        BEGIN BRANCH OPcode(1:0)
            WIRE 368 896 640 896
            WIRE 640 896 640 2128
            WIRE 640 2128 1040 2128
        END BRANCH
        BEGIN BRANCH in2(31:0)
            WIRE 368 576 704 576
            WIRE 704 576 704 896
            WIRE 704 896 1040 896
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 368 656 688 656
            WIRE 688 656 688 1136
            WIRE 688 1136 1040 1136
        END BRANCH
        BEGIN BRANCH in1(31:0)
            WIRE 368 496 1040 496
        END BRANCH
        BEGIN BRANCH EN
            WIRE 368 976 1008 976
            WIRE 1008 976 1008 1200
            WIRE 1008 1200 1040 1200
            WIRE 1008 1200 1008 1536
            WIRE 1008 1536 1040 1536
            WIRE 1008 1536 1008 1872
            WIRE 1008 1872 1040 1872
            WIRE 1008 1872 1008 2256
            WIRE 1008 2256 1040 2256
            WIRE 1008 368 1040 368
            WIRE 1008 368 1008 768
            WIRE 1008 768 1008 976
            WIRE 1008 768 1040 768
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 368 1056 976 1056
            WIRE 976 1056 1024 1056
            WIRE 976 1056 976 1264
            WIRE 976 1264 1040 1264
            WIRE 976 1264 976 1600
            WIRE 976 1600 1040 1600
            WIRE 976 1600 976 1936
            WIRE 976 1936 1040 1936
            WIRE 976 1936 976 2320
            WIRE 976 2320 1040 2320
            WIRE 976 560 1040 560
            WIRE 976 560 976 1056
            WIRE 1024 960 1024 1056
            WIRE 1024 960 1040 960
        END BRANCH
        IOMARKER 368 736 ADD_SUB R180 28
        IOMARKER 368 816 LRshift R180 28
        IOMARKER 368 896 OPcode(1:0) R180 28
        IOMARKER 368 576 in2(31:0) R180 28
        IOMARKER 368 656 Cin R180 28
        IOMARKER 368 976 EN R180 28
        IOMARKER 368 1056 CLK R180 28
        IOMARKER 368 496 in1(31:0) R180 28
        BEGIN BRANCH RST
            WIRE 368 1232 944 1232
            WIRE 944 1232 944 1360
            WIRE 944 1360 1040 1360
            WIRE 944 1360 944 1696
            WIRE 944 1696 1040 1696
            WIRE 944 1696 944 2032
            WIRE 944 2032 1040 2032
            WIRE 944 2032 944 2192
            WIRE 944 2192 1040 2192
            WIRE 944 304 1040 304
            WIRE 944 304 944 704
            WIRE 944 704 944 1232
            WIRE 944 704 1040 704
        END BRANCH
        BEGIN BRANCH ANS(31:0)
            WIRE 208 1312 368 1312
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 208 1392 368 1392
        END BRANCH
        IOMARKER 368 1232 RST R180 28
        IOMARKER 368 1312 ANS(31:0) R0 28
        IOMARKER 368 1392 Cout R0 28
        BEGIN BRANCH XLXN_174(31:0)
            WIRE 1424 496 1600 496
            WIRE 1600 496 1600 816
            WIRE 1600 816 1664 816
            WIRE 1600 816 1600 1216
            WIRE 1600 1216 1664 1216
            WIRE 1600 1216 1600 1552
            WIRE 1600 1552 1664 1552
            WIRE 1600 1552 1600 1808
            WIRE 1600 1808 1664 1808
        END BRANCH
        BEGIN BRANCH XLXN_177(31:0)
            WIRE 1424 896 1536 896
            WIRE 1536 896 1536 944
            WIRE 1536 944 1664 944
            WIRE 1536 944 1536 1616
            WIRE 1536 1616 1664 1616
            WIRE 1536 1616 1536 1872
            WIRE 1536 1872 1664 1872
        END BRANCH
        BEGIN BRANCH XLXN_178
            WIRE 1424 1136 1520 1136
            WIRE 1520 752 1520 1136
            WIRE 1520 752 1664 752
        END BRANCH
        BEGIN BRANCH XLXN_179
            WIRE 1424 1472 1552 1472
            WIRE 1552 1008 1552 1472
            WIRE 1552 1008 1664 1008
        END BRANCH
        BEGIN BRANCH XLXN_180
            WIRE 1424 1808 1520 1808
            WIRE 1520 1344 1664 1344
            WIRE 1520 1344 1520 1808
        END BRANCH
        BEGIN INSTANCE XLXI_41 2336 1440 R0
        END INSTANCE
        BEGIN BRANCH XLXN_183(1:0)
            WIRE 1424 2320 2336 2320
            WIRE 2336 1408 2336 2320
        END BRANCH
        BEGIN BRANCH ANS(31:0)
            WIRE 3200 1152 3280 1152
            BEGIN DISPLAY 3280 1152 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_43 2816 800 R0
        BEGIN BRANCH XLXN_187
            WIRE 2048 752 2432 752
            WIRE 2432 544 2432 752
            WIRE 2432 544 2816 544
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 3200 544 3232 544
            BEGIN DISPLAY 3232 544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EN
            WIRE 2624 608 2672 608
            WIRE 2672 608 2816 608
            WIRE 2672 608 2672 1024
            WIRE 2672 1024 2816 1024
            BEGIN DISPLAY 2624 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_186(31:0)
            WIRE 2720 1152 2816 1152
        END BRANCH
        BEGIN INSTANCE XLXI_42 2816 1120 R0
        END INSTANCE
        BEGIN BRANCH RST
            WIRE 2768 768 2800 768
            WIRE 2800 768 2816 768
            WIRE 2800 768 2800 960
            WIRE 2800 960 2816 960
            BEGIN DISPLAY 2768 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2704 672 2736 672
            WIRE 2736 672 2816 672
            WIRE 2736 672 2736 1216
            WIRE 2736 1216 2816 1216
            BEGIN DISPLAY 2704 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
