`timescale 1ns/1ps

module D_FlipFlop_tb;

reg clk;
reg D;
wire Q;

D_FlipFlop uut(
    .clk(clk),
    .D(D),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    D = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;

    #20 $finish;
end

endmodule
