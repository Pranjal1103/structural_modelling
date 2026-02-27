//design
module hs(a,b,c,diff,bor);
  input a,b;
  output c,diff,bor;
  not n1(c,a);
  xor x1(diff,a,b);
  and a1(bor,c,b);
endmodule
//////////////////////////////////////////////////////////////////////////////////////////
//testbench
module tb;
  reg a,b;
  wire c,s;
  hs DUT(.a(a),.b(b),.c(c),.diff(diff),.bor(bor));
 initial begin
   $monitor ("time=%t,a=%b,b=%b,c=%b,diff=%b,bor=%b",$time,a,b,c,diff,bor);
    $dumpfile("dump.vcd"); 
    $dumpvars;
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #20;
    
    $finish;
  end
endmodule
