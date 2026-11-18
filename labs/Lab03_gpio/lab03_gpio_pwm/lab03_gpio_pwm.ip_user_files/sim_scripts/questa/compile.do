vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/fifo_generator_v13_2_13
vlib questa_lib/msim/axi_data_fifo_v2_1_35
vlib questa_lib/msim/axi_crossbar_v2_1_37
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_21
vlib questa_lib/msim/xlconcat_v2_1_7
vlib questa_lib/msim/mdm_v3_2_28
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axi_uartlite_v2_0_39

vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 questa_lib/msim/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 questa_lib/msim/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 questa_lib/msim/axi_crossbar_v2_1_37
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_21 questa_lib/msim/axi_intc_v4_1_21
vmap xlconcat_v2_1_7 questa_lib/msim/xlconcat_v2_1_7
vmap mdm_v3_2_28 questa_lib/msim/mdm_v3_2_28
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_15  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_microblaze_0_0/sim/design_microblaze_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_15  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_dlmb_v10_0/sim/design_microblaze_dlmb_v10_0.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_ilmb_v10_0/sim/design_microblaze_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_dlmb_bram_if_cntlr_0/sim/design_microblaze_dlmb_bram_if_cntlr_0.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_ilmb_bram_if_cntlr_0/sim/design_microblaze_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_lmb_bram_0/sim/design_microblaze_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_microblaze_0_axi_periph_imp_xbar_0/sim/design_microblaze_microblaze_0_axi_periph_imp_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_21  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_microblaze_0_axi_intc_0/sim/design_microblaze_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_7  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_microblaze_0_xlconcat_0/sim/design_microblaze_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_28  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/00dd/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_mdm_1_0/sim/design_microblaze_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/ec67/hdl" "+incdir+../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/a9be" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_clk_wiz_1_0/design_microblaze_clk_wiz_1_0_clk_wiz.v" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_clk_wiz_1_0/design_microblaze_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_rst_clk_wiz_1_100M_0/sim/design_microblaze_rst_clk_wiz_1_100M_0.vhd" \

vcom -work axi_uartlite_v2_0_39  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_axi_uartlite_0_0/sim/design_microblaze_axi_uartlite_0_0.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/7963/hdl/pwm_axi_slave_lite_v1_0_S00_AXI.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/7963/hdl/pwm_axi.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ipshared/7963/hdl/pwm_core.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/ip/design_microblaze_pwm_axi_0_0/sim/design_microblaze_pwm_axi_0_0.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/sim/design_microblaze.vhd" \
"../../../lab03_gpio_pwm.gen/sources_1/bd/design_microblaze/hdl/design_microblaze_wrapper.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

