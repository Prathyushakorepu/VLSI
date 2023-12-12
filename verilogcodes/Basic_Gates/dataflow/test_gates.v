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
reg a;
reg b;
wire BUF_gate;
wire AND_gate;
wire OR_gate;
wire XOR_gate;
wire NOT_gate;
wire NAND_gate;
wire NOR_gate;
wire XNOR_gate;

gates  dut(.a(a),
           .b(b),
           .BUF_gate(BUF_gate),
           .AND_gate(AND_gate),
           .OR_gate(OR_gate),
           .XOR_gate(XOR_gate),
           .NOT_gate(NOT_gate),
           .NAND_gate(NAND_gate),
           .NOR_gate(NOR_gate),
           .XNOR_gate(XNOR_gate));

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
