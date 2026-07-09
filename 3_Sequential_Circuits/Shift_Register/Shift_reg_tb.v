`timescale 1ns/1ps

module Shift_Register_tb;

reg clk;
reg D;
wire [3:0] Q;

Shift_Register uut(
    .clk(clk),
    .D(D),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    D = 1;
    #10;
    D = 0;
    #10;
    D = 1;
    #10;
    D = 1;
    #10;
    D = 0;
    #20;
    $finish;
end

endmodule
