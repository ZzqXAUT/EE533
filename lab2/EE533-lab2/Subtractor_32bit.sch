VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:24)
        SIGNAL B_inv(31:24)
        SIGNAL A(23:16)
        SIGNAL B_inv(23:16)
        SIGNAL A(15:8)
        SIGNAL B_inv(15:8)
        SIGNAL A(7:0)
        SIGNAL B_inv(7:0)
        SIGNAL S(7:0)
        SIGNAL S(15:8)
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL XLXN_40
        SIGNAL XLXN_42
        SIGNAL XLXN_45
        SIGNAL Cout
        SIGNAL XLXN_49
        SIGNAL XLXN_52
        SIGNAL B(31:0)
        SIGNAL XLXN_58(31:0)
        SIGNAL A(31:0)
        BEGIN SIGNAL B_inv(31:0)
        END SIGNAL
        SIGNAL S(31:0)
        PORT Output Cout
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output S(31:0)
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
        BEGIN BLOCKDEF INV_32bit
            TIMESTAMP 2026 1 24 4 36 55
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
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
        BEGIN BLOCK XLXI_19 FullAdder_8bit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B_inv(15:8)
            PIN Cin XLXN_40
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_17 FullAdder_8bit
            PIN A(7:0) A(31:24)
            PIN B(7:0) B_inv(31:24)
            PIN Cin XLXN_45
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
        BEGIN BLOCK XLXI_18 FullAdder_8bit
            PIN A(7:0) A(23:16)
            PIN B(7:0) B_inv(23:16)
            PIN Cin XLXN_42
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_20 FullAdder_8bit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B_inv(7:0)
            PIN Cin XLXN_52
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I XLXN_49
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_23 gnd
            PIN G XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_21 INV_32bit
            PIN Cin(31:0) B(31:0)
            PIN Cout(31:0) B_inv(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_19 1040 1216 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 1040 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 1040 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1040 1488 R0
        END INSTANCE
        BEGIN BRANCH A(31:24)
            WIRE 944 512 1040 512
            BEGIN DISPLAY 944 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_inv(31:24)
            WIRE 944 576 1040 576
            BEGIN DISPLAY 944 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 944 784 1040 784
            BEGIN DISPLAY 944 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_inv(23:16)
            WIRE 944 848 1040 848
            BEGIN DISPLAY 944 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 944 1056 1040 1056
            BEGIN DISPLAY 944 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_inv(15:8)
            WIRE 944 1120 1040 1120
            BEGIN DISPLAY 944 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 944 1328 1040 1328
            BEGIN DISPLAY 944 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_inv(7:0)
            WIRE 944 1392 1040 1392
            BEGIN DISPLAY 944 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1424 1328 1504 1328
            BEGIN DISPLAY 1504 1328 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1424 1056 1504 1056
            BEGIN DISPLAY 1504 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1424 784 1504 784
            BEGIN DISPLAY 1504 784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1424 512 1504 512
            BEGIN DISPLAY 1504 512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1024 1184 1040 1184
            WIRE 1024 1184 1024 1264
            WIRE 1024 1264 1472 1264
            WIRE 1472 1264 1472 1456
            WIRE 1424 1456 1472 1456
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1024 912 1040 912
            WIRE 1024 912 1024 992
            WIRE 1024 992 1472 992
            WIRE 1472 992 1472 1184
            WIRE 1424 1184 1472 1184
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1024 640 1040 640
            WIRE 1024 640 1024 720
            WIRE 1024 720 1472 720
            WIRE 1472 720 1472 912
            WIRE 1424 912 1472 912
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1424 640 1504 640
        END BRANCH
        IOMARKER 1504 640 Cout R0 28
        INSTANCE XLXI_23 688 1616 R0
        INSTANCE XLXI_24 800 1488 R0
        BEGIN BRANCH XLXN_49
            WIRE 752 1456 800 1456
            WIRE 752 1456 752 1488
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 1024 1456 1040 1456
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 320 720 336 720
            WIRE 336 720 352 720
        END BRANCH
        BEGIN INSTANCE XLXI_21 352 752 R0
        END INSTANCE
        IOMARKER 320 720 B(31:0) R180 28
        BEGIN BRANCH A(31:0)
            WIRE 320 608 480 608
        END BRANCH
        IOMARKER 320 608 A(31:0) R180 28
        BEGIN BRANCH B_inv(31:0)
            WIRE 736 720 768 720
            WIRE 768 720 816 720
            BEGIN DISPLAY 816 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 192 832 352 832
        END BRANCH
        IOMARKER 352 832 S(31:0) R0 28
    END SHEET
END SCHEMATIC
