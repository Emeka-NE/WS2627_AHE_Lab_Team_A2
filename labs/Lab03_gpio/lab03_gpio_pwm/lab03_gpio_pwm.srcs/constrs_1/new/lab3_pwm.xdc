##-----------------------------------------------------------------------------
## RGB LED 16 (LD16) Constraints - Custom AXI4-Lite PWM IP
## Target Board: Digilent Nexys A7-100T (xc7a100tcsg324-1)
##-----------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports pwm_r]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports pwm_g]
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports pwm_b]