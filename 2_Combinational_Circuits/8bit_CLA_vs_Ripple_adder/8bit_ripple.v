module ripple_carry_adder_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] Sum,
    output       Cout
);

wire C4;

ripple_carry_adder (
    .A(A[3:0]),
    .B(B[3:0]),
    .Cin(Cin),
    .Sum(Sum[3:0]),
    .Cout(C4)
);

ripple_carry_adder (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(C4),
    .Sum(Sum[7:4]),
    .Cout(Cout)
);

endmodule
