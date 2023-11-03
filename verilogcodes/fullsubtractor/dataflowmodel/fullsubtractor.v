//testbench for full subtractor 
`timescale 10ns/1ns

module tb_fs();
  
  reg a,b,c;
  wire difference,barrow;
  
  fs dut(.a(a),.b(b),.c(c),.difference(difference),.barrow(barrow));
  
  initial
    begin
      $monitor("simtime=%g,a=%b,b=%b,c=%b,difference=%b,barrow=%b",$time,a,b,c,difference,barrow);
    end
  
  initial
    begin
      
      a=0; b=0; c=0;
      #5 a=0; b=0; c=1;
      #5 a=0; b=1; c=0;
      #5 a=0; b=1; c=1;
      #5 a=1; b=0; c=0;
      #5 a=1; b=0; c=1;
      #5 a=1; b=1; c=0;
      #5 a=1; b=1; c=1;
      
      end
  
  initial
    begin
  $dumpfile("dump.vcd"); 
  $dumpvars;
    end
  
  initial
    begin
      #50;  $finish;
    end
endmodule
