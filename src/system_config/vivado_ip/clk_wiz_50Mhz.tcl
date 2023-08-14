set clk_wiz_50Mhz clk_wiz_50Mhz
create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name $clk_wiz_50Mhz -dir ${ip_build_dir}

set_property -dict {
	CONFIG.PRIMITIVE {Auto} 
	CONFIG.USE_PHASE_ALIGNMENT {true} 
	CONFIG.PRIM_IN_FREQ {125} 
	CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} 
	CONFIG.USE_LOCKED {true} 
	CONFIG.USE_RESET {true} 
	CONFIG.RESET_TYPE {ACTIVE_LOW} 
	CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} 
	CONFIG.CLKIN1_JITTER_PS {80.0} 
	CONFIG.CLKOUT1_DRIVES {Buffer} 
	CONFIG.CLKOUT2_DRIVES {Buffer} 
	CONFIG.CLKOUT3_DRIVES {Buffer} 
	CONFIG.CLKOUT4_DRIVES {Buffer} 
	CONFIG.CLKOUT5_DRIVES {Buffer} 
	CONFIG.CLKOUT6_DRIVES {Buffer} 
	CONFIG.CLKOUT7_DRIVES {Buffer} 
	CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} 
	CONFIG.MMCM_DIVCLK_DIVIDE {5} 
	CONFIG.MMCM_BANDWIDTH {OPTIMIZED} 
	CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} 
	CONFIG.MMCM_CLKIN1_PERIOD {8.000} 
	CONFIG.MMCM_COMPENSATION {AUTO} 
	CONFIG.MMCM_CLKOUT0_DIVIDE_F {24.000} 
	CONFIG.RESET_PORT {resetn} 
	CONFIG.CLKOUT1_JITTER {196.543} 
	CONFIG.CLKOUT1_PHASE_ERROR {222.305} 
	CONFIG.AUTO_PRIMITIVE {MMCM}
}	[get_ips $clk_wiz_50Mhz]