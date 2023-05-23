module norgate (a,b,y);
 input a,b;
  output y;
  assign y=~(a|b);
endmodule

module  norgate_tb ();
reg a,b;wire y;
norgate dut (.a(a), .b(b), .y(y));
initial begin

a=0;
b=0;
#10

a=0;
b=1;
#10

a=1;
b=0;
#10

a=1;
b=1;
#10

$stop;
end 
initial
$monitor("a=%0b,b=%0b,y=%0b",a,b,y);
endmodule