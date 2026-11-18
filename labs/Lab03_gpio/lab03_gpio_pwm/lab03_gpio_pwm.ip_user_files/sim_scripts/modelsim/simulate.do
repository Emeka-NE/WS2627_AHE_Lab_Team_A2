onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xpm -L microblaze_v11_0_15 -L lmb_v10_v3_0_15 -L lmb_bram_if_cntlr_v4_0_26 -L blk_mem_gen_v8_4_11 -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_35 -L fifo_generator_v13_2_13 -L axi_data_fifo_v2_1_35 -L axi_crossbar_v2_1_37 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_21 -L xlconcat_v2_1_7 -L mdm_v3_2_28 -L proc_sys_reset_v5_0_17 -L axi_uartlite_v2_0_39 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_microblaze_wrapper xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_microblaze_wrapper.udo}

run 1000ns

quit -force
