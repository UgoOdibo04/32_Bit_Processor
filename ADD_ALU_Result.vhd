----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 08:06:25 PM
-- Design Name: 
-- Module Name: ADD_ALU_Result - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD_ALU_Result is
    Port ( PC_Plus_4 : in STD_LOGIC_VECTOR (31 downto 0);
           Immediate : in STD_LOGIC_VECTOR (31 downto 0);
           ALU_Result : out STD_LOGIC_VECTOR (31 downto 0));
end ADD_ALU_Result;

architecture Behavioral of ADD_ALU_Result is
    signal ShiftedImmediate : STD_LOGIC_VECTOR(31 downto 0);
begin
    process (PC_Plus_4, Immediate)
    begin
    ShiftedImmediate <= Immediate(29 downto 0) & "00";
    
    ALU_Result <= PC_Plus_4 + ShiftedImmediate;
    end process;
    
end Behavioral;
