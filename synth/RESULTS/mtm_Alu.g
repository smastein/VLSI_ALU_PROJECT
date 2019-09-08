######################################################################

# Created by Genus(TM) Synthesis Solution 17.13-s033_1 on Sun Sep 08 23:21:41 CEST 2019

# This file contains the RC script for design:mtm_Alu

######################################################################

set_db -quiet information_level 7
set_db -quiet design_mode_process 240.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet phys_use_extraction_kit false
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage { {to_generic 6 16 6 14}  {first_condense 4 21 4 20}  {reify 4 25 3 24} }
set_db -quiet tinfo_tstamp_file .rs_pherian.tstamp
set_db -quiet metric_enable true
set_db -quiet design_process_node 180
set_db -quiet syn_generic_effort express
set_db -quiet syn_map_effort express
set_db -quiet syn_opt_effort express
set_db -quiet remove_assigns true
set_db -quiet optimize_merge_flops false
set_db -quiet max_cpus_per_server 1
set_db -quiet wlec_set_cdn_synth_root true
set_db -quiet hdl_track_filename_row_col true
set_db -quiet verification_directory_naming_style ./LEC
set_db -quiet use_area_from_lef true
set_db -quiet flow_metrics_snapshot_uuid 0a711f24
set_db -quiet read_qrc_tech_file_rc_corner true
set_db -quiet init_ground_nets {gndd gndb}
set_db -quiet init_power_nets {vddd vddb}
if {[vfind design:mtm_Alu -mode WC_av] eq ""} {
 create_mode -name WC_av -design design:mtm_Alu 
}
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet ple_mode global
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_BUF16 .avoid true
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP .avoid true
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP2 .avoid true
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP4 .avoid true
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_INV_LP .avoid true
set_db -quiet lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_INV_LP2 .avoid true
set_db -quiet lib_cell:WC_libs/physical_cells/UCL_BUF16B .avoid true
set_db -quiet lib_cell:WC_libs/physical_cells/UCL_DFF_SCAN .avoid true
set_db -quiet operating_condition:WC_libs/SUSLIB_UCL_SS/worst .tree_type balanced_tree
set_db -quiet operating_condition:WC_libs/SUSLIB_UCL_SS/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -mode mode:mtm_Alu/WC_av -domain domain_1 -period 21000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mtm_Alu port:mtm_Alu/clk
set_db -quiet clock:mtm_Alu/WC_av/clk .clock_setup_uncertainty {300.0 300.0}
set_db -quiet clock:mtm_Alu/WC_av/clk .clock_hold_uncertainty {100.0 100.0}
define_cost_group -design design:mtm_Alu -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mtm_Alu/WC_av/clk -name create_clock_delay_domain_1_clk_R_0 port:mtm_Alu/clk
set_db -quiet external_delay:mtm_Alu/WC_av/create_clock_delay_domain_1_clk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mtm_Alu/WC_av/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:mtm_Alu/clk
set_db -quiet external_delay:mtm_Alu/WC_av/create_clock_delay_domain_1_clk_F_0 .clock_network_latency_included true
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mtm_Alu/WC_av/clk -name mtmAlu.sdc_line_54 port:mtm_Alu/rst_n
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mtm_Alu/WC_av/clk -name mtmAlu.sdc_line_54_1_1 port:mtm_Alu/sin
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mtm_Alu/WC_av/clk -name mtmAlu.sdc_line_69 port:mtm_Alu/sout
path_group -paths [specify_paths -mode mode:mtm_Alu/WC_av -to clock:mtm_Alu/WC_av/clk]  -name clk -group cost_group:mtm_Alu/clk -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
do_with_constant_dft_setup -design design:mtm_Alu {
}
do_with_constant_dft_setup -design design:mtm_Alu {
}
# END DFT SECTION
set_db -quiet design:mtm_Alu .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 100791} {cell_count 3122} {utilization  0.00} {runtime 6 16 6 14} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 96207} {cell_count 3368} {utilization  0.00} {runtime 4 21 4 20} }{reify {wns 1188} {tns 0} {vep 0} {area 59064} {cell_count 1859} {utilization  0.00} {runtime 4 25 3 24} }}
set_db -quiet design:mtm_Alu .active_dont_use_by_mode {{mode:mtm_Alu/WC_av {lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_INV_LP lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_INV_LP2 lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_BUF16 lib_cell:WC_libs/physical_cells/UCL_BUF16B lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP2 lib_cell:WC_libs/SUSLIB_UCL_SS/UCL_DFF_LP4 lib_cell:WC_libs/physical_cells/UCL_DFF_SCAN}}}
set_db -quiet design:mtm_Alu .hdl_user_name mtm_Alu
set_db -quiet design:mtm_Alu .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v} {}}}
set_db -quiet design:mtm_Alu .verification_directory ./LEC
set_db -quiet design:mtm_Alu .seq_reason_deleted {{{u_mtm_Alu_deserializer/error_reg[1]} {{constant 0}}} {{u_mtm_Alu_deserializer/stop_reg[1]} {{constant 0}}} {{u_mtm_Alu_deserializer/data_a_reg[0]} unloaded} {{u_mtm_Alu_deserializer/data_a_reg[9]} unloaded} {{u_mtm_Alu_deserializer/data_a_reg[10]} unloaded} {{u_mtm_Alu_deserializer/data_b_reg[0]} unloaded} {{u_mtm_Alu_deserializer/data_b_reg[9]} unloaded} {{u_mtm_Alu_deserializer/data_b_reg[10]} unloaded} {{u_mtm_Alu_deserializer/data_ctl_reg[0]} unloaded} {{u_mtm_Alu_deserializer/data_ctl_reg[9]} unloaded} {{u_mtm_Alu_deserializer/data_ctl_reg[10]} unloaded} {{u_mtm_Alu_deserializer/error_data_reg[1]} {{constant 0}}} {{u_mtm_Alu_deserializer/error_data_reg[0]} {{constant 0}}}}
set_db -quiet design:mtm_Alu .arch_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v
set_db -quiet design:mtm_Alu .entity_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v
set_db -quiet port:mtm_Alu/clk .input_slew_max_rise 200.0
set_db -quiet port:mtm_Alu/clk .input_slew_max_fall 200.0
set_db -quiet port:mtm_Alu/clk .input_slew_min_rise 200.0
set_db -quiet port:mtm_Alu/clk .input_slew_min_fall 200.0
set_db -quiet port:mtm_Alu/clk .fixed_slew_by_mode {{mode:mtm_Alu/WC_av {200.0 200.0 200.0 200.0}}}
set_db -quiet port:mtm_Alu/clk .min_transition no_value
set_db -quiet port:mtm_Alu/clk .max_fanout 1.000
set_db -quiet port:mtm_Alu/clk .max_fanout_by_mode {{mode:mtm_Alu/WC_av 1.000}}
set_db -quiet port:mtm_Alu/clk .original_name clk
set_db -quiet port:mtm_Alu/rst_n .input_slew_max_rise 200.0
set_db -quiet port:mtm_Alu/rst_n .input_slew_max_fall 200.0
set_db -quiet port:mtm_Alu/rst_n .input_slew_min_rise 200.0
set_db -quiet port:mtm_Alu/rst_n .input_slew_min_fall 200.0
set_db -quiet port:mtm_Alu/rst_n .fixed_slew_by_mode {{mode:mtm_Alu/WC_av {200.0 200.0 200.0 200.0}}}
set_db -quiet port:mtm_Alu/rst_n .min_transition no_value
set_db -quiet port:mtm_Alu/rst_n .max_fanout 1.000
set_db -quiet port:mtm_Alu/rst_n .max_fanout_by_mode {{mode:mtm_Alu/WC_av 1.000}}
set_db -quiet port:mtm_Alu/rst_n .original_name rst_n
set_db -quiet port:mtm_Alu/sin .input_slew_max_rise 200.0
set_db -quiet port:mtm_Alu/sin .input_slew_max_fall 200.0
set_db -quiet port:mtm_Alu/sin .input_slew_min_rise 200.0
set_db -quiet port:mtm_Alu/sin .input_slew_min_fall 200.0
set_db -quiet port:mtm_Alu/sin .fixed_slew_by_mode {{mode:mtm_Alu/WC_av {200.0 200.0 200.0 200.0}}}
set_db -quiet port:mtm_Alu/sin .min_transition no_value
set_db -quiet port:mtm_Alu/sin .max_fanout 1.000
set_db -quiet port:mtm_Alu/sin .max_fanout_by_mode {{mode:mtm_Alu/WC_av 1.000}}
set_db -quiet port:mtm_Alu/sin .original_name sin
set_db -quiet port:mtm_Alu/sout .external_pin_cap_min 100.0
set_db -quiet port:mtm_Alu/sout .external_capacitance_max {100.0 100.0}
set_db -quiet port:mtm_Alu/sout .external_capacitance_min 100.0
set_db -quiet port:mtm_Alu/sout .external_pin_cap_min_by_mode {{mode:mtm_Alu/WC_av 100.0}}
set_db -quiet port:mtm_Alu/sout .external_capacitance_min_by_mode {{mode:mtm_Alu/WC_av 100.0}}
set_db -quiet port:mtm_Alu/sout .external_pin_cap_by_mode {{mode:mtm_Alu/WC_av {100.0 100.0}}}
set_db -quiet port:mtm_Alu/sout .external_capacitance_max_by_mode {{mode:mtm_Alu/WC_av {100.0 100.0}}}
set_db -quiet port:mtm_Alu/sout .min_transition no_value
set_db -quiet port:mtm_Alu/sout .original_name sout
set_db -quiet port:mtm_Alu/sout .external_pin_cap {100.0 100.0}
set_db -quiet module:mtm_Alu/mtm_Alu_core .hdl_user_name mtm_Alu_core
set_db -quiet module:mtm_Alu/mtm_Alu_core .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v} {}}}
set_db -quiet module:mtm_Alu/mtm_Alu_core .arch_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v
set_db -quiet module:mtm_Alu/mtm_Alu_core .entity_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v
set_db -quiet module:mtm_Alu/add_unsigned_358 .logical_hier false
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/add_58_19 .rtlop_info {{} 0 0 0 3 0 7 0 2 1 1 0}
set_db -quiet module:mtm_Alu/lt_unsigned_356 .logical_hier false
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/lt_68_20 .rtlop_info {{} 0 0 0 3 0 116 0 2 1 1 0}
set_db -quiet module:mtm_Alu/sub_unsigned_353 .logical_hier false
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/sub_65_19 .rtlop_info {{} 0 0 0 3 0 9 0 2 1 1 0}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]} .original_name {{u_mtm_Alu_core/CTL_out[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]/NQ} .original_name {u_mtm_Alu_core/CTL_out[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]/Q} .original_name {u_mtm_Alu_core/CTL_out[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]} .original_name {{u_mtm_Alu_core/CTL_out[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]/NQ} .original_name {u_mtm_Alu_core/CTL_out[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]/Q} .original_name {u_mtm_Alu_core/CTL_out[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]} .original_name {{u_mtm_Alu_core/CTL_out[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]/NQ} .original_name {u_mtm_Alu_core/CTL_out[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]/Q} .original_name {u_mtm_Alu_core/CTL_out[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]} .original_name {{u_mtm_Alu_core/CTL_out[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]/NQ} .original_name {u_mtm_Alu_core/CTL_out[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]/Q} .original_name {u_mtm_Alu_core/CTL_out[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]} .original_name {{u_mtm_Alu_core/CTL_out[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]/NQ} .original_name {u_mtm_Alu_core/CTL_out[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]/Q} .original_name {u_mtm_Alu_core/CTL_out[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]} .original_name {{u_mtm_Alu_core/CTL_out[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]/NQ} .original_name {u_mtm_Alu_core/CTL_out[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]/Q} .original_name {u_mtm_Alu_core/CTL_out[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]} .original_name {{u_mtm_Alu_core/CTL_out[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]/NQ} .original_name {u_mtm_Alu_core/CTL_out[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]/Q} .original_name {u_mtm_Alu_core/CTL_out[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]} .original_name {{u_mtm_Alu_core/CTL_out[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]} .single_bit_orig_name {u_mtm_Alu_core/CTL_out[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]/NQ} .original_name {u_mtm_Alu_core/CTL_out[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]/Q} .original_name {u_mtm_Alu_core/CTL_out[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[0]} .original_name {{u_mtm_Alu_core/C[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[0]} .single_bit_orig_name {u_mtm_Alu_core/C[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/NQ} .original_name {u_mtm_Alu_core/C[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/Q} .original_name {u_mtm_Alu_core/C[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[1]} .original_name {{u_mtm_Alu_core/C[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[1]} .single_bit_orig_name {u_mtm_Alu_core/C[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/NQ} .original_name {u_mtm_Alu_core/C[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/Q} .original_name {u_mtm_Alu_core/C[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[2]} .original_name {{u_mtm_Alu_core/C[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[2]} .single_bit_orig_name {u_mtm_Alu_core/C[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/NQ} .original_name {u_mtm_Alu_core/C[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/Q} .original_name {u_mtm_Alu_core/C[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[3]} .original_name {{u_mtm_Alu_core/C[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[3]} .single_bit_orig_name {u_mtm_Alu_core/C[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/NQ} .original_name {u_mtm_Alu_core/C[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/Q} .original_name {u_mtm_Alu_core/C[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[4]} .original_name {{u_mtm_Alu_core/C[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[4]} .single_bit_orig_name {u_mtm_Alu_core/C[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/NQ} .original_name {u_mtm_Alu_core/C[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/Q} .original_name {u_mtm_Alu_core/C[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[5]} .original_name {{u_mtm_Alu_core/C[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[5]} .single_bit_orig_name {u_mtm_Alu_core/C[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/NQ} .original_name {u_mtm_Alu_core/C[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/Q} .original_name {u_mtm_Alu_core/C[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[6]} .original_name {{u_mtm_Alu_core/C[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[6]} .single_bit_orig_name {u_mtm_Alu_core/C[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/NQ} .original_name {u_mtm_Alu_core/C[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/Q} .original_name {u_mtm_Alu_core/C[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[7]} .original_name {{u_mtm_Alu_core/C[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[7]} .single_bit_orig_name {u_mtm_Alu_core/C[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/NQ} .original_name {u_mtm_Alu_core/C[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/Q} .original_name {u_mtm_Alu_core/C[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[8]} .original_name {{u_mtm_Alu_core/C[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[8]} .single_bit_orig_name {u_mtm_Alu_core/C[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/NQ} .original_name {u_mtm_Alu_core/C[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/Q} .original_name {u_mtm_Alu_core/C[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[9]} .original_name {{u_mtm_Alu_core/C[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[9]} .single_bit_orig_name {u_mtm_Alu_core/C[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/NQ} .original_name {u_mtm_Alu_core/C[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/Q} .original_name {u_mtm_Alu_core/C[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[10]} .original_name {{u_mtm_Alu_core/C[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[10]} .single_bit_orig_name {u_mtm_Alu_core/C[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/NQ} .original_name {u_mtm_Alu_core/C[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/Q} .original_name {u_mtm_Alu_core/C[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[11]} .original_name {{u_mtm_Alu_core/C[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[11]} .single_bit_orig_name {u_mtm_Alu_core/C[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/NQ} .original_name {u_mtm_Alu_core/C[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/Q} .original_name {u_mtm_Alu_core/C[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[12]} .original_name {{u_mtm_Alu_core/C[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[12]} .single_bit_orig_name {u_mtm_Alu_core/C[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/NQ} .original_name {u_mtm_Alu_core/C[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/Q} .original_name {u_mtm_Alu_core/C[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[13]} .original_name {{u_mtm_Alu_core/C[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[13]} .single_bit_orig_name {u_mtm_Alu_core/C[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/NQ} .original_name {u_mtm_Alu_core/C[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/Q} .original_name {u_mtm_Alu_core/C[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[14]} .original_name {{u_mtm_Alu_core/C[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[14]} .single_bit_orig_name {u_mtm_Alu_core/C[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/NQ} .original_name {u_mtm_Alu_core/C[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/Q} .original_name {u_mtm_Alu_core/C[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[15]} .original_name {{u_mtm_Alu_core/C[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[15]} .single_bit_orig_name {u_mtm_Alu_core/C[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/NQ} .original_name {u_mtm_Alu_core/C[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/Q} .original_name {u_mtm_Alu_core/C[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[16]} .original_name {{u_mtm_Alu_core/C[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[16]} .single_bit_orig_name {u_mtm_Alu_core/C[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/NQ} .original_name {u_mtm_Alu_core/C[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/Q} .original_name {u_mtm_Alu_core/C[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[17]} .original_name {{u_mtm_Alu_core/C[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[17]} .single_bit_orig_name {u_mtm_Alu_core/C[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/NQ} .original_name {u_mtm_Alu_core/C[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/Q} .original_name {u_mtm_Alu_core/C[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[18]} .original_name {{u_mtm_Alu_core/C[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[18]} .single_bit_orig_name {u_mtm_Alu_core/C[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/NQ} .original_name {u_mtm_Alu_core/C[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/Q} .original_name {u_mtm_Alu_core/C[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[19]} .original_name {{u_mtm_Alu_core/C[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[19]} .single_bit_orig_name {u_mtm_Alu_core/C[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/NQ} .original_name {u_mtm_Alu_core/C[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/Q} .original_name {u_mtm_Alu_core/C[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[20]} .original_name {{u_mtm_Alu_core/C[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[20]} .single_bit_orig_name {u_mtm_Alu_core/C[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/NQ} .original_name {u_mtm_Alu_core/C[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/Q} .original_name {u_mtm_Alu_core/C[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[21]} .original_name {{u_mtm_Alu_core/C[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[21]} .single_bit_orig_name {u_mtm_Alu_core/C[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/NQ} .original_name {u_mtm_Alu_core/C[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/Q} .original_name {u_mtm_Alu_core/C[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[22]} .original_name {{u_mtm_Alu_core/C[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[22]} .single_bit_orig_name {u_mtm_Alu_core/C[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/NQ} .original_name {u_mtm_Alu_core/C[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/Q} .original_name {u_mtm_Alu_core/C[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[23]} .original_name {{u_mtm_Alu_core/C[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[23]} .single_bit_orig_name {u_mtm_Alu_core/C[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/NQ} .original_name {u_mtm_Alu_core/C[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/Q} .original_name {u_mtm_Alu_core/C[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[24]} .original_name {{u_mtm_Alu_core/C[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[24]} .single_bit_orig_name {u_mtm_Alu_core/C[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/NQ} .original_name {u_mtm_Alu_core/C[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/Q} .original_name {u_mtm_Alu_core/C[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[25]} .original_name {{u_mtm_Alu_core/C[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[25]} .single_bit_orig_name {u_mtm_Alu_core/C[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/NQ} .original_name {u_mtm_Alu_core/C[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/Q} .original_name {u_mtm_Alu_core/C[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[26]} .original_name {{u_mtm_Alu_core/C[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[26]} .single_bit_orig_name {u_mtm_Alu_core/C[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/NQ} .original_name {u_mtm_Alu_core/C[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/Q} .original_name {u_mtm_Alu_core/C[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[27]} .original_name {{u_mtm_Alu_core/C[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[27]} .single_bit_orig_name {u_mtm_Alu_core/C[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/NQ} .original_name {u_mtm_Alu_core/C[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/Q} .original_name {u_mtm_Alu_core/C[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[28]} .original_name {{u_mtm_Alu_core/C[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[28]} .single_bit_orig_name {u_mtm_Alu_core/C[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/NQ} .original_name {u_mtm_Alu_core/C[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/Q} .original_name {u_mtm_Alu_core/C[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[29]} .original_name {{u_mtm_Alu_core/C[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[29]} .single_bit_orig_name {u_mtm_Alu_core/C[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/NQ} .original_name {u_mtm_Alu_core/C[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/Q} .original_name {u_mtm_Alu_core/C[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[30]} .original_name {{u_mtm_Alu_core/C[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[30]} .single_bit_orig_name {u_mtm_Alu_core/C[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/NQ} .original_name {u_mtm_Alu_core/C[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/Q} .original_name {u_mtm_Alu_core/C[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[31]} .original_name {{u_mtm_Alu_core/C[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[31]} .single_bit_orig_name {u_mtm_Alu_core/C[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/NQ} .original_name {u_mtm_Alu_core/C[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/Q} .original_name {u_mtm_Alu_core/C[31]/q}
set_db -quiet module:mtm_Alu/mtm_Alu_deserializer .hdl_user_name mtm_Alu_deserializer
set_db -quiet module:mtm_Alu/mtm_Alu_deserializer .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v} {}}}
set_db -quiet module:mtm_Alu/mtm_Alu_deserializer .arch_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v
set_db -quiet module:mtm_Alu/mtm_Alu_deserializer .entity_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]} .original_name {{u_mtm_Alu_deserializer/A_nxt[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]} .original_name {{u_mtm_Alu_deserializer/A_nxt[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]} .original_name {{u_mtm_Alu_deserializer/A_nxt[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]} .original_name {{u_mtm_Alu_deserializer/A_nxt[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]} .original_name {{u_mtm_Alu_deserializer/A_nxt[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]} .original_name {{u_mtm_Alu_deserializer/A_nxt[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]} .original_name {{u_mtm_Alu_deserializer/A_nxt[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]} .original_name {{u_mtm_Alu_deserializer/A_nxt[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]} .original_name {{u_mtm_Alu_deserializer/A_nxt[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]} .original_name {{u_mtm_Alu_deserializer/A_nxt[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]} .original_name {{u_mtm_Alu_deserializer/A_nxt[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]} .original_name {{u_mtm_Alu_deserializer/A_nxt[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]} .original_name {{u_mtm_Alu_deserializer/A_nxt[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]} .original_name {{u_mtm_Alu_deserializer/A_nxt[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]} .original_name {{u_mtm_Alu_deserializer/A_nxt[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]} .original_name {{u_mtm_Alu_deserializer/A_nxt[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]} .original_name {{u_mtm_Alu_deserializer/A_nxt[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]} .original_name {{u_mtm_Alu_deserializer/A_nxt[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]} .original_name {{u_mtm_Alu_deserializer/A_nxt[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]} .original_name {{u_mtm_Alu_deserializer/A_nxt[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]} .original_name {{u_mtm_Alu_deserializer/A_nxt[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]} .original_name {{u_mtm_Alu_deserializer/A_nxt[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]} .original_name {{u_mtm_Alu_deserializer/A_nxt[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]} .original_name {{u_mtm_Alu_deserializer/A_nxt[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]} .original_name {{u_mtm_Alu_deserializer/A_nxt[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]} .original_name {{u_mtm_Alu_deserializer/A_nxt[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]} .original_name {{u_mtm_Alu_deserializer/A_nxt[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]} .original_name {{u_mtm_Alu_deserializer/A_nxt[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]} .original_name {{u_mtm_Alu_deserializer/A_nxt[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]} .original_name {{u_mtm_Alu_deserializer/A_nxt[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]} .original_name {{u_mtm_Alu_deserializer/A_nxt[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]} .original_name {{u_mtm_Alu_deserializer/A_nxt[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]} .single_bit_orig_name {u_mtm_Alu_deserializer/A_nxt[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/A_nxt[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/A_nxt[31]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]} .original_name {{u_mtm_Alu_deserializer/A[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/A[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/A[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]} .original_name {{u_mtm_Alu_deserializer/A[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/A[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/A[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]} .original_name {{u_mtm_Alu_deserializer/A[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/A[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/A[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]} .original_name {{u_mtm_Alu_deserializer/A[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/A[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/A[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]} .original_name {{u_mtm_Alu_deserializer/A[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/A[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/A[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]} .original_name {{u_mtm_Alu_deserializer/A[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/A[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/A[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]} .original_name {{u_mtm_Alu_deserializer/A[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/A[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/A[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]} .original_name {{u_mtm_Alu_deserializer/A[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/A[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/A[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]} .original_name {{u_mtm_Alu_deserializer/A[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/A[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/A[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]} .original_name {{u_mtm_Alu_deserializer/A[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/A[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/A[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]} .original_name {{u_mtm_Alu_deserializer/A[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/A[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/A[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]} .original_name {{u_mtm_Alu_deserializer/A[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/A[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/A[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]} .original_name {{u_mtm_Alu_deserializer/A[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/A[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/A[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]} .original_name {{u_mtm_Alu_deserializer/A[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/A[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/A[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]} .original_name {{u_mtm_Alu_deserializer/A[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/A[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/A[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]} .original_name {{u_mtm_Alu_deserializer/A[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/A[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/A[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]} .original_name {{u_mtm_Alu_deserializer/A[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/A[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/A[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]} .original_name {{u_mtm_Alu_deserializer/A[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/A[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/A[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]} .original_name {{u_mtm_Alu_deserializer/A[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/A[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/A[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]} .original_name {{u_mtm_Alu_deserializer/A[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/A[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/A[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]} .original_name {{u_mtm_Alu_deserializer/A[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/A[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/A[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]} .original_name {{u_mtm_Alu_deserializer/A[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/A[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/A[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]} .original_name {{u_mtm_Alu_deserializer/A[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/A[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/A[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]} .original_name {{u_mtm_Alu_deserializer/A[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/A[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/A[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]} .original_name {{u_mtm_Alu_deserializer/A[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/A[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/A[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]} .original_name {{u_mtm_Alu_deserializer/A[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/A[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/A[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]} .original_name {{u_mtm_Alu_deserializer/A[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/A[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/A[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]} .original_name {{u_mtm_Alu_deserializer/A[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/A[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/A[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]} .original_name {{u_mtm_Alu_deserializer/A[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/A[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/A[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]} .original_name {{u_mtm_Alu_deserializer/A[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/A[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/A[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]} .original_name {{u_mtm_Alu_deserializer/A[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/A[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/A[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]} .original_name {{u_mtm_Alu_deserializer/A[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]} .single_bit_orig_name {u_mtm_Alu_deserializer/A[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/A[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/A[31]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]} .original_name {{u_mtm_Alu_deserializer/B_nxt[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]} .original_name {{u_mtm_Alu_deserializer/B_nxt[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]} .original_name {{u_mtm_Alu_deserializer/B_nxt[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]} .original_name {{u_mtm_Alu_deserializer/B_nxt[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]} .original_name {{u_mtm_Alu_deserializer/B_nxt[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]} .original_name {{u_mtm_Alu_deserializer/B_nxt[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]} .original_name {{u_mtm_Alu_deserializer/B_nxt[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]} .original_name {{u_mtm_Alu_deserializer/B_nxt[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]} .original_name {{u_mtm_Alu_deserializer/B_nxt[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]} .original_name {{u_mtm_Alu_deserializer/B_nxt[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]} .original_name {{u_mtm_Alu_deserializer/B_nxt[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]} .original_name {{u_mtm_Alu_deserializer/B_nxt[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]} .original_name {{u_mtm_Alu_deserializer/B_nxt[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]} .original_name {{u_mtm_Alu_deserializer/B_nxt[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]} .original_name {{u_mtm_Alu_deserializer/B_nxt[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]} .original_name {{u_mtm_Alu_deserializer/B_nxt[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]} .original_name {{u_mtm_Alu_deserializer/B_nxt[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]} .original_name {{u_mtm_Alu_deserializer/B_nxt[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]} .original_name {{u_mtm_Alu_deserializer/B_nxt[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]} .original_name {{u_mtm_Alu_deserializer/B_nxt[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]} .original_name {{u_mtm_Alu_deserializer/B_nxt[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]} .original_name {{u_mtm_Alu_deserializer/B_nxt[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]} .original_name {{u_mtm_Alu_deserializer/B_nxt[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]} .original_name {{u_mtm_Alu_deserializer/B_nxt[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]} .original_name {{u_mtm_Alu_deserializer/B_nxt[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]} .original_name {{u_mtm_Alu_deserializer/B_nxt[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]} .original_name {{u_mtm_Alu_deserializer/B_nxt[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]} .original_name {{u_mtm_Alu_deserializer/B_nxt[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]} .original_name {{u_mtm_Alu_deserializer/B_nxt[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]} .original_name {{u_mtm_Alu_deserializer/B_nxt[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]} .original_name {{u_mtm_Alu_deserializer/B_nxt[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]} .original_name {{u_mtm_Alu_deserializer/B_nxt[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]} .single_bit_orig_name {u_mtm_Alu_deserializer/B_nxt[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/B_nxt[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/B_nxt[31]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]} .original_name {{u_mtm_Alu_deserializer/B[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/B[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/B[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]} .original_name {{u_mtm_Alu_deserializer/B[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/B[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/B[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]} .original_name {{u_mtm_Alu_deserializer/B[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/B[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/B[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]} .original_name {{u_mtm_Alu_deserializer/B[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/B[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/B[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]} .original_name {{u_mtm_Alu_deserializer/B[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/B[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/B[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]} .original_name {{u_mtm_Alu_deserializer/B[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/B[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/B[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]} .original_name {{u_mtm_Alu_deserializer/B[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/B[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/B[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]} .original_name {{u_mtm_Alu_deserializer/B[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/B[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/B[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]} .original_name {{u_mtm_Alu_deserializer/B[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/B[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/B[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]} .original_name {{u_mtm_Alu_deserializer/B[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/B[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/B[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]} .original_name {{u_mtm_Alu_deserializer/B[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/B[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/B[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]} .original_name {{u_mtm_Alu_deserializer/B[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/B[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/B[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]} .original_name {{u_mtm_Alu_deserializer/B[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/B[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/B[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]} .original_name {{u_mtm_Alu_deserializer/B[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/B[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/B[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]} .original_name {{u_mtm_Alu_deserializer/B[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/B[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/B[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]} .original_name {{u_mtm_Alu_deserializer/B[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/B[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/B[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]} .original_name {{u_mtm_Alu_deserializer/B[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/B[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/B[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]} .original_name {{u_mtm_Alu_deserializer/B[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/B[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/B[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]} .original_name {{u_mtm_Alu_deserializer/B[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/B[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/B[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]} .original_name {{u_mtm_Alu_deserializer/B[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/B[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/B[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]} .original_name {{u_mtm_Alu_deserializer/B[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/B[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/B[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]} .original_name {{u_mtm_Alu_deserializer/B[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/B[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/B[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]} .original_name {{u_mtm_Alu_deserializer/B[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/B[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/B[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]} .original_name {{u_mtm_Alu_deserializer/B[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/B[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/B[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]} .original_name {{u_mtm_Alu_deserializer/B[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/B[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/B[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]} .original_name {{u_mtm_Alu_deserializer/B[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/B[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/B[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]} .original_name {{u_mtm_Alu_deserializer/B[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/B[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/B[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]} .original_name {{u_mtm_Alu_deserializer/B[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/B[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/B[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]} .original_name {{u_mtm_Alu_deserializer/B[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/B[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/B[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]} .original_name {{u_mtm_Alu_deserializer/B[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/B[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/B[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]} .original_name {{u_mtm_Alu_deserializer/B[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/B[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/B[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]} .original_name {{u_mtm_Alu_deserializer/B[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]} .single_bit_orig_name {u_mtm_Alu_deserializer/B[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/B[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/B[31]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]} .original_name {{u_mtm_Alu_deserializer/CTL[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/CTL[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]} .original_name {{u_mtm_Alu_deserializer/CTL[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/CTL[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]} .original_name {{u_mtm_Alu_deserializer/CTL[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/CTL[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]} .original_name {{u_mtm_Alu_deserializer/CTL[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/CTL[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]} .original_name {{u_mtm_Alu_deserializer/CTL[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/CTL[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]} .original_name {{u_mtm_Alu_deserializer/CTL[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/CTL[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]} .original_name {{u_mtm_Alu_deserializer/CTL[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/CTL[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]} .original_name {{u_mtm_Alu_deserializer/CTL[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/CTL[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/CTL[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]} .original_name {{u_mtm_Alu_deserializer/bit_counter[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/bit_counter[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]} .original_name {{u_mtm_Alu_deserializer/bit_counter[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/bit_counter[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]} .original_name {{u_mtm_Alu_deserializer/bit_counter[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/bit_counter[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]} .original_name {{u_mtm_Alu_deserializer/bit_counter[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/bit_counter[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]} .original_name {{u_mtm_Alu_deserializer/data_a[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/data_a[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]} .original_name {{u_mtm_Alu_deserializer/data_a[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_a[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]} .original_name {{u_mtm_Alu_deserializer/data_a[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/data_a[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]} .original_name {{u_mtm_Alu_deserializer/data_a[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/data_a[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]} .original_name {{u_mtm_Alu_deserializer/data_a[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/data_a[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]} .original_name {{u_mtm_Alu_deserializer/data_a[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/data_a[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]} .original_name {{u_mtm_Alu_deserializer/data_a[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/data_a[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]} .original_name {{u_mtm_Alu_deserializer/data_a[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_a[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/data_a[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/data_a[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]} .original_name {{u_mtm_Alu_deserializer/data_b[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/data_b[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]} .original_name {{u_mtm_Alu_deserializer/data_b[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_b[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]} .original_name {{u_mtm_Alu_deserializer/data_b[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/data_b[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]} .original_name {{u_mtm_Alu_deserializer/data_b[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/data_b[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]} .original_name {{u_mtm_Alu_deserializer/data_b[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/data_b[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]} .original_name {{u_mtm_Alu_deserializer/data_b[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/data_b[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]} .original_name {{u_mtm_Alu_deserializer/data_b[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/data_b[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]} .original_name {{u_mtm_Alu_deserializer/data_b[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_b[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/data_b[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/data_b[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]} .original_name {{u_mtm_Alu_deserializer/data_ctl[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]} .original_name {{u_mtm_Alu_deserializer/data_ctl[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]} .original_name {{u_mtm_Alu_deserializer/data_ctl[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]} .original_name {{u_mtm_Alu_deserializer/data_ctl[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]} .original_name {{u_mtm_Alu_deserializer/data_ctl[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]} .original_name {{u_mtm_Alu_deserializer/data_ctl[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]} .original_name {{u_mtm_Alu_deserializer/data_ctl[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]} .original_name {{u_mtm_Alu_deserializer/data_ctl[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]} .single_bit_orig_name {u_mtm_Alu_deserializer/data_ctl[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/data_ctl[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/data_ctl[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]} .original_name {{u_mtm_Alu_deserializer/error[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/error[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/error[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/error[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]} .original_name {{u_mtm_Alu_deserializer/packet_counter[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/packet_counter[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/packet_counter[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/packet_counter[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]} .original_name {{u_mtm_Alu_deserializer/packet_counter[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]} .single_bit_orig_name {u_mtm_Alu_deserializer/packet_counter[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/packet_counter[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/packet_counter[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]} .original_name {{u_mtm_Alu_deserializer/packet_counter[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]} .single_bit_orig_name {u_mtm_Alu_deserializer/packet_counter[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/packet_counter[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/packet_counter[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]} .original_name {{u_mtm_Alu_deserializer/packet_counter[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]} .single_bit_orig_name {u_mtm_Alu_deserializer/packet_counter[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/packet_counter[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/packet_counter[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]} .original_name {{u_mtm_Alu_deserializer/stop[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]} .single_bit_orig_name {u_mtm_Alu_deserializer/stop[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/stop[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_deserializer/stop_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/stop[0]/q}
set_db -quiet module:mtm_Alu/mtm_Alu_serializer .hdl_user_name mtm_Alu_serializer
set_db -quiet module:mtm_Alu/mtm_Alu_serializer .hdl_filelist {{default -v2001 {SYNTHESIS} {/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v} {}}}
set_db -quiet module:mtm_Alu/mtm_Alu_serializer .arch_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v
set_db -quiet module:mtm_Alu/mtm_Alu_serializer .entity_filename /home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]} .original_name {{u_mtm_Alu_serializer/CTL_nxt[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]} .single_bit_orig_name {u_mtm_Alu_serializer/CTL_nxt[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/CTL_nxt[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]/Q} .original_name {u_mtm_Alu_serializer/CTL_nxt[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]} .original_name {{u_mtm_Alu_serializer/C_nxt[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]} .original_name {{u_mtm_Alu_serializer/C_nxt[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]} .original_name {{u_mtm_Alu_serializer/C_nxt[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]} .original_name {{u_mtm_Alu_serializer/C_nxt[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]} .original_name {{u_mtm_Alu_serializer/C_nxt[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]} .original_name {{u_mtm_Alu_serializer/C_nxt[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]} .original_name {{u_mtm_Alu_serializer/C_nxt[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]} .original_name {{u_mtm_Alu_serializer/C_nxt[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]} .original_name {{u_mtm_Alu_serializer/C_nxt[8]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[8]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[8]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[8]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]} .original_name {{u_mtm_Alu_serializer/C_nxt[9]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[9]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[9]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[9]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]} .original_name {{u_mtm_Alu_serializer/C_nxt[10]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[10]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[10]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[10]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]} .original_name {{u_mtm_Alu_serializer/C_nxt[11]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[11]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[11]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[11]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]} .original_name {{u_mtm_Alu_serializer/C_nxt[12]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[12]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[12]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[12]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]} .original_name {{u_mtm_Alu_serializer/C_nxt[13]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[13]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[13]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[13]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]} .original_name {{u_mtm_Alu_serializer/C_nxt[14]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[14]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[14]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[14]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]} .original_name {{u_mtm_Alu_serializer/C_nxt[15]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[15]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[15]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[15]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]} .original_name {{u_mtm_Alu_serializer/C_nxt[16]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[16]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[16]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[16]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]} .original_name {{u_mtm_Alu_serializer/C_nxt[17]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[17]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[17]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[17]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]} .original_name {{u_mtm_Alu_serializer/C_nxt[18]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[18]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[18]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[18]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]} .original_name {{u_mtm_Alu_serializer/C_nxt[19]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[19]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[19]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[19]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]} .original_name {{u_mtm_Alu_serializer/C_nxt[20]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[20]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[20]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[20]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]} .original_name {{u_mtm_Alu_serializer/C_nxt[21]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[21]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[21]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[21]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]} .original_name {{u_mtm_Alu_serializer/C_nxt[22]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[22]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[22]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[22]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]} .original_name {{u_mtm_Alu_serializer/C_nxt[23]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[23]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[23]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[23]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]} .original_name {{u_mtm_Alu_serializer/C_nxt[24]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[24]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[24]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[24]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]} .original_name {{u_mtm_Alu_serializer/C_nxt[25]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[25]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[25]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[25]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]} .original_name {{u_mtm_Alu_serializer/C_nxt[26]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[26]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[26]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[26]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]} .original_name {{u_mtm_Alu_serializer/C_nxt[27]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[27]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[27]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[27]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]} .original_name {{u_mtm_Alu_serializer/C_nxt[28]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[28]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[28]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[28]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]} .original_name {{u_mtm_Alu_serializer/C_nxt[29]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[29]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[29]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[29]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]} .original_name {{u_mtm_Alu_serializer/C_nxt[30]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[30]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[30]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[30]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]} .original_name {{u_mtm_Alu_serializer/C_nxt[31]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]} .single_bit_orig_name {u_mtm_Alu_serializer/C_nxt[31]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]/NQ} .original_name {u_mtm_Alu_serializer/C_nxt[31]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]/Q} .original_name {u_mtm_Alu_serializer/C_nxt[31]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]} .original_name {{u_mtm_Alu_serializer/bit_counter[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]} .original_name {{u_mtm_Alu_serializer/bit_counter[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]} .original_name {{u_mtm_Alu_serializer/bit_counter[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]} .original_name {{u_mtm_Alu_serializer/bit_counter[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]} .original_name {{u_mtm_Alu_serializer/bit_counter[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[4]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]} .original_name {{u_mtm_Alu_serializer/bit_counter[5]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[5]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[5]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[5]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]} .original_name {{u_mtm_Alu_serializer/bit_counter[6]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[6]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[6]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[6]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]} .original_name {{u_mtm_Alu_serializer/bit_counter[7]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]} .single_bit_orig_name {u_mtm_Alu_serializer/bit_counter[7]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[7]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[7]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]} .original_name {{u_mtm_Alu_serializer/packet_counter[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]} .single_bit_orig_name {u_mtm_Alu_serializer/packet_counter[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/packet_counter[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/packet_counter[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]} .original_name {{u_mtm_Alu_serializer/packet_counter[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]} .single_bit_orig_name {u_mtm_Alu_serializer/packet_counter[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/packet_counter[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/packet_counter[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]} .original_name {{u_mtm_Alu_serializer/packet_counter[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]} .single_bit_orig_name {u_mtm_Alu_serializer/packet_counter[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/packet_counter[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/packet_counter[2]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]} .original_name {{u_mtm_Alu_serializer/packet_counter[3]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]} .single_bit_orig_name {u_mtm_Alu_serializer/packet_counter[3]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/packet_counter[3]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]/Q} .original_name {u_mtm_Alu_serializer/packet_counter[3]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]} .original_name {{u_mtm_Alu_serializer/packet_counter[4]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]} .single_bit_orig_name {u_mtm_Alu_serializer/packet_counter[4]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/packet_counter[4]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]/Q} .original_name {u_mtm_Alu_serializer/packet_counter[4]/q}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/sout_reg .original_name u_mtm_Alu_serializer/sout
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/sout_reg .orig_hdl_instantiated false
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/sout_reg .single_bit_orig_name u_mtm_Alu_serializer/sout
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/sout_reg .gint_phase_inversion false
set_db -quiet pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/NQ .original_name u_mtm_Alu_serializer/sout/q
set_db -quiet pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/Q .original_name u_mtm_Alu_serializer/sout/q
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]} .original_name {{u_mtm_Alu_serializer/state[0]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]} .single_bit_orig_name {u_mtm_Alu_serializer/state[0]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/Q} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]} .original_name {{u_mtm_Alu_serializer/state[1]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]} .single_bit_orig_name {u_mtm_Alu_serializer/state[1]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/state[1]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/Q} .original_name {u_mtm_Alu_serializer/state[1]/q}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]} .original_name {{u_mtm_Alu_serializer/state[2]}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]} .single_bit_orig_name {u_mtm_Alu_serializer/state[2]}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/state[2]/q}
set_db -quiet {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]/Q} .original_name {u_mtm_Alu_serializer/state[2]/q}
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v 42 28}}
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/add_58_19 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 128 169}}
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/lt_68_20 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 128 169}}
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_core/sub_65_19 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 128 169}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5792 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5793 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5794 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5795 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5796 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5797 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5798 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5799 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5800 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5801 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5802 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5803 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5804 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5805 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5806 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5807 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5808 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5809 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5811 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5812 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5813 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5815 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5816 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5817 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5818 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5819 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5820 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5821 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5822 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5823 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5824 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5825 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5826 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5827 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5828 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5829 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5830 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5831 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5832 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5833 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5834 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5835 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5836 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5837 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5838 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5839 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5840 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5841 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5842 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5843 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5844 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5845 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5846 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5847 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5848 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5849 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5850 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5851 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5852 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5853 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5854 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5855 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5856 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5860 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5861 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5862 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5863 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5864 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5865 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5866 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5867 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5868 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5869 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5870 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5871 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5872 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5873 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5874 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5875 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5876 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5877 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5878 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5879 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5880 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5881 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5882 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5883 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5884 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5885 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5886 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5887 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5888 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5889 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5890 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5891 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5892 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5893 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5894 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5895 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5896 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5897 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5898 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5899 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5900 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5901 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5902 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5903 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5904 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5905 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5906 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5907 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5908 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5909 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5910 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5911 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5912 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5913 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5914 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5915 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5916 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5917 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5918 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5919 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5920 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5921 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5922 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5923 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5924 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5925 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5926 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5927 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5928 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5929 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5930 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5931 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5932 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5933 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5934 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5935 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5936 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5937 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5938 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5939 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5940 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5941 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5942 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5944 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5945 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5946 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5947 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5948 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5949 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5950 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5951 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5952 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5953 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5954 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5955 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5956 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5957 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5958 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5959 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5960 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5961 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5962 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5963 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5964 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5965 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5966 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5967 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5968 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5969 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5970 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5971 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5972 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5973 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5974 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5975 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5976 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5977 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5978 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5979 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5980 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5981 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5982 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5983 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5984 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5985 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5986 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5987 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5988 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5989 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5990 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5991 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5992 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5993 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5994 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5995 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5996 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5997 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5998 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g5999 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6000 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6001 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6002 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6003 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6004 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6005 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6006 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6007 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6008 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6009 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6010 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6011 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6012 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6013 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6014 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6015 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6016 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6017 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6018 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6019 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6020 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6021 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6022 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6023 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6024 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6025 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6026 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6027 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6028 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6029 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6030 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6031 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6032 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6033 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6034 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6035 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6036 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6037 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6038 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6039 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6040 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6041 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6042 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6043 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6044 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6045 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6046 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6047 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6048 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6049 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6050 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6051 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6052 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6053 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6054 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6055 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6056 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6057 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6058 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6059 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6060 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6061 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6062 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6063 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6064 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6065 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6066 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6067 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6068 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6069 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6070 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6071 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6072 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6073 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6074 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6075 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6076 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6077 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6078 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6079 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6080 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6081 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6082 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6083 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6084 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6085 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6086 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6087 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6088 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6089 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6090 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6091 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6092 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6093 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6094 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g6095 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_core/C_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4227 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4243 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4244 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4245 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4246 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4247 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4248 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4249 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4250 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4251 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4252 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4253 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4254 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4255 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4256 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4257 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4258 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4259 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4260 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4261 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4262 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4263 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4264 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4265 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4266 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4267 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4268 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4269 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4270 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4271 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4272 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4273 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4274 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4275 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4276 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4277 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4278 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4279 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4280 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4281 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4282 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4283 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4284 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4285 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4286 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4287 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4288 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4289 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4290 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4291 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4292 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4293 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4294 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4295 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4296 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4297 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4298 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4299 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4300 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4301 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4302 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4303 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4304 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4305 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4306 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4307 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4308 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4309 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4310 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4311 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4312 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4313 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4314 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4315 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4316 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4317 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4318 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4319 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4320 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4321 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4322 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4323 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4324 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4325 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4326 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4327 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4328 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4329 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4330 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4331 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4332 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4333 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4334 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4335 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4336 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4337 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4338 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4339 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4340 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4341 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4342 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4343 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4344 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4345 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4346 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4347 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4348 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4349 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4350 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4351 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4352 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4353 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4354 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4355 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4356 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4357 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4358 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4359 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4360 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4361 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4362 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4363 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4364 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4365 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4366 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4367 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4368 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4369 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4370 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4371 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4372 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4373 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4374 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4375 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4376 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4377 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4378 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4379 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4380 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4381 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4382 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4383 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4384 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4385 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4386 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4387 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4388 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4389 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4390 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4391 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4392 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4393 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4394 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4395 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4396 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4397 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4398 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_core/g4399 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 1}}
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_deserializer .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v 33 44}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_nxt_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_nxt_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 21}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 1}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 41 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 41 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 22}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 41 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_a_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_b_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/data_ctl_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/error_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 44 14}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 26}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 26}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 22 26}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_deserializer/packet_counter_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_deserializer.v 81 46}}
set_db -quiet hinst:mtm_Alu/u_mtm_Alu_serializer .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu.v 53 40}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/CTL_nxt_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 20}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[8]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[9]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[10]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[11]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[12]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[13]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[14]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[15]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[16]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[17]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[18]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[19]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[20]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[21]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[22]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[23]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[24]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[25]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[26]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[27]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[28]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[29]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[30]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/C_nxt_reg[31]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 19}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 70 34}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 24}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 94 23}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 27}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[2]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 94 23}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[3]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 27}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/packet_counter_reg[4]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 27}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/sout_reg .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 3}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 18}}
set_db -quiet {inst:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]} .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_serializer.v 24 18}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4937 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4959 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4960 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4961 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4962 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4963 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4964 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4965 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4966 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4967 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4968 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4969 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4970 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4971 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4972 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4973 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4974 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4975 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4976 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4977 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4983 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4984 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4985 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4986 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4987 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4988 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4989 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4990 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4991 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4992 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4993 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4994 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4995 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4996 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4997 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4998 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g4999 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5000 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5001 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5002 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5003 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5004 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5005 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5006 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5007 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5008 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5009 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5010 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5011 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5012 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5013 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5014 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5015 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5016 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5017 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5018 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5019 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5020 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5021 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5022 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5023 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5024 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5025 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5026 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5033 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5034 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5035 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5036 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5037 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5038 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5039 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5040 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5041 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5042 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5043 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5044 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5045 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5046 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5047 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5048 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5049 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5050 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5051 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5052 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5053 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5054 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5055 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5056 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5057 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5058 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5059 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5060 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5061 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5062 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5063 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5067 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5068 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5069 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5070 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5071 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5072 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5073 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5074 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5075 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5076 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5077 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5078 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5079 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5080 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5081 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5082 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5083 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5084 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5085 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5086 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5087 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5088 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5089 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5090 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5091 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5092 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5093 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5094 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5095 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5096 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5097 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5098 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5099 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5100 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5101 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5102 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5103 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5104 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5105 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5106 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5107 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5108 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5109 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5110 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5111 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5112 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5113 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5114 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5115 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5116 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5117 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5118 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5119 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5120 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5121 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5122 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5123 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5124 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5125 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5126 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5127 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5128 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5129 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5130 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5131 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5132 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5133 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5134 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5135 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5136 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5137 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5138 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5139 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5140 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5141 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5142 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5143 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5144 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5145 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5146 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5147 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5148 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5149 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5150 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5151 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5152 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5153 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5154 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5155 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5156 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5157 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5158 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5159 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5160 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5161 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5162 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5163 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5164 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5165 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5166 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5167 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5168 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5169 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5170 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5171 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5172 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5173 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5174 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5175 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5176 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5177 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5178 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5179 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5180 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5181 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5182 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5183 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5184 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5185 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5186 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5187 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5188 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5189 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5190 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5191 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5192 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5193 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5194 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5195 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5196 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5197 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5198 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5199 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5200 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5201 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5202 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5203 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5204 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5205 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5206 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5207 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5208 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5209 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5210 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5211 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5212 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5213 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5214 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5215 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5216 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5217 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5218 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5219 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5220 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5221 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5222 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5223 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5224 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5225 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5226 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5227 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5228 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5229 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5230 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5231 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5232 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5233 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5234 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5235 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5236 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5237 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5238 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5239 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5240 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5241 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5242 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5243 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5244 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5245 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5246 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5247 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5248 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5249 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5250 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5251 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5252 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5253 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5254 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5255 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5256 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5257 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5258 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5259 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5260 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5261 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5262 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5263 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
set_db -quiet inst:mtm_Alu/u_mtm_Alu_serializer/g5264 .file_row_col {{/home/student/pherian/PPCU_VLSI/TSMC130/VLSI_ALU_PROJECT/rtl/mtm_Alu_core.v 29 24}}
# there is no file_row_col attribute information available
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 17.13-s033_1
## Written on 23:21:41 08-Sep 2019
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_wildcard_end_steps -obj_type root]} {set_db flow_edit_wildcard_end_steps {}}
if {[is_attribute flow_edit_wildcard_start_steps -obj_type root]} {set_db flow_edit_wildcard_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_database_directory -obj_type root]} {set_db flow_database_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 0a711f24}
if {[is_attribute flow_overwrite_database -obj_type root]} {set_db flow_overwrite_database false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

