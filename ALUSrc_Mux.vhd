----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 05:14:43 PM
-- Design Name: 
-- Module Name: ALUSrc_Mux - Behavioral
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

entity ALUSrc_Mux is
    Port ( Read_data_2 : in STD_LOGIC_VECTOR (31 downto 0);
           SignExtImmed : in STD_LOGIC_VECTOR (31 downto 0);
           ALUSrc : in STD_LOGIC;
           MuxOut : out STD_LOGIC_VECTOR (31 downto 0));
end ALUSrc_Mux;

architecture Behavioral of ALUSrc_Mux is

begin
    process(Read_data_2, SignExtImmed, ALUSrc)
    begin
        if ALUSrc = '0' then
            MuxOut <= Read_data_2;
        else   
            MuxOut <= SignExtImmed;
        end if;
     end process;


end Behavioral;
