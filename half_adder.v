//design
module ha(s,c,a,b);
  input a,b;
  output s,c;
  xor g1(s,a,b);
  and g2(c,a,b);
  endmodule
------------------------------------------------------------------------------------------------------------
//testbench
module tb;
  reg a,b;
  wire c,s;
  ha DUT(.a(a),.b(b),.s(s),.c(c));
 initial begin
   $monitor ("time=%t,a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
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
