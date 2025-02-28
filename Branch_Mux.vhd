----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2024 05:20:24 PM
-- Design Name: 
-- Module Name: Branch_Mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Multiplexer to select between PC + 4 and ALU result based on branch conditions.
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

entity Branch_Mux is
    Port (
        PC_Plus_4     : in  STD_LOGIC_VECTOR (31 downto 0);
        ALU_Result    : in  STD_LOGIC_VECTOR (31 downto 0);
        Zero          : in  STD_LOGIC;
        Branch        : in  STD_LOGIC;
        Uncondbranch  : in  STD_LOGIC;
        MuxOut        : out STD_LOGIC_VECTOR (31 downto 0)
    );
end Branch_Mux;

architecture Behavioral of Branch_Mux is

begin
    process(PC_Plus_4, ALU_Result, Branch, Uncondbranch, Zero)
    begin
        if ((Branch = '1' and Zero = '1') or Uncondbranch = '1') then  
            MuxOut <= ALU_Result;
        else
            MuxOut <= PC_Plus_4;
        end if;
    end process;

end Behavioral;
