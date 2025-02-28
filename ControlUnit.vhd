----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2024 12:53:46 PM
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
    Port ( Opcode : in STD_LOGIC_VECTOR (10 downto 0);
           Reg2Loc : out STD_LOGIC;
           Branch : out STD_LOGIC;
           MemRead : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           UncondBranch : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           ALUSrc : out STD_LOGIC;
           RegWrite : out STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
    process(Opcode)
    begin
        -- Initialize Values to 0
        Reg2Loc  <= '0';
        Branch   <= '0';
        MemRead  <= '0';
        MemtoReg <= '0';
        UncondBranch <= '0';
        MemWrite <= '0';
        ALUSrc   <= '0';
        RegWrite <= '0';

        case Opcode is
            -- ADD
            when "10001011000" =>    
                RegWrite <= '1';   
                ALUSrc   <= '0';   
            -- SUB
            when "11001011000" =>  
                RegWrite <= '1';
                ALUSrc   <= '0';
            -- AND
            when "10001010000" =>    
                RegWrite <= '1';
                ALUSrc   <= '0';
            -- ORR
            when "10101010000" =>   
                RegWrite <= '1';
                ALUSrc   <= '0';
            -- MOV
            when "11010010100" =>  
                RegWrite <= '1';
                ALUSrc   <= '0'; 
                  
            -- ADDI
            when "10010001000" =>   
                RegWrite <= '1';
                ALUSrc   <= '1';   
            -- SUBI
            when "11010001000" =>   
                RegWrite <= '1';
                ALUSrc   <= '1';         
            -- LSL
            when "11010011011" =>   
                RegWrite <= '1';
                ALUSrc   <= '1';     
            -- LSR
            when "11010011010" =>   
                RegWrite <= '1';
                ALUSrc   <= '1'; 
                
            -- Load
            when "11111000010" =>  
                MemRead  <= '1';
                MemtoReg <= '1';   
                RegWrite <= '1';
                ALUSrc   <= '1';  
            -- Store
            when "11111000000" =>  
                Reg2Loc <= '1';
                ALUSrc   <= '1';  
                MemWrite <= '1'; 
               
            -- CBZ
            when "10110100000" =>   
                Reg2Loc <= '1';    
                Branch   <= '1';
             -- Branch   
            when "10100000000" =>       
                Branch   <= '1';
                UncondBranch <= '1';
                
            when others =>
                -- Keep default values for unrecognized instructions
                null;
        end case;
        
end process;
end Behavioral;
