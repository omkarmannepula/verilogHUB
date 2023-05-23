module andgate(a,b,y);
 input a,b;
 output y;
assign y = a&b;
endmodule

module andgate_tb();
 wire y;
 reg a,b;
andgate dut(.a(a), .b(b), .y(y));
 initial begin 
a=0;
b=0;
#40

a=0;
b=1;
#40

a=1;
b=0;
#40

a=1;
b=1;
#40

$stop;
end
initial
$monitor("a=%b,b=%b,y=%b",a,b,y);

endmodule
