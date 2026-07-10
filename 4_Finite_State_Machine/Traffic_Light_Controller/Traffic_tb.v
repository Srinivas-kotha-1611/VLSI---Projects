`timescale 1ns/1ps

module Traffic_Light_Controller_tb;

reg clk;
reg reset;

wire [2:0] roadA;
wire [2:0] roadB;

Traffic_Light_Controller uut(
    .clk(clk),
    .reset(reset),
    .roadA(roadA),
    .roadB(roadB)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #80;

    $finish;
end

initial
begin
    $monitor("Time=%0t Reset=%b RoadA=%b RoadB=%b",
             $time, reset, roadA, roadB);
end

endmodule
