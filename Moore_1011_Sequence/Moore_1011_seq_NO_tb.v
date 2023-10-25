`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2023 00:08:44
// Design Name: 
// Module Name: Moore_1011_seq_NO_tb
// Name - Kaushal Kumar Kumawat
// Roll No. - 21PHC1R15
//////////////////////////////////////////////////////////////////////////////////


module Moore_1011_seq_NO_tb();
reg d,clk,rst;
wire z;

Moore_1011_seq_NO FSM_1(z,d,clk,rst);

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
    #10 d = 1;
    #10 d = 1;  
    #10 d = 0;
    #10 d = 1; 
end

always
    #5 clk = ~clk;
    
initial #160 $stop;
endmodule
