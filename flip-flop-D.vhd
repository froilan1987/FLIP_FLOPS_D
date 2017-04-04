
 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:11 04/02/2017 
-- Design Name: 
-- Module Name:    flip-flop-D - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flip_flop_D is
    Port ( D : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DONT : out  STD_LOGIC);
end flip_flop_D;

architecture Behavioral of flip_flop_D is

begin

process (CLK) -- se Activa el Flip Flop en ambos flancos
begin
   if CLK'event and CLK='1' then  -- Activa el Flip Flop en el franco de subuda
      if RST ='1' then   
         DONT <= '0';
      else
         DONT <= D ;
      end if;
   end if;
end process;
 

end Behavioral;

