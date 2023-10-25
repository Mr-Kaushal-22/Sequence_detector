`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 17:44:30
// Design Name: 
// Module Name: Mealy_101_or_110_Seq_O
// Name - Kaushal Kumar Kumawat
// Roll No. - 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Mealy_101_or_110_Seq_O(z,d,clock,reset);
input d,clock,reset;
output z;
reg [1:0] pre_state;
parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;

always @(negedge clock)
begin
    if(!reset)
        pre_state <= A;
    else 
        case(pre_state)
            A: pre_state <= d ? B : A;
            B: pre_state <= d ? C : D;
            C: pre_state <= d ? C : D;
            D: pre_state <= d ? B : A;
        endcase
end
assign z = ((pre_state == C && d == 0) || (pre_state == D && d == 1)) ? 1 : 0;
endmodule
