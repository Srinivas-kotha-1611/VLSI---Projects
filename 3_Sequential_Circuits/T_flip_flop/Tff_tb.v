`timescale 1ns/1ps

module T_FlipFlop_tb;

reg clk;
reg T;
wire Q;

T_FlipFlop uut(
    .clk(clk),
    .T(T),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;

    T = 0;
    #10;

    T = 1;
    #40;

    T = 0;
    #20;

    $finish;
end

endmodule
