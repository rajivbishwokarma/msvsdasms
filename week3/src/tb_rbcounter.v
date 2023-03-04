`timescale 1ns / 1ps
`include "rbcounter.v"

module tb_rbcounter;
  reg clk;
  reg rst;
  reg t;
  wire [3:0] q, qb;
  
  rbcounter dut
  (
    .clk (clk),
    .rst (rst),
    .t   (t),
    .q   (q),
    .qb  (qb)
  );
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0, tb_counter);

    rst = 1;
    #10; rst = 0;
    #10; t = 1'b1;
    #200; $finish;
  end
  
  
endmodule
