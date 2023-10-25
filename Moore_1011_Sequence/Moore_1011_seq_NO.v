`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2023 19:10:49
// Design Name: 
// Module Name: Moore_1011_seq_NO
// Name - Kaushal Kumar Kumawat
// Roll No. - 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Moore_1011_seq_NO(z,d,clk,rst);
input d,clk,rst;
output reg z;

reg [2:0] pre_state, nxt_state;
parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;

// Combinational logic for next state
always @(pre_state,d)
case(pre_state)
    A: nxt_state = d ? B : A;
    B: nxt_state = d ? B : C;
    C: nxt_state = d ? D : A;
    D: nxt_state = d ? E : C;
    E: nxt_state = d ? B : A; 
endcase

always @(negedge clk)
if(!rst)    pre_state <= 3'b000;
else    pre_state <= nxt_state;  

always @(pre_state)
if (pre_state == E) z = 1;
else z = 0;
endmodule
