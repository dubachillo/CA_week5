module sr_latch
(
input s,
input r,
output q,
output q_n
);
assign q = ~ ( r | q_n ) ;
assign q_n = ~ ( s | q ) ;
endmodule

module d_latch
(
input clk,
input d,
output q,
output q_n
);
wire r = ~d & clk;
wire s = d & clk ;
sr_latch sr_latch (s, r, q, q_n);
endmodule