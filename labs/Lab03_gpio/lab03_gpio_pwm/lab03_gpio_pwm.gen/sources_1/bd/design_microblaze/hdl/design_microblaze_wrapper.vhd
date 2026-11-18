--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Mon Nov 16 14:57:21 2026
--Host        : DESKTOP-PUNR6ED running 64-bit major release  (build 9200)
--Command     : generate_target design_microblaze_wrapper.bd
--Design      : design_microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_microblaze_wrapper is
  port (
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dual_seven_seg_led_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_b : out STD_LOGIC;
    pwm_g : out STD_LOGIC;
    pwm_r : out STD_LOGIC;
    reset : in STD_LOGIC;
    seven_seg_led_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_microblaze_wrapper;

architecture STRUCTURE of design_microblaze_wrapper is
  component design_microblaze is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    pwm_r : out STD_LOGIC;
    pwm_g : out STD_LOGIC;
    pwm_b : out STD_LOGIC;
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led_16bits_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dual_seven_seg_led_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seven_seg_led_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_microblaze;
begin
design_microblaze_i: component design_microblaze
     port map (
      dip_switches_16bits_tri_i(15 downto 0) => dip_switches_16bits_tri_i(15 downto 0),
      dual_seven_seg_led_disp_tri_o(7 downto 0) => dual_seven_seg_led_disp_tri_o(7 downto 0),
      led_16bits_tri_o(15 downto 0) => led_16bits_tri_o(15 downto 0),
      pwm_b => pwm_b,
      pwm_g => pwm_g,
      pwm_r => pwm_r,
      reset => reset,
      seven_seg_led_an_tri_o(7 downto 0) => seven_seg_led_an_tri_o(7 downto 0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
