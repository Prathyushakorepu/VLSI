`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2023 01:21:59 PM
// Design Name: 
// Module Name: test_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_gates();
reg a,b;
wire y0,y1,y2,y3,y4,y5,y6,y7;

gates  dut(a,b,y0,y1,y2,y3,y4,y5,y6,y7);

initial 
begin
    a = 0; b = 0;
 
    #1; a = 0; b = 1;
    #1; a = 1; b = 0;
    #1; a = 1; b = 1;
 end
initial
begin
 #5; $finish;
 end

endmodule
