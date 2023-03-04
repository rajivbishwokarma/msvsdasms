// Code your design here
`timescale 1ns / 1ns

module t_ff 
(
  input clk,
  input rst,
  input t,
  output reg q,
  output reg qb
);
  
  /*
   * Clk | T | Q(n+1) 
   *  0  | x | Q(n)
   *  1  | 0 | Q(n)
   *  1  | 1 | Q(n)'
   */
  
  always @(posedge clk) begin
    if (rst) begin
      q  <= 0;
      qb <= 1;
    end
    if (t) begin
      q  <= ~q;
      qb <= q;
    end
  end

endmodule