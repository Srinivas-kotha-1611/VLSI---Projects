`timescale 1ns/1ps

module JK_FlipFlop_tb;

reg clk;
reg J;
reg K;
wire Q;

JK_FlipFlop uut(
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;

    J=0; K=0;
    #10;

    J=0; K=1;
    #10;

    J=1; K=0;
    #10;

    J=1; K=1;
    #20;

    $finish;
end

endmodule
