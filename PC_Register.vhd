entity pc_unit is
    Port ( I_clk : in  STD_LOGIC;
           I_nPC : in  STD_LOGIC_VECTOR (31 downto 0);
           I_nPCop : in  STD_LOGIC_VECTOR (1 downto 0);
           O_PC : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end pc_unit;




architecture Behavioral of pc_unit is
  signal current_pc: std_logic_vector( 15 downto 0) := X"0000";
begin

  process (I_clk)
  begin
    if rising_edge(I_clk) then
      case I_nPCop is
        when PCU_OP_NOP => 	-- NOP, keep PC the same/halt
        when PCU_OP_INC => 	-- increment
          current_pc <= std_logic_vector(unsigned(current_pc) + 1);
        when PCU_OP_ASSIGN => 	-- set from external input
          current_pc <= I_nPC;
        when PCU_OP_RESET => 	-- Reset
          current_pc <= X"0000";
        when others =>
      end case;
    end if;
  end process;







-- PC unit opcodes
constant PCU_OP_NOP: std_logic_vector(1 downto 0):= "00";
constant PCU_OP_INC: std_logic_vector(1 downto 0):= "01";
constant PCU_OP_ASSIGN: std_logic_vector(1 downto 0):= "10";
constant PCU_OP_RESET: std_logic_vector(1 downto 0):= "11";
  O_PC <= current_pc;

end Behavioral;

