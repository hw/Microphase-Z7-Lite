# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/emio_key_led.xdc

# Block Designs: bd/emio_key_led/emio_key_led.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==emio_key_led || ORIG_REF_NAME==emio_key_led} -quiet] -quiet

# IP: bd/emio_key_led/ip/emio_key_led_processing_system7_0_0/emio_key_led_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==emio_key_led_processing_system7_0_0 || ORIG_REF_NAME==emio_key_led_processing_system7_0_0} -quiet] -quiet

# XDC: bd/emio_key_led/ip/emio_key_led_processing_system7_0_0/emio_key_led_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==emio_key_led_processing_system7_0_0 || ORIG_REF_NAME==emio_key_led_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/emio_key_led/emio_key_led_ooc.xdc
