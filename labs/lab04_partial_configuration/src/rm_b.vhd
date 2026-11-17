library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rm_b is
  port (
    clk  : in  std_logic;
    din  : in  std_logic_vector(15 downto 0);
    dout : out std_logic_vector(15 downto 0)
  );
end entity rm_b;

architecture rtl of rm_b is
begin
  process (clk)
  begin
    if rising_edge(clk) then
      dout <= not din;
    end if;
  end process;
end architecture rtl;