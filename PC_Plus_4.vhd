----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 07:07:11 PM
-- Design Name: 
-- Module Name: PC_Plus_4_ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_Plus_4_ALU is
    Port ( PC_Addy : in STD_LOGIC_VECTOR (31 downto 0);
           Output_Addy : out STD_LOGIC_VECTOR (31 downto 0));
end PC_Plus_4_ALU;

architecture Behavioral of PC_Plus_4_ALU is

begin
    process (PC_Addy)
    variable pc_integer : UNSIGNED(31 downto 0);
     begin
     pc_integer := UNSIGNED(PC_Addy);
     Output_Addy <= STD_LOGIC_VECTOR(pc_integer + 4);
    end process;

end Behavioral;
