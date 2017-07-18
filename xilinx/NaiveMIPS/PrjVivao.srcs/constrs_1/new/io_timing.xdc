create_clock -period 10.000 -name clk_in -waveform {0.000 5.000} [get_ports clk_in]
create_clock -period 25 -name CLK_OUT2_clk_wiz_v3_6
create_clock -period 100.000 -name CLK_OUT1_clk_wiz_v3_6
create_generated_clock -name vga_clk -source [get_pins clk_vga_0/clk_out1] -multiply_by 1 [get_ports vga_clk]
set_input_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {base_ram_data[*]}]
set_input_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 18.200 [get_ports {base_ram_data[*]}]
set_input_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {ext_ram_data[*]}]
set_input_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 18.200 [get_ports {ext_ram_data[*]}]
set_input_delay -clock [get_clocks CLK_OUT1_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {flash_data[*]}]
set_input_delay -clock [get_clocks CLK_OUT1_clk_wiz_v3_6] -max -add_delay 70.000 [get_ports {flash_data[*]}]
set_output_delay -clock [get_clocks CLK_OUT1_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports flash_*]
set_output_delay -clock [get_clocks CLK_OUT1_clk_wiz_v3_6] -max -add_delay 70.000 [get_ports flash_*]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {base_ram_addr[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {base_ram_addr[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {base_ram_data[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {base_ram_data[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {ext_ram_addr[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {ext_ram_addr[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {ext_ram_data[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {ext_ram_data[*]}]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports {vga_pixel[*]}]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports {vga_pixel[*]}]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_ce_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_ce_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_oe_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_oe_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_we_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_we_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_ce_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_ce_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_oe_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_oe_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_we_n]
set_output_delay -clock [get_clocks CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_we_n]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_de]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_de]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_hsync]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_hsync]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_vsync]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_vsync]
set_false_path -from [get_clocks CLK_OUT3_clk_wiz_v3_6] -to [get_clocks CLK_OUT1_clk_wiz_v3_6]
set_false_path -to [get_pins -hier *_sync_reg/D]
set_false_path -to [get_pins -hier *_sync_reg[0]*/D]
set_false_path -to [get_pins -hier *rst_shifter_reg[*]/CLR]
set_false_path -from [get_pins {gpu_inst/pixelOffsetReg_reg[0][*]/C}] -to [get_pins {gpu_inst/pixelOffsetReg_reg[1][*]/D}]
set_false_path -from [get_pins uart0/tx1/sync_tx_req/FlagToggle_clkA_reg/C] -to [get_pins {uart0/tx1/sync_tx_req/SyncA_clkB_reg[0]/D}]
