// testbench for half adder using verilog
// Author: Prathyusha Korepu
module fa_tb;
  reg a,b;
  wire sum,carry;
  half_adder fa(a,b,sum,carry);
  initial
    begin
      $dumpfile("halfadder.vcd");
      $dumpvars;
    end
  
  initial
    begin
      a=0; b=0;
      #2 a=0; b=1;
      #2 a=1; b=0;
      #2 a=1; b=1;
      
    end
endmodule
