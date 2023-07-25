// Using verilog Code for implementing half_subtractor
//Author: Prathyusha Korepu
`timescale 1ns / 1ps
module half_subtractor(a,b,def,br);
  input a,b;
  output def,br;
  assign def=a^b;
  assign br=((~a)&b);
endmodule

