`timescale 1ns / 1ps

module rbcounter
(
  input clk,
  input rst,
  input t,
  output [3:0] q, qb
);  
  reg [31:0] dummy_buff1, dummy_buff_2;
  
  t_ff TFF0_INST
  (
    .clk (~clk  ), 
    .rst (rst  ), 
    .t   (t    ), 
    .q   (q[0] ), 
    .qb  (qb[0])
  );
  
  t_ff TFF1_INST
  (
    .clk (~q[0] ), 
    .rst (rst  ), 
    .t   (t    ), 
    .q   (q[1] ), 
    .qb  (qb[1])
  );
  
  t_ff TFF2_INST
  (
    .clk (~q[1] ), 
    .rst (rst  ), 
    .t   (t    ), 
    .q   (q[2] ), 
    .qb  (qb[2])
  );
  
  t_ff TFF3_INST
  (
    .clk (~q[2] ), 
    .rst (rst  ), 
    .t   (t    ), 
    .q   (q[3] ), 
    .qb  (qb[3])
  );
    
endmodule
