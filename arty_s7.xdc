
## Clock
set_property PACKAGE_PIN E3 [get_ports clk100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk100MHz]

## Buttons
set_property PACKAGE_PIN D9 [get_ports rst_btn]
set_property PACKAGE_PIN C9 [get_ports newd_btn]
set_property PACKAGE_PIN B8 [get_ports wr_btn]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_btn newd_btn wr_btn}]

## LEDs (for rdata)
set_property PACKAGE_PIN H5 [get_ports {rdata_led[0]}]
set_property PACKAGE_PIN J5 [get_ports {rdata_led[1]}]
set_property PACKAGE_PIN T9 [get_ports {rdata_led[2]}]
set_property PACKAGE_PIN T10 [get_ports {rdata_led[3]}]
set_property PACKAGE_PIN T11 [get_ports {rdata_led[4]}]
set_property PACKAGE_PIN T14 [get_ports {rdata_led[5]}]
set_property PACKAGE_PIN U14 [get_ports {rdata_led[6]}]
set_property PACKAGE_PIN V14 [get_ports {rdata_led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports rdata_led[*]]

## I2C Pins on PMOD JA
set_property PACKAGE_PIN U13 [get_ports scl]
set_property PACKAGE_PIN V13 [get_ports sda]
set_property IOSTANDARD LVCMOS33 [get_ports {scl sda}]
set_property PULLUP true [get_ports sda]
