// testbench for half subtractor using verilog
// Author: Prathyusha Korepu
module fs_tb;
  reg a,b;
  wire def,br;
  half_subtractor fs(a,b,def,br);
  initial
    begin
      $dumpfile("halsubtractor.vcd");
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
