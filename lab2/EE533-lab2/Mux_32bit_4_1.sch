VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL C(31:0)
        SIGNAL D(31:0)
        SIGNAL OP(0)
        SIGNAL OP(1)
        SIGNAL S(31:0)
        SIGNAL OP(1:0)
        SIGNAL XLXN_16(31:0)
        SIGNAL XLXN_17(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input C(31:0)
        PORT Input D(31:0)
        PORT Output S(31:0)
        PORT Input OP(1:0)
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
        BEGIN BLOCK XLXI_10 Mux_32bit_2_1
            PIN in1(31:0) A(31:0)
            PIN in2(31:0) B(31:0)
            PIN OP OP(0)
            PIN S(31:0) XLXN_16(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 Mux_32bit_2_1
            PIN in1(31:0) C(31:0)
            PIN in2(31:0) D(31:0)
            PIN OP OP(0)
            PIN S(31:0) XLXN_17(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 Mux_32bit_2_1
            PIN in1(31:0) XLXN_16(31:0)
            PIN in2(31:0) XLXN_17(31:0)
            PIN OP OP(1)
            PIN S(31:0) S(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_10 816 736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 816 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1472 928 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 784 576 816 576
        END BRANCH
        IOMARKER 784 576 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 784 640 816 640
        END BRANCH
        IOMARKER 784 640 B(31:0) R180 28
        BEGIN BRANCH C(31:0)
            WIRE 784 960 816 960
        END BRANCH
        IOMARKER 784 960 C(31:0) R180 28
        BEGIN BRANCH D(31:0)
            WIRE 784 1024 816 1024
        END BRANCH
        IOMARKER 784 1024 D(31:0) R180 28
        BEGIN BRANCH OP(0)
            WIRE 784 1152 816 1152
            BEGIN DISPLAY 784 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OP(0)
            WIRE 784 768 816 768
            BEGIN DISPLAY 784 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OP(1)
            WIRE 1440 960 1472 960
            BEGIN DISPLAY 1440 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1856 768 1888 768
        END BRANCH
        IOMARKER 1888 768 S(31:0) R0 28
        BEGIN BRANCH OP(1:0)
            WIRE 1408 464 1552 464
        END BRANCH
        IOMARKER 1408 464 OP(1:0) R180 28
        BEGIN BRANCH XLXN_16(31:0)
            WIRE 1200 576 1328 576
            WIRE 1328 576 1328 768
            WIRE 1328 768 1472 768
        END BRANCH
        BEGIN BRANCH XLXN_17(31:0)
            WIRE 1200 960 1328 960
            WIRE 1328 832 1328 960
            WIRE 1328 832 1472 832
        END BRANCH
    END SHEET
END SCHEMATIC
