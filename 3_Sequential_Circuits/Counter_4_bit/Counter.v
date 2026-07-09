module Counter(
    input clk,
    output reg [3:0] Q
);

initial
    Q = 4'b0000;

always @(posedge clk)
begin
    Q <= Q + 1;
end

endmodule
