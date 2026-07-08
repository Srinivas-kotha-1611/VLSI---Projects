`timescale 1ns/1ps

module alu_tb;
reg [3:0] A;
reg [3:0] B;
reg [2:0] S;
wire [3:0] Y;

alu uut(
.A(A),
.B(B),
.S(S),
.Y(Y)
);

initial begin

A=4'b1010;
B=4'b0101;
S=3'b000; #10;
S=3'b001; #10;
S=3'b010; #10;
S=3'b011; #10;
S=3'b100; #10;
S=3'b101; #10;
S=3'b110; #10;
S=3'b111; #10;
$finish;

end

initial
$monitor("Time=%0t A=%b B=%b S=%b Y=%b",
$time,A,B,S,Y);

endmodule
