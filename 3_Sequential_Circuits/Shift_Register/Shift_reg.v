module Shift_Register(
    input clk,
    input D,
    output reg [3:0] Q
);

initial
    Q = 4'b0000;

always @(posedge clk)
begin
    Q <= {Q[2:0], D};
end

endmodule
