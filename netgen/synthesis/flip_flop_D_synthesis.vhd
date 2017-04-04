--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: flip_flop_D_synthesis.vhd
-- /___/   /\     Timestamp: Mon Apr 03 18:40:54 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm flip_flop_D -w -dir netgen/synthesis -ofmt vhdl -sim flip_flop_D.ngc flip_flop_D_synthesis.vhd 
-- Device	: xc3s100e-4-vq100
-- Input file	: flip_flop_D.ngc
-- Output file	: E:\Usuario\Documentos\Xilinx\Procesador\netgen\synthesis\flip_flop_D_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: flip_flop_D
-- Xilinx	: E:\jgins\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity flip_flop_D is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    DONT : out STD_LOGIC 
  );
end flip_flop_D;

architecture Structure of flip_flop_D is
  signal CLK_BUFGP_1 : STD_LOGIC; 
  signal DONT_OBUF_4 : STD_LOGIC; 
  signal D_IBUF_5 : STD_LOGIC; 
  signal RST_IBUF_7 : STD_LOGIC; 
begin
  DONT_1 : FDR
    port map (
      C => CLK_BUFGP_1,
      D => D_IBUF_5,
      R => RST_IBUF_7,
      Q => DONT_OBUF_4
    );
  RST_IBUF : IBUF
    port map (
      I => RST,
      O => RST_IBUF_7
    );
  D_IBUF : IBUF
    port map (
      I => D,
      O => D_IBUF_5
    );
  DONT_OBUF : OBUF
    port map (
      I => DONT_OBUF_4,
      O => DONT
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_1
    );

end Structure;

