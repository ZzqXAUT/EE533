VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL RST
        SIGNAL Data(31:16)
        SIGNAL Data_CLK(31:0)
        SIGNAL Data_CLK(31:16)
        SIGNAL Data_CLK(15:0)
        SIGNAL Data(15:0)
        SIGNAL CLK
        SIGNAL EN
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL Data(31:0)
        PORT Input RST
        PORT Output Data_CLK(31:0)
        PORT Input CLK
        PORT Input EN
        PORT Input Data(31:0)
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16ce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D(15:0) Data(31:16)
            PIN Q(15:0) Data_CLK(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D(15:0) Data(15:0)
            PIN Q(15:0) Data_CLK(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 976 1600 R0
        INSTANCE XLXI_1 976 1184 R0
        BEGIN BRANCH RST
            WIRE 720 1360 752 1360
            WIRE 752 1360 752 1568
            WIRE 752 1568 976 1568
            WIRE 752 1152 752 1360
            WIRE 752 1152 976 1152
        END BRANCH
        IOMARKER 720 1360 RST R180 28
        BEGIN BRANCH Data(31:16)
            WIRE 912 928 976 928
            BEGIN DISPLAY 912 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Data_CLK(31:0)
            WIRE 576 800 704 800
        END BRANCH
        IOMARKER 704 800 Data_CLK(31:0) R0 28
        BEGIN BRANCH Data_CLK(31:16)
            WIRE 1360 928 1440 928
            BEGIN DISPLAY 1440 928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Data_CLK(15:0)
            WIRE 1360 1344 1440 1344
            BEGIN DISPLAY 1440 1344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Data(15:0)
            WIRE 912 1344 976 1344
            BEGIN DISPLAY 912 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 688 1056 928 1056
            WIRE 928 1056 976 1056
            WIRE 928 1056 928 1472
            WIRE 928 1472 976 1472
        END BRANCH
        BEGIN BRANCH EN
            WIRE 672 992 832 992
            WIRE 832 992 976 992
            WIRE 832 992 832 1408
            WIRE 832 1408 976 1408
        END BRANCH
        IOMARKER 688 1056 CLK R180 28
        IOMARKER 672 992 EN R180 28
        BEGIN BRANCH Data(31:0)
            WIRE 736 512 864 512
        END BRANCH
        IOMARKER 736 512 Data(31:0) R180 28
    END SHEET
END SCHEMATIC
