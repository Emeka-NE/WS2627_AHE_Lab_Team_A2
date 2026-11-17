library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  port (
    CLK100MHZ    : in  std_logic;
    CPU_RESETN   : in  std_logic;
    UART_TXD_IN  : in  std_logic;
    UART_RXD_OUT : out std_logic;
    LED          : out std_logic_vector(15 downto 0)
  );
end entity top;

architecture rtl of top is

  component design_1_wrapper is
    port (
      clk_in   : in  std_logic;
      resetn   : in  std_logic;
      rm_clk   : out std_logic;
      rm_din   : out std_logic_vector(15 downto 0);
      rm_dout  : in  std_logic_vector(15 downto 0);
      uart_rxd : in  std_logic;
      uart_txd : out std_logic
    );
  end component;

  component rm_a is
    port (
      clk  : in  std_logic;
      din  : in  std_logic_vector(15 downto 0);
      dout : out std_logic_vector(15 downto 0)
    );
  end component;

  signal rm_clk : std_logic;
  signal din    : std_logic_vector(15 downto 0);
  signal dout   : std_logic_vector(15 downto 0);

begin

  u_sys : design_1_wrapper
    port map (
      clk_in   => CLK100MHZ,
      resetn   => CPU_RESETN,
      uart_rxd => UART_TXD_IN,
      uart_txd => UART_RXD_OUT,
      rm_clk   => rm_clk,
      rm_din   => din,
      rm_dout  => dout
    );

  u_rm : rm_a   -- this becomes the reconfigurable partition
    port map (
      clk  => rm_clk,
      din  => din,
      dout => dout
    );

  LED <= dout;

end architecture rtl;
