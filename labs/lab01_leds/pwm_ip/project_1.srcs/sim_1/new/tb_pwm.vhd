library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pwm is 
end entity;

architecture sim of tb_pwm is
    constant W : positive := 4;
    signal clk : std_logic := '0';
    signal rst_n, enable, pwm_out : std_logic := '0';
    signal duty : unsigned (W-1 downto 0) := to_unsigned (4, W);
begin
    clk <= not clk after 5 ns;
    
    dut : entity work.pwm_core 
        generic map (G_WIDTH => W)
        port map (clk, rst_n, enable, duty, pwm_out);
        
    process
        variable n : natural := 0;
    begin
        wait for 20 ns; 
        rst_n  <= '1'; 
        enable <= '1';
        wait until rising_edge (clk);
        for i in 1 to 16 loop
            wait until rising_edge (clk);
            if pwm_out = '1' then 
                n := n + 1; 
            end if;
        end loop;
        assert n = 4 report "Duty error" severity failure;
        report "TEST PASSED"; 
        wait;
    end process;
end architecture;