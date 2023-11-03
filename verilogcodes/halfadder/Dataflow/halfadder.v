
//verilog code to design half adder dataflow model

`timescale 10ns/1ns

module hs(a,b,sum,carry);
  
  input wire  a,b;
  output wire  sum,carry;
  
  assign sum = a^b;
  assign carry = a*b;

  
endmodule
