VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL RST
        SIGNAL Data_CLK(0)
        SIGNAL Data(0)
        SIGNAL Data(1)
        SIGNAL Data(1:0)
        SIGNAL Data_CLK(1:0)
        SIGNAL Data_CLK(1)
        SIGNAL EN
        SIGNAL CLK
        SIGNAL XLXN_34
        PORT Input RST
        PORT Input Data(1:0)
        PORT Output Data_CLK(1:0)
        PORT Input EN
        PORT Input CLK
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
        BEGIN BLOCK XLXI_5 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D Data(1)
            PIN Q Data_CLK(1)
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C CLK
            PIN CE EN
            PIN CLR RST
            PIN D Data(0)
            PIN Q Data_CLK(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH RST
            WIRE 1984 1008 2016 1008
            WIRE 2016 1008 2016 1216
            WIRE 2016 1216 2240 1216
            WIRE 2016 864 2016 1008
            WIRE 2016 864 2240 864
        END BRANCH
        BEGIN BRANCH Data_CLK(0)
            WIRE 2624 992 2704 992
            BEGIN DISPLAY 2704 992 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1984 1008 RST R180 28
        INSTANCE XLXI_5 2240 896 R0
        INSTANCE XLXI_6 2240 1248 R0
        BEGIN BRANCH Data(0)
            WIRE 2208 992 2240 992
            BEGIN DISPLAY 2208 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Data(1)
            WIRE 2208 640 2240 640
            BEGIN DISPLAY 2208 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Data(1:0)
            WIRE 1968 320 2128 320
        END BRANCH
        BEGIN BRANCH Data_CLK(1:0)
            WIRE 1824 560 1984 560
        END BRANCH
        IOMARKER 1968 320 Data(1:0) R180 28
        IOMARKER 1984 560 Data_CLK(1:0) R0 28
        BEGIN BRANCH Data_CLK(1)
            WIRE 2624 640 2704 640
            BEGIN DISPLAY 2704 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EN
            WIRE 1904 704 2192 704
            WIRE 2192 704 2240 704
            WIRE 2192 704 2192 1056
            WIRE 2192 1056 2240 1056
        END BRANCH
        IOMARKER 1904 704 EN R180 28
        BEGIN BRANCH CLK
            WIRE 1920 768 2080 768
            WIRE 2080 768 2240 768
            WIRE 2080 768 2080 1120
            WIRE 2080 1120 2240 1120
        END BRANCH
        IOMARKER 1920 768 CLK R180 28
    END SHEET
END SCHEMATIC
