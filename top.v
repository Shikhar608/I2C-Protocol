
module top (
  input clk100MHz,
  input rst_btn,
  input newd_btn,
  input wr_btn,
  input [7:0] wdata_sw,
  input [6:0] addr_sw,
  output [7:0] rdata_led,
  output scl,
  inout sda
);

  wire rst = rst_btn;
  wire newd = newd_btn;
  wire wr = wr_btn;

  wire [7:0] rdata;
  wire done;

  i2c_eeprom_controller #(
    .CLK_FREQ(100_000_000),
    .I2C_FREQ(100_000)
  ) dut (
    .clk(clk100MHz),
    .rst(rst),
    .newd(newd),
    .wr(wr),
    .wdata(wdata_sw),
    .addr(addr_sw),
    .rdata(rdata),
    .done(done),
    .scl(scl),
    .sda(sda)
  );

  assign rdata_led = rdata;

endmodule
