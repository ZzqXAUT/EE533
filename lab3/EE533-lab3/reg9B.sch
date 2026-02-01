VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(71:0)
        SIGNAL Q(71:0)
        BEGIN SIGNAL D(71:64)
        END SIGNAL
        BEGIN SIGNAL D(63:48)
        END SIGNAL
        BEGIN SIGNAL D(47:32)
        END SIGNAL
        BEGIN SIGNAL D(31:16)
        END SIGNAL
        BEGIN SIGNAL D(15:0)
        END SIGNAL
        BEGIN SIGNAL Q(71:64)
        END SIGNAL
        BEGIN SIGNAL Q(63:48)
        END SIGNAL
        BEGIN SIGNAL Q(47:32)
        END SIGNAL
        BEGIN SIGNAL Q(31:16)
        END SIGNAL
        BEGIN SIGNAL Q(15:0)
        END SIGNAL
        SIGNAL CE
        SIGNAL CLK
        SIGNAL CLR
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
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
        PORT Input D(71:0)
        PORT Output Q(71:0)
        PORT Input CE
        PORT Input CLK
        PORT Input CLR
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
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(63:48)
            PIN Q(15:0) Q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(47:32)
            PIN Q(15:0) Q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(31:16)
            PIN Q(15:0) Q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) D(15:0)
            PIN Q(15:0) Q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) D(71:64)
            PIN Q(7:0) Q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1056 880 R0
        INSTANCE XLXI_2 1056 1280 R0
        INSTANCE XLXI_3 1056 1680 R0
        INSTANCE XLXI_4 1056 2080 R0
        INSTANCE XLXI_5 1056 480 R0
        BEGIN BRANCH D(71:0)
            WIRE 560 160 720 160
        END BRANCH
        BEGIN BRANCH Q(71:0)
            WIRE 560 240 720 240
        END BRANCH
        IOMARKER 560 160 D(71:0) R180 28
        IOMARKER 720 240 Q(71:0) R0 28
        BEGIN BRANCH D(71:64)
            WIRE 1024 224 1056 224
            BEGIN DISPLAY 1024 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(63:48)
            WIRE 1024 624 1056 624
            BEGIN DISPLAY 1024 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(47:32)
            WIRE 1024 1024 1056 1024
            BEGIN DISPLAY 1024 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 1024 1424 1056 1424
            BEGIN DISPLAY 1024 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 1024 1824 1056 1824
            BEGIN DISPLAY 1024 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(71:64)
            WIRE 1440 224 1472 224
            BEGIN DISPLAY 1472 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(63:48)
            WIRE 1440 624 1472 624
            BEGIN DISPLAY 1472 624 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(47:32)
            WIRE 1440 1024 1472 1024
            BEGIN DISPLAY 1472 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:16)
            WIRE 1440 1424 1472 1424
            BEGIN DISPLAY 1472 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 1440 1824 1472 1824
            BEGIN DISPLAY 1472 1824 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 480 640 720 640
            WIRE 720 640 720 688
            WIRE 720 688 1056 688
            WIRE 720 640 720 1088
            WIRE 720 1088 1056 1088
            WIRE 720 1088 720 1488
            WIRE 720 1488 1056 1488
            WIRE 720 1488 720 1888
            WIRE 720 1888 1056 1888
            WIRE 720 288 1056 288
            WIRE 720 288 720 640
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 480 720 640 720
            WIRE 640 720 800 720
            WIRE 800 720 800 752
            WIRE 800 752 1056 752
            WIRE 800 752 800 1152
            WIRE 800 1152 1056 1152
            WIRE 800 1152 800 1552
            WIRE 800 1552 1056 1552
            WIRE 800 1552 800 1952
            WIRE 800 1952 1056 1952
            WIRE 800 352 1056 352
            WIRE 800 352 800 720
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 480 800 640 800
            WIRE 640 800 880 800
            WIRE 880 800 880 848
            WIRE 880 848 1056 848
            WIRE 880 848 880 1248
            WIRE 880 1248 1056 1248
            WIRE 880 1248 880 1648
            WIRE 880 1648 1056 1648
            WIRE 880 1648 880 2048
            WIRE 880 2048 1056 2048
            WIRE 880 448 1056 448
            WIRE 880 448 880 800
        END BRANCH
        IOMARKER 480 640 CE R180 28
        IOMARKER 480 720 CLK R180 28
        IOMARKER 480 800 CLR R180 28
    END SHEET
END SCHEMATIC
