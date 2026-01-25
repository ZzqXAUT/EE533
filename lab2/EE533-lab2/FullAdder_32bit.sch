VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_52
        SIGNAL Cin
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL S(7:0)
        SIGNAL S(15:8)
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL XLXN_40
        SIGNAL XLXN_42
        SIGNAL XLXN_45
        SIGNAL Cout
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL XLXN_93
        SIGNAL XLXN_49
        SIGNAL A(31:0)
        SIGNAL B_ini(31:0)
        SIGNAL B_inv(31:0)
        SIGNAL S(31:0)
        SIGNAL ADD_SUB
        SIGNAL B(31:0)
        PORT Input Cin
        PORT Output Cout
        PORT Input A(31:0)
        PORT Input B_ini(31:0)
        PORT Output S(31:0)
        PORT Input ADD_SUB
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
        BEGIN BLOCK XLXI_43 m2_1
            PIN D0 Cin
            PIN D1 XLXN_52
            PIN S0 ADD_SUB
            PIN O XLXN_93
        END BLOCK
        BEGIN BLOCK XLXI_19 FullAdder_8bit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cin XLXN_40
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_17 FullAdder_8bit
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN Cin XLXN_45
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
        BEGIN BLOCK XLXI_18 FullAdder_8bit
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cin XLXN_42
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_20 FullAdder_8bit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cin XLXN_93
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_23 gnd
            PIN G XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I XLXN_49
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_21 INV_32bit
            PIN Cin(31:0) B_ini(31:0)
            PIN Cout(31:0) B_inv(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_50 Mux_32bit_2_1
            PIN in1(31:0) B_ini(31:0)
            PIN in2(31:0) B_inv(31:0)
            PIN OP ADD_SUB
            PIN S(31:0) B(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Cin
            WIRE 816 1520 992 1520
        END BRANCH
        BEGIN INSTANCE XLXI_19 1376 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 1376 688 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 1376 960 R0
        END INSTANCE
        BEGIN BRANCH A(31:24)
            WIRE 1280 528 1376 528
            BEGIN DISPLAY 1280 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 1280 592 1376 592
            BEGIN DISPLAY 1280 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1280 800 1376 800
            BEGIN DISPLAY 1280 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1280 864 1376 864
            BEGIN DISPLAY 1280 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1280 1072 1376 1072
            BEGIN DISPLAY 1280 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1280 1136 1376 1136
            BEGIN DISPLAY 1280 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1760 1344 1840 1344
            BEGIN DISPLAY 1840 1344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1760 1072 1840 1072
            BEGIN DISPLAY 1840 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1760 800 1840 800
            BEGIN DISPLAY 1840 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1760 528 1840 528
            BEGIN DISPLAY 1840 528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1360 1200 1376 1200
            WIRE 1360 1200 1360 1280
            WIRE 1360 1280 1808 1280
            WIRE 1808 1280 1808 1472
            WIRE 1760 1472 1808 1472
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1360 928 1376 928
            WIRE 1360 928 1360 1008
            WIRE 1360 1008 1808 1008
            WIRE 1808 1008 1808 1200
            WIRE 1760 1200 1808 1200
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1360 656 1376 656
            WIRE 1360 656 1360 736
            WIRE 1360 736 1808 736
            WIRE 1808 736 1808 928
            WIRE 1760 928 1808 928
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1760 656 1840 656
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1280 1408 1376 1408
            BEGIN DISPLAY 1280 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1280 1344 1376 1344
            BEGIN DISPLAY 1280 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_20 1376 1504 R0
        END INSTANCE
        IOMARKER 1840 656 Cout R0 28
        INSTANCE XLXI_43 992 1680 R0
        BEGIN BRANCH XLXN_52
            WIRE 960 1584 992 1584
        END BRANCH
        BEGIN BRANCH XLXN_93
            WIRE 1312 1552 1344 1552
            WIRE 1344 1472 1376 1472
            WIRE 1344 1472 1344 1552
        END BRANCH
        INSTANCE XLXI_23 624 1744 R0
        INSTANCE XLXI_24 736 1616 R0
        BEGIN BRANCH XLXN_49
            WIRE 688 1584 736 1584
            WIRE 688 1584 688 1616
        END BRANCH
        IOMARKER 816 1520 Cin R180 28
        BEGIN BRANCH A(31:0)
            WIRE 336 688 496 688
        END BRANCH
        BEGIN BRANCH B_ini(31:0)
            WIRE 160 880 160 976
            WIRE 160 976 208 976
            WIRE 160 880 352 880
            WIRE 336 768 352 768
            WIRE 352 768 352 880
            WIRE 352 768 512 768
            WIRE 512 768 512 912
            WIRE 512 912 688 912
        END BRANCH
        BEGIN BRANCH B_inv(31:0)
            WIRE 592 976 656 976
            WIRE 656 976 688 976
            BEGIN DISPLAY 656 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_21 208 1008 R0
        END INSTANCE
        BEGIN BRANCH S(31:0)
            WIRE 240 1152 400 1152
        END BRANCH
        IOMARKER 336 688 A(31:0) R180 28
        IOMARKER 336 768 B_ini(31:0) R180 28
        IOMARKER 400 1152 S(31:0) R0 28
        BEGIN BRANCH ADD_SUB
            WIRE 480 1840 576 1840
            WIRE 576 1840 960 1840
            WIRE 576 1104 576 1840
            WIRE 576 1104 688 1104
            WIRE 960 1648 992 1648
            WIRE 960 1648 960 1840
        END BRANCH
        IOMARKER 480 1840 ADD_SUB R180 28
        BEGIN INSTANCE XLXI_50 688 1072 R0
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 1072 912 1104 912
            BEGIN DISPLAY 1104 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
