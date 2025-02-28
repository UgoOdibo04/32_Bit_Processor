-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 05:07:05 PM
-- Design Name: 
-- Module Name: Reg2LocMUX - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg2LocMUX is
    Port ( input0 : in STD_LOGIC_VECTOR (4 downto 0);
           input1 : in STD_LOGIC_VECTOR (4 downto 0);
           Reg2Loc : in STD_LOGIC;
           MuxOut : out STD_LOGIC_VECTOR (4 downto 0));
end Reg2LocMUX;

architecture Behavioral of Reg2LocMUX is

begin
    process(input0, input1, Reg2Loc)
    begin
        if Reg2Loc = '0' then
            MuxOut <= input0;
        else   
            MuxOut <= input1;
        end if;
     end process; 
end Behavioral;
