`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 17:42:51
// Design Name: 
// Module Name: Mealy_110_or_101_seq_O_tb
// Name - Kaushal Kumar Kumawat
// Roll No. - 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Mealy_110_or_101_seq_O_tb();
reg d,clk,rst;
wire z;

Mealy_101_or_110_Seq_O FSM_1(z,d,clk,rst);
initial 
begin
    rst = 0;
    clk = 0;
    d = 0;
    #10 rst = 1;
    #5 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;  
    #10 d = 0;
    #10 d = 1; 
end

always
    #5 clk = ~clk;
    
initial #160 $stop;
endmodule
