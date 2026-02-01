--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : detect7B.vhf
-- /___/   /\     Timestamp : 01/31/2026 17:15:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family virtex2p -flat -suppress -w "C:/Documents and Settings/student/EE533-lab3/detect7B.sch" detect7B.vhf
--Design Name: detect7B
--Device: virtex2p
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity detect7B is
   port ( CE       : in    std_logic; 
          CLK      : in    std_logic; 
          hwregA   : in    std_logic_vector (63 downto 0); 
          match_en : in    std_logic; 
          mrst     : in    std_logic; 
          pipe1    : in    std_logic_vector (71 downto 0); 
          match    : out   std_logic);
end detect7B;

architecture BEHAVIORAL of detect7B is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal pipe0       : std_logic_vector (71 downto 0);
   signal XLXN_9      : std_logic_vector (111 downto 0);
   signal XLXN_14     : std_logic;
   signal XLXN_15     : std_logic;
   signal XLXN_17     : std_logic;
   signal match_DUMMY : std_logic;
   component busmerge
      port ( da : in    std_logic_vector (47 downto 0); 
             db : in    std_logic_vector (63 downto 0); 
             q  : out   std_logic_vector (111 downto 0));
   end component;
   
   component reg9B
      port ( D   : in    std_logic_vector (71 downto 0); 
             CE  : in    std_logic; 
             CLK : in    std_logic; 
             CLR : in    std_logic; 
             Q   : out   std_logic_vector (71 downto 0));
   end component;
   
   component wordmatch
      port ( detain   : in    std_logic_vector (111 downto 0); 
             datacomp : in    std_logic_vector (55 downto 0); 
             wildcard : in    std_logic_vector (6 downto 0); 
             match    : out   std_logic);
   end component;
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component FD
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FD : component is "0";
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
begin
   match <= match_DUMMY;
   XLXI_1 : busmerge
      port map (da(47 downto 0)=>pipe0(47 downto 0),
                db(63 downto 0)=>pipe1(63 downto 0),
                q(111 downto 0)=>XLXN_9(111 downto 0));
   
   XLXI_2 : reg9B
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>XLXN_14,
                D(71 downto 0)=>pipe1(71 downto 0),
                Q(71 downto 0)=>pipe0(71 downto 0));
   
   XLXI_3 : wordmatch
      port map (datacomp(55 downto 0)=>hwregA(55 downto 0),
                detain(111 downto 0)=>XLXN_9(111 downto 0),
                wildcard(6 downto 0)=>hwregA(62 downto 56),
                match=>XLXN_15);
   
   XLXI_4 : FDCE
      port map (C=>CLK,
                CE=>XLXN_17,
                CLR=>XLXN_14,
                D=>XLXN_17,
                Q=>match_DUMMY);
   
   XLXI_5 : FD
      port map (C=>CLK,
                D=>mrst,
                Q=>XLXN_14);
   
   XLXI_6 : AND3B1
      port map (I0=>match_DUMMY,
                I1=>XLXN_15,
                I2=>match_en,
                O=>XLXN_17);
   
end BEHAVIORAL;


