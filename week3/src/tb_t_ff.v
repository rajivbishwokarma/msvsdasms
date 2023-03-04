`timescale 1ns / 1ps
`include "t_ff.v"

module tb_t_ff;

  reg clk;
  reg rst;
  reg prev;
  reg t;
  wire q;
  wire qb;
  
  t_ff DUT
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
    $dumpfile("tb_t_ff.vcd");
    $dumpvars(0, tb_t_ff);
	rst = 1;
    #10; rst = 0;
    
    prev = q;
    #10; t = 0; #5;
    check_out(prev, t, q, qb);
      
    prev = q;
    #20; t = 1; #5; 
    check_out(prev, t, q, qb);
    
    prev = q;
    #20; t = 0; #5;  
    check_out(prev, t, q, qb);
    
    prev = q;
    #20; t = 1; #5;
    check_out(prev, t, q, qb);
    
    #20; $finish;
  end
  
  task check_out;
    input prev, t, q, qb;
    begin
      if (((t == 1'b0) && (q == prev)) || ((t == 1'b1) && (q == ~prev))) 
      $display("[CHECK: PASSED] PREV=%b T=%b Q=%b QB=%b", prev, t, q, qb);
    else
      $display("[CHECK: FAILED] PREV=%b T=%b Q=%b QB=%b", prev, t, q, qb);
    end
    
  endtask
endmodule