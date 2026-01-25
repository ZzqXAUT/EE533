VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        BEGIN SIGNAL Cin(31:16)
        END SIGNAL
        BEGIN SIGNAL Cin(15:0)
        END SIGNAL
        BEGIN SIGNAL Cout(15:0)
        END SIGNAL
        BEGIN SIGNAL Cout(31:16)
        END SIGNAL
        SIGNAL Cin(31:0)
        SIGNAL Cout(31:0)
        PORT Input Cin(31:0)
        PORT Output Cout(31:0)
        BEGIN BLOCKDEF inv16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 160 -44 224 -20 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv16
            PIN I(15:0) Cin(31:16)
            PIN O(15:0) Cout(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv16
            PIN I(15:0) Cin(15:0)
            PIN O(15:0) Cout(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1040 592 R0
        BEGIN BRANCH Cin(31:16)
            WIRE 960 560 1024 560
            WIRE 1024 560 1040 560
            BEGIN DISPLAY 960 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_2 1040 752 R0
        BEGIN BRANCH Cin(15:0)
            WIRE 960 720 1040 720
            BEGIN DISPLAY 960 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout(15:0)
            WIRE 1264 720 1360 720
            BEGIN DISPLAY 1360 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout(31:16)
            WIRE 1264 560 1360 560
            BEGIN DISPLAY 1360 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin(31:0)
            WIRE 960 800 1120 800
        END BRANCH
        BEGIN BRANCH Cout(31:0)
            WIRE 960 880 1120 880
        END BRANCH
        IOMARKER 960 800 Cin(31:0) R180 28
        IOMARKER 1120 880 Cout(31:0) R0 28
    END SHEET
END SCHEMATIC
