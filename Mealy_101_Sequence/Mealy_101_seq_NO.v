`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2023 18:38:37
// Design Name: 
// Module Name: Mealy_101_seq_NO
// Name - Kaushal Kumar Kumawat
// Roll No. - 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Mealy_101_seq_NO(z,d,clk,rst);
input d,clk,rst;
output z;

reg [1:0] pre_state, nxt_state;
parameter A = 2'b00, B = 2'b01, C = 2'b10;

always @(negedge clk)
begin
if (!rst)   pre_state <= A;
else        
    case (pre_state)
        A:  if (d)  pre_state = B;
            else    pre_state = A;
            
        B:  if (d)  pre_state = B;
            else    pre_state = C;
            
        C:  if (d)  pre_state = A;
            else    pre_state = A;
            
        default:    pre_state = A;
        
    endcase
end
assign z = (pre_state == C && d ==1) ? 1 : 0;
endmodule
