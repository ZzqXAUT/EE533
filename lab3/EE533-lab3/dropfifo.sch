VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL fifowrite
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL in_fifo(71:0)
        SIGNAL drop_pkt
        SIGNAL XLXN_10
        SIGNAL XLXN_20
        SIGNAL XLXN_21(7:0)
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL fiforead
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL valid_data
        SIGNAL XLXN_40(7:0)
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_45(7:0)
        SIGNAL XLXN_46(71:0)
        SIGNAL XLXN_49
        SIGNAL clk
        SIGNAL rst
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input clk
        PORT Input rst
        BEGIN BLOCKDEF dualport9B
            TIMESTAMP 2026 2 1 0 30 33
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 31 8 32 24
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 1 30 2 57 18
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 reg9B
            PIN D(71:0) in_fifo(71:0)
            PIN CE XLXN_38
            PIN CLK clk
            PIN CLR rst
            PIN Q(71:0) XLXN_46(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_7 fd8ce
            PIN C clk
            PIN CE XLXN_20
            PIN CLR rst
            PIN D(7:0) XLXN_45(7:0)
            PIN Q(7:0) XLXN_21(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 and2b1
            PIN I0 XLXN_10
            PIN I1 XLXN_6
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_1 dualport9B
            PIN clka clk
            PIN clkb clk
            PIN wea XLXN_49
            PIN addra(7:0) XLXN_45(7:0)
            PIN addrb(7:0) XLXN_40(7:0)
            PIN dina(71:0) XLXN_46(71:0)
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8cle
            PIN C clk
            PIN CE XLXN_49
            PIN CLR rst
            PIN D(7:0) XLXN_21(7:0)
            PIN L XLXN_10
            PIN CEO
            PIN Q(7:0) XLXN_45(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8ce
            PIN C clk
            PIN CE XLXN_37
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) XLXN_40(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_37
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLo comp8
            PIN A(7:0) XLXN_45(7:0)
            PIN B(7:0) XLXN_40(7:0)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) XLXN_40(7:0)
            PIN B(7:0) XLXN_21(7:0)
            PIN EQ XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_29 and3b2
            PIN I0 XLXN_24
            PIN I1 XLXN_23
            PIN I2 fiforead
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_30 vcc
            PIN P XLXN_38
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 336 640 R0
        INSTANCE XLXI_5 336 1040 R0
        INSTANCE XLXI_7 336 1440 R0
        BEGIN BRANCH firstword
            WIRE 256 384 336 384
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 256 784 336 784
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1024 384 1040 384
        END BRANCH
        INSTANCE XLXI_4 1040 640 R0
        IOMARKER 1024 384 fifowrite R180 28
        INSTANCE XLXI_14 912 784 R0
        BEGIN BRANCH XLXN_4
            WIRE 720 384 816 384
            WIRE 816 384 816 656
            WIRE 816 656 912 656
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 720 784 816 784
            WIRE 816 720 816 784
            WIRE 816 720 912 720
        END BRANCH
        INSTANCE XLXI_13 1232 816 R0
        BEGIN BRANCH XLXN_6
            WIRE 1168 688 1232 688
        END BRANCH
        BEGIN INSTANCE XLXI_2 1936 576 R0
        END INSTANCE
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1904 352 1936 352
        END BRANCH
        IOMARKER 1904 352 in_fifo(71:0) R180 28
        INSTANCE XLXI_6 336 2560 R0
        BEGIN BRANCH drop_pkt
            WIRE 256 2304 336 2304
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 720 2304 1728 2304
            WIRE 1216 752 1232 752
            WIRE 1216 752 1216 800
            WIRE 1216 800 1728 800
            WIRE 1728 800 1728 1312
            WIRE 1728 1312 1936 1312
            WIRE 1728 1312 1728 2304
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 224 1248 224 1472
            WIRE 224 1472 1504 1472
            WIRE 224 1248 336 1248
            WIRE 1488 720 1504 720
            WIRE 1504 720 1504 1472
        END BRANCH
        INSTANCE XLXI_11 1936 1568 R0
        BEGIN BRANCH XLXN_21(7:0)
            WIRE 720 1184 848 1184
            WIRE 848 1184 1936 1184
            WIRE 848 1184 848 2208
            WIRE 848 2208 976 2208
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1360 1696 1488 1696
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1456 1632 1488 1632
        END BRANCH
        BEGIN INSTANCE XLo 976 1920 R0
        END INSTANCE
        INSTANCE XLXI_10 1936 1888 R0
        INSTANCE XLXI_12 1936 2240 R0
        BEGIN BRANCH XLXN_37
            WIRE 1744 1696 1840 1696
            WIRE 1840 1696 1936 1696
            WIRE 1840 1696 1840 1984
            WIRE 1840 1984 1936 1984
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1904 416 1936 416
        END BRANCH
        INSTANCE XLXI_30 1904 480 R270
        BEGIN BRANCH valid_data
            WIRE 2320 1984 2352 1984
        END BRANCH
        IOMARKER 2352 1984 valid_data R0 28
        BEGIN BRANCH XLXN_40(7:0)
            WIRE 960 1792 976 1792
            WIRE 960 1792 960 1888
            WIRE 960 1888 960 2016
            WIRE 960 2016 976 2016
            WIRE 960 1888 2480 1888
            WIRE 2320 1632 2480 1632
            WIRE 2480 1632 2736 1632
            WIRE 2480 1632 2480 1888
        END BRANCH
        BEGIN INSTANCE XLXI_1 2736 1728 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 976 2336 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3120 1376 3152 1376
        END BRANCH
        IOMARKER 3152 1376 out_fifo(71:0) R0 28
        BEGIN BRANCH XLXN_45(7:0)
            WIRE 176 1184 176 1600
            WIRE 176 1600 960 1600
            WIRE 960 1600 976 1600
            WIRE 176 1184 336 1184
            WIRE 960 960 960 1600
            WIRE 960 960 2336 960
            WIRE 2336 960 2336 1184
            WIRE 2336 1184 2336 1568
            WIRE 2336 1568 2736 1568
            WIRE 2320 1184 2336 1184
        END BRANCH
        BEGIN BRANCH XLXN_46(71:0)
            WIRE 2320 352 2560 352
            WIRE 2560 352 2560 1696
            WIRE 2560 1696 2736 1696
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 1424 384 1600 384
            WIRE 1600 384 1600 736
            WIRE 1600 736 1600 1376
            WIRE 1600 1376 1936 1376
            WIRE 1600 736 2624 736
            WIRE 2624 736 2624 1504
            WIRE 2624 1504 2736 1504
        END BRANCH
        IOMARKER 1456 1632 fiforead R180 28
        INSTANCE XLXI_29 1488 1824 R0
        BEGIN BRANCH XLXN_24
            WIRE 1360 2112 1376 2112
            WIRE 1376 1760 1488 1760
            WIRE 1376 1760 1376 2112
        END BRANCH
        IOMARKER 256 384 firstword R180 28
        IOMARKER 256 784 lastword R180 28
        IOMARKER 256 2304 drop_pkt R180 28
        IOMARKER 240 2432 clk R180 28
        BEGIN BRANCH rst
            WIRE 144 1408 320 1408
            WIRE 320 1408 320 1440
            WIRE 320 1440 1792 1440
            WIRE 1792 1440 1792 1536
            WIRE 1792 1536 1936 1536
            WIRE 1792 1536 1792 1856
            WIRE 1792 1856 1936 1856
            WIRE 1792 1856 1792 2208
            WIRE 1792 2208 1936 2208
            WIRE 320 1408 336 1408
            WIRE 1792 544 1936 544
            WIRE 1792 544 1792 1440
        END BRANCH
        IOMARKER 144 1408 rst R180 28
        BEGIN BRANCH clk
            WIRE 1008 512 1040 512
            BEGIN DISPLAY 1008 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 240 2432 272 2432
            WIRE 272 2432 336 2432
            WIRE 272 512 336 512
            WIRE 272 512 272 608
            WIRE 272 608 272 912
            WIRE 272 912 336 912
            WIRE 272 912 272 1312
            WIRE 272 1312 336 1312
            WIRE 272 1312 272 2432
            WIRE 272 608 1904 608
            WIRE 1904 608 1904 800
            WIRE 1904 800 1904 1440
            WIRE 1904 1440 1936 1440
            WIRE 1904 1440 1904 1760
            WIRE 1904 1760 1936 1760
            WIRE 1904 1760 1904 2112
            WIRE 1904 2112 1936 2112
            WIRE 1904 800 2704 800
            WIRE 2704 800 2704 1376
            WIRE 2704 1376 2736 1376
            WIRE 2704 1376 2704 1440
            WIRE 2704 1440 2736 1440
            WIRE 1904 480 1936 480
            WIRE 1904 480 1904 608
            BEGIN DISPLAY 1904 1440 ATTR Name
                ALIGNMENT SOFT-BVCENTER
            END DISPLAY
            BEGIN DISPLAY 1904 1760 ATTR Name
                ALIGNMENT SOFT-BVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
