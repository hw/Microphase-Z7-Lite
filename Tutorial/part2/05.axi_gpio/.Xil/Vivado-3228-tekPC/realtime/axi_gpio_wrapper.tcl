# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-3228-tekPC/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7z020clg400-2
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/ec67/hdl {
      /opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      /opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/ec67/hdl {
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_aw_atc.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_b_atc.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_w_atc.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_atc.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_trace_buffer.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ip/axi_gpio_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ip/axi_gpio_processing_system7_0_0/synth/axi_gpio_processing_system7_0_0.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/synth/axi_gpio.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ip/axi_gpio_auto_pc_0/synth/axi_gpio_auto_pc_0.v
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/hdl/axi_gpio_wrapper.v
    }
      rt::read_vhdl -lib axi_lite_ipif_v3_0_4 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd
      rt::read_vhdl -lib lib_cdc_v1_0_2 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd
      rt::read_vhdl -lib interrupt_control_v3_1_4 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd
      rt::read_vhdl -lib axi_gpio_v2_0_20 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd
      rt::read_vhdl -lib xil_defaultlib {
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ip/axi_gpio_axi_gpio_0_0/synth/axi_gpio_axi_gpio_0_0.vhd
      /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ip/axi_gpio_rst_ps7_0_50M_0/synth/axi_gpio_rst_ps7_0_50M_0.vhd
    }
      rt::read_vhdl -lib proc_sys_reset_v5_0_13 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd
      rt::read_vhdl -lib blk_mem_gen_v8_4_2 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/37c2/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd
      rt::read_vhdl -lib fifo_generator_v13_2_3 /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/05.axi_gpio/axi_gpio.srcs/sources_1/bd/axi_gpio/ipshared/64f4/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd
      rt::read_vhdl -lib xpm /opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top axi_gpio_wrapper
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-3228-tekPC/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
