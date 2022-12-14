connect -url tcp:127.0.0.1:3121
source /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/10.ps_lwip/ps_lwip.sdk/ps_lwip_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 201706300081" && level==0} -index 1
fpga -file /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/10.ps_lwip/ps_lwip.sdk/ps_lwip_wrapper_hw_platform_0/ps_lwip_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
loadhw -hw /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/10.ps_lwip/ps_lwip.sdk/ps_lwip_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
dow /home/arif/Documents/1.GitSVN/8.GitHub/zynq_z7lite_training/Tutorial/part2/10.ps_lwip/ps_lwip.sdk/ps_lwip/Debug/ps_lwip.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
con
