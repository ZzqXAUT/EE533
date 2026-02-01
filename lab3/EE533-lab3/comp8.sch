VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        BEGIN SIGNAL A(0)
        END SIGNAL
        BEGIN SIGNAL B(0)
        END SIGNAL
        BEGIN SIGNAL A(1)
        END SIGNAL
        BEGIN SIGNAL B(1)
        END SIGNAL
        BEGIN SIGNAL A(2)
        END SIGNAL
        BEGIN SIGNAL B(2)
        END SIGNAL
        BEGIN SIGNAL A(3)
        END SIGNAL
        BEGIN SIGNAL B(3)
        END SIGNAL
        BEGIN SIGNAL A(4)
        END SIGNAL
        BEGIN SIGNAL B(4)
        END SIGNAL
        BEGIN SIGNAL A(5)
        END SIGNAL
        BEGIN SIGNAL B(5)
        END SIGNAL
        BEGIN SIGNAL A(6)
        END SIGNAL
        BEGIN SIGNAL B(6)
        END SIGNAL
        BEGIN SIGNAL A(7)
        END SIGNAL
        BEGIN SIGNAL B(7)
        END SIGNAL
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL EQ
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Output EQ
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xnor2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_2 xnor2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_3 xnor2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_4 xnor2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_5 xnor2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_6 xnor2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_7 xnor2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_8 xnor2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 XLXN_28
            PIN I1 XLXN_27
            PIN O EQ
        END BLOCK
        BEGIN BLOCK XLXI_10 and4
            PIN I0 XLXN_22
            PIN I1 XLXN_21
            PIN I2 XLXN_20
            PIN I3 XLXN_19
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_11 and4
            PIN I0 XLXN_26
            PIN I1 XLXN_25
            PIN I2 XLXN_24
            PIN I3 XLXN_23
            PIN O XLXN_28
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 832 384 R0
        INSTANCE XLXI_2 832 544 R0
        INSTANCE XLXI_3 832 704 R0
        INSTANCE XLXI_4 832 864 R0
        INSTANCE XLXI_6 832 1184 R0
        INSTANCE XLXI_7 832 1344 R0
        INSTANCE XLXI_8 832 1504 R0
        INSTANCE XLXI_5 832 1024 R0
        BEGIN BRANCH A(0)
            WIRE 800 256 832 256
            BEGIN DISPLAY 800 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 800 320 832 320
            BEGIN DISPLAY 800 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 800 416 832 416
            BEGIN DISPLAY 800 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 800 480 832 480
            BEGIN DISPLAY 800 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 800 576 832 576
            BEGIN DISPLAY 800 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 800 640 832 640
            BEGIN DISPLAY 800 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 800 736 832 736
            BEGIN DISPLAY 800 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 800 800 832 800
            BEGIN DISPLAY 800 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 800 896 832 896
            BEGIN DISPLAY 800 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 800 960 832 960
            BEGIN DISPLAY 800 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 800 1056 832 1056
            BEGIN DISPLAY 800 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 800 1120 832 1120
            BEGIN DISPLAY 800 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 800 1216 832 1216
            BEGIN DISPLAY 800 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 800 1280 832 1280
            BEGIN DISPLAY 800 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 800 1376 832 1376
            BEGIN DISPLAY 800 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 800 1440 832 1440
            BEGIN DISPLAY 800 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1440 704 R0
        INSTANCE XLXI_11 1440 1312 R0
        BEGIN BRANCH XLXN_19
            WIRE 1088 288 1440 288
            WIRE 1440 288 1440 448
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1088 448 1264 448
            WIRE 1264 448 1264 512
            WIRE 1264 512 1440 512
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1088 608 1264 608
            WIRE 1264 576 1264 608
            WIRE 1264 576 1440 576
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1088 768 1440 768
            WIRE 1440 640 1440 768
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1088 928 1440 928
            WIRE 1440 928 1440 1056
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1088 1088 1264 1088
            WIRE 1264 1088 1264 1120
            WIRE 1264 1120 1440 1120
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1088 1248 1264 1248
            WIRE 1264 1184 1264 1248
            WIRE 1264 1184 1440 1184
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1088 1408 1440 1408
            WIRE 1440 1248 1440 1408
        END BRANCH
        INSTANCE XLXI_9 1776 960 R0
        BEGIN BRANCH XLXN_27
            WIRE 1696 544 1728 544
            WIRE 1728 544 1728 832
            WIRE 1728 832 1776 832
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1696 1152 1728 1152
            WIRE 1728 896 1728 1152
            WIRE 1728 896 1776 896
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 2032 864 2064 864
        END BRANCH
        IOMARKER 2064 864 EQ R0 28
        BEGIN BRANCH A(7:0)
            WIRE 480 480 640 480
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 480 560 640 560
        END BRANCH
        IOMARKER 480 480 A(7:0) R180 28
        IOMARKER 480 560 B(7:0) R180 28
    END SHEET
END SCHEMATIC
