`timescale 1ns/1ps

module Counter_tb;

reg clk;
wire [3:0] Q;

Counter uut(
    .clk(clk),
    .Q(Q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;

    #100;

    $finish;
end

endmodule
