VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL ps2_clk
        SIGNAL ps2_data
        SIGNAL XLXN_224(7:0)
        SIGNAL XLXN_227(10:0)
        SIGNAL XLXN_228(7:0)
        SIGNAL com
        SIGNAL XLXN_249(7:0)
        SIGNAL XLXN_250(10:0)
        SIGNAL XLXN_254(7:0)
        SIGNAL XLXN_187(2:0)
        SIGNAL XLXN_188(2:0)
        SIGNAL XLXN_292
        SIGNAL XLXN_294(63:0)
        SIGNAL XLXN_295
        SIGNAL XLXN_299
        SIGNAL horizantal
        SIGNAL vertical
        SIGNAL XLXN_41
        SIGNAL XLXN_84
        SIGNAL XLXN_83
        SIGNAL XLXN_82
        SIGNAL XLXN_155(8:0)
        SIGNAL XLXN_156(8:0)
        SIGNAL XLXN_185(5:0)
        SIGNAL XLXN_186(5:0)
        SIGNAL XLXN_322
        SIGNAL XLXN_323
        SIGNAL XLXN_324
        PORT Input clk
        PORT Input ps2_clk
        PORT Input ps2_data
        PORT Output com
        PORT Input horizantal
        PORT Input vertical
        BEGIN BLOCKDEF command
            TIMESTAMP 2007 4 8 11 14 24
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF inversion
            TIMESTAMP 2007 3 27 14 56 38
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF noise_cancel
            TIMESTAMP 2007 3 27 14 56 36
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF sync
            TIMESTAMP 2007 4 28 16 51 52
            RECTANGLE N 64 -192 352 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 352 -172 416 -148 
            LINE N 352 -160 416 -160 
            RECTANGLE N 352 -108 416 -84 
            LINE N 352 -96 416 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF divider
            TIMESTAMP 2007 3 31 22 15 12
            LINE N 384 32 448 32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -172 448 -148 
            LINE N 384 -160 448 -160 
            RECTANGLE N 384 -236 448 -212 
            LINE N 384 -224 448 -224 
            RECTANGLE N 384 -108 448 -84 
            LINE N 384 -96 448 -96 
            RECTANGLE N 384 -44 448 -20 
            LINE N 384 -32 448 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 64 -256 384 64 
        END BLOCKDEF
        BEGIN BLOCKDEF tile_ram
            TIMESTAMP 2007 4 28 17 6 2
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 0 96 32 96 
            END LINE
            LINE N 0 192 32 192 
            LINE N 0 144 32 144 
            BEGIN LINE W 256 368 288 368 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF tile_convertor
            TIMESTAMP 2007 3 27 18 46 42
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF char_map
            TIMESTAMP 2007 4 8 11 12 20
            LINE N 64 -224 0 -224 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 64 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ps2_kbd_interface
            TIMESTAMP 2007 3 30 17 19 30
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -128 0 -128 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF kbd_proc
            TIMESTAMP 2007 4 8 11 21 38
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 64 -388 320 104 
            RECTANGLE N 320 -60 384 -36 
            LINE N 320 -48 384 -48 
            RECTANGLE N 320 -12 384 12 
            LINE N 320 0 384 0 
            LINE N 320 48 384 48 
        END BLOCKDEF
        BEGIN BLOCKDEF cursor
            TIMESTAMP 2007 4 3 10 37 38
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 416 20 480 44 
            LINE N 416 32 480 32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -256 416 64 
        END BLOCKDEF
        BEGIN BLOCKDEF char_ROM
            TIMESTAMP 2007 4 7 17 33 6
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_11 tile_ram
            PIN addra(10:0) XLXN_227(10:0)
            PIN addrb(10:0) XLXN_250(10:0)
            PIN clkb clk
            PIN dina(7:0) XLXN_228(7:0)
            PIN clka clk
            PIN wea XLXN_292
            PIN doutb(7:0) XLXN_249(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 ps2_kbd_interface
            PIN clk clk
            PIN ps2_clk ps2_clk
            PIN ps2_data ps2_data
            PIN data_valid XLXN_322
            PIN extended XLXN_323
            PIN released XLXN_324
            PIN data(7:0) XLXN_224(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 kbd_proc
            PIN clk clk
            PIN valid XLXN_322
            PIN extended XLXN_323
            PIN released XLXN_324
            PIN data(7:0) XLXN_224(7:0)
            PIN addr_ram(10:0) XLXN_227(10:0)
            PIN din(7:0) XLXN_228(7:0)
            PIN wea XLXN_292
        END BLOCK
        BEGIN BLOCK XLXI_16 cursor
            PIN clk clk
            PIN addr_cursor(10:0) XLXN_227(10:0)
            PIN addr_display(10:0) XLXN_250(10:0)
            PIN char_in(7:0) XLXN_249(7:0)
            PIN char_n_cursor(7:0) XLXN_254(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 command
            PIN clk clk
            PIN com com
            PIN pixel_en XLXN_295
            PIN dot XLXN_299
        END BLOCK
        BEGIN BLOCK XLXI_13 char_map
            PIN clk clk
            PIN dot XLXN_299
            PIN char_h(2:0) XLXN_188(2:0)
            PIN char_v(2:0) XLXN_187(2:0)
            PIN char(63:0) XLXN_294(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 char_ROM
            PIN clk clk
            PIN addr(7:0) XLXN_254(7:0)
            PIN dout(63:0) XLXN_294(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 inversion
            PIN clk clk
            PIN a horizantal
            PIN b vertical
            PIN a_inv XLXN_41
            PIN b_inv XLXN_84
        END BLOCK
        BEGIN BLOCK XLXI_6 noise_cancel
            PIN clk clk
            PIN a_noise XLXN_41
            PIN a XLXN_83
        END BLOCK
        BEGIN BLOCK XLXI_7 noise_cancel
            PIN clk clk
            PIN a_noise XLXN_84
            PIN a XLXN_82
        END BLOCK
        BEGIN BLOCK XLXI_8 sync
            PIN clk clk
            PIN horizantal XLXN_83
            PIN vertical XLXN_82
            PIN pixel_h(8:0) XLXN_155(8:0)
            PIN pixel_v(8:0) XLXN_156(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 divider
            PIN clk clk
            PIN pixel_h(8:0) XLXN_155(8:0)
            PIN pixel_v(8:0) XLXN_156(8:0)
            PIN T_h(5:0) XLXN_186(5:0)
            PIN T_v(5:0) XLXN_185(5:0)
            PIN char_h(2:0) XLXN_188(2:0)
            PIN char_v(2:0) XLXN_187(2:0)
            PIN pixel_en XLXN_295
        END BLOCK
        BEGIN BLOCK XLXI_12 tile_convertor
            PIN clk clk
            PIN T_h(5:0) XLXN_186(5:0)
            PIN T_v(5:0) XLXN_185(5:0)
            PIN addr(10:0) XLXN_250(10:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE XLXI_11 3184 1040 R0
        END INSTANCE
        IOMARKER 3072 1504 clk R180 28
        BEGIN BRANCH clk
            WIRE 3072 1504 3120 1504
            WIRE 3120 1504 3184 1504
            WIRE 3120 1232 3184 1232
            WIRE 3120 1232 3120 1504
        END BRANCH
        BEGIN BRANCH ps2_clk
            WIRE 400 928 976 928
        END BRANCH
        BEGIN BRANCH ps2_data
            WIRE 416 1024 976 1024
        END BRANCH
        IOMARKER 816 832 clk R180 28
        BEGIN INSTANCE XLXI_14 976 1056 R0
        END INSTANCE
        BEGIN BRANCH XLXN_224(7:0)
            WIRE 1360 1024 1712 1024
        END BRANCH
        BEGIN BRANCH XLXN_228(7:0)
            WIRE 2096 1120 2160 1120
            WIRE 2160 1120 2160 1136
            WIRE 2160 1136 3184 1136
        END BRANCH
        BEGIN BRANCH com
            WIRE 6768 1328 6880 1328
        END BRANCH
        BEGIN BRANCH XLXN_227(10:0)
            WIRE 2096 1072 2176 1072
            WIRE 2176 1072 2176 1088
            WIRE 2176 1088 3040 1088
            WIRE 3040 1088 3184 1088
            WIRE 3040 768 3040 1088
            WIRE 3040 768 3856 768
            WIRE 3856 768 3856 1280
            WIRE 3856 1280 4128 1280
        END BRANCH
        BEGIN BRANCH XLXN_249(7:0)
            WIRE 3472 1408 3488 1408
            WIRE 3488 1408 4128 1408
        END BRANCH
        BEGIN BRANCH XLXN_250(10:0)
            WIRE 2864 1312 3184 1312
            WIRE 2864 1312 2864 1904
            WIRE 2864 1904 3696 1904
            WIRE 3696 1904 3696 2672
            WIRE 3696 1904 3856 1904
            WIRE 3536 2672 3696 2672
            WIRE 3856 1344 3856 1904
            WIRE 3856 1344 4128 1344
        END BRANCH
        BEGIN BRANCH XLXN_254(7:0)
            WIRE 4608 1408 4800 1408
        END BRANCH
        BEGIN INSTANCE XLXI_3 6384 1488 R0
        END INSTANCE
        IOMARKER 6880 1328 com R0 28
        BEGIN INSTANCE XLXI_13 5760 1456 R0
        END INSTANCE
        BEGIN BRANCH XLXN_292
            WIRE 2096 1168 2160 1168
            WIRE 2160 1168 2160 1184
            WIRE 2160 1184 3184 1184
        END BRANCH
        BEGIN INSTANCE XLXI_16 4128 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 4800 1440 R0
        END INSTANCE
        BEGIN BRANCH XLXN_188(2:0)
            WIRE 2960 2864 5504 2864
            WIRE 5504 1424 5504 2864
            WIRE 5504 1424 5760 1424
        END BRANCH
        BEGIN BRANCH XLXN_187(2:0)
            WIRE 2960 2928 5600 2928
            WIRE 5600 1488 5600 2928
            WIRE 5600 1488 5760 1488
        END BRANCH
        BEGIN BRANCH XLXN_294(63:0)
            WIRE 5184 1344 5760 1344
        END BRANCH
        BEGIN BRANCH XLXN_295
            WIRE 2960 2992 6368 2992
            WIRE 6368 1456 6384 1456
            WIRE 6368 1456 6368 2992
        END BRANCH
        BEGIN BRANCH XLXN_299
            WIRE 6144 1232 6176 1232
            WIRE 6176 1232 6176 1392
            WIRE 6176 1392 6384 1392
        END BRANCH
        BEGIN BRANCH clk
            WIRE 4048 1152 4128 1152
        END BRANCH
        IOMARKER 4048 1152 clk R180 28
        BEGIN BRANCH clk
            WIRE 4752 1344 4800 1344
        END BRANCH
        IOMARKER 4752 1344 clk R180 28
        BEGIN BRANCH clk
            WIRE 5680 1232 5760 1232
        END BRANCH
        IOMARKER 5680 1232 clk R180 28
        BEGIN BRANCH clk
            WIRE 6352 1328 6384 1328
        END BRANCH
        IOMARKER 6352 1328 clk R180 28
        BEGIN BRANCH horizantal
            WIRE 480 3008 704 3008
        END BRANCH
        BEGIN BRANCH vertical
            WIRE 448 3072 704 3072
        END BRANCH
        BEGIN INSTANCE XLXI_4 704 3104 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1232 2912 R0
        END INSTANCE
        BEGIN BRANCH XLXN_41
            WIRE 1088 2944 1104 2944
            WIRE 1104 2880 1232 2880
            WIRE 1104 2880 1104 2944
        END BRANCH
        BEGIN INSTANCE XLXI_7 1232 3184 R0
        END INSTANCE
        BEGIN BRANCH XLXN_84
            WIRE 1088 3072 1104 3072
            WIRE 1104 3072 1104 3152
            WIRE 1104 3152 1232 3152
        END BRANCH
        BEGIN BRANCH clk
            WIRE 384 2640 624 2640
            WIRE 624 2640 624 2944
            WIRE 624 2944 704 2944
            WIRE 624 2640 1184 2640
            WIRE 1184 2640 1184 2816
            WIRE 1184 2816 1184 3088
            WIRE 1184 3088 1232 3088
            WIRE 1184 2816 1232 2816
        END BRANCH
        BEGIN INSTANCE XLXI_8 1920 3024 R0
        END INSTANCE
        BEGIN BRANCH XLXN_83
            WIRE 1616 2816 1696 2816
            WIRE 1696 2816 1696 2928
            WIRE 1696 2928 1920 2928
        END BRANCH
        BEGIN BRANCH XLXN_82
            WIRE 1616 3088 1696 3088
            WIRE 1696 2992 1920 2992
            WIRE 1696 2992 1696 3088
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1744 2592 1824 2592
            WIRE 1824 2592 1824 2864
            WIRE 1824 2864 1920 2864
            WIRE 1824 2592 2416 2592
            WIRE 2416 2592 2416 2736
            WIRE 2416 2736 2512 2736
            WIRE 2416 2592 3088 2592
            WIRE 3088 2592 3088 2672
            WIRE 3088 2672 3152 2672
        END BRANCH
        BEGIN INSTANCE XLXI_9 2512 2960 R0
        END INSTANCE
        BEGIN BRANCH XLXN_155(8:0)
            WIRE 2336 2864 2512 2864
        END BRANCH
        BEGIN BRANCH XLXN_156(8:0)
            WIRE 2336 2928 2512 2928
        END BRANCH
        BEGIN INSTANCE XLXI_12 3152 2832 R0
        END INSTANCE
        BEGIN BRANCH XLXN_185(5:0)
            WIRE 2960 2800 3152 2800
        END BRANCH
        BEGIN BRANCH XLXN_186(5:0)
            WIRE 2960 2736 3152 2736
        END BRANCH
        IOMARKER 384 2640 clk R180 28
        IOMARKER 480 3008 horizantal R180 28
        IOMARKER 448 3072 vertical R180 28
        IOMARKER 1744 2592 clk R180 28
        IOMARKER 416 1024 ps2_data R180 28
        IOMARKER 400 928 ps2_clk R180 28
        BEGIN BRANCH clk
            WIRE 816 832 896 832
            WIRE 896 832 976 832
            WIRE 896 592 896 832
            WIRE 896 592 1664 592
            WIRE 1664 592 1664 768
            WIRE 1664 768 1712 768
        END BRANCH
        BEGIN INSTANCE XLXI_15 1712 1120 R0
        END INSTANCE
        BEGIN BRANCH XLXN_322
            WIRE 1360 832 1712 832
        END BRANCH
        BEGIN BRANCH XLXN_323
            WIRE 1360 896 1712 896
        END BRANCH
        BEGIN BRANCH XLXN_324
            WIRE 1360 960 1712 960
        END BRANCH
    END SHEET
END SCHEMATIC
