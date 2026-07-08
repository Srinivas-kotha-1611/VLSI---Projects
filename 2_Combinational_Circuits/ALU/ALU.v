module alu(

input [3:0] A,
input [3:0] B,
input [2:0] S,
output [3:0] Y

);

//--------------------
// Addition
//--------------------

wire [3:0] ADD;
wire Cout;

ripple_carry_adder RCA(
.A(A),
.B(B),
.Cin(1'b0),
.Sum(ADD),
.Cout(Cout)
);

//--------------------
// AND
//--------------------

wire [3:0] AND_OUT;
and G1(AND_OUT[0],A[0],B[0]);
and G2(AND_OUT[1],A[1],B[1]);
and G3(AND_OUT[2],A[2],B[2]);
and G4(AND_OUT[3],A[3],B[3]);

//--------------------
// OR
//--------------------

wire [3:0] OR_OUT;
or G5(OR_OUT[0],A[0],B[0]);
or G6(OR_OUT[1],A[1],B[1]);
or G7(OR_OUT[2],A[2],B[2]);
or G8(OR_OUT[3],A[3],B[3]);

//--------------------
// XOR
//--------------------

wire [3:0] XOR_OUT;
xor G9(XOR_OUT[0],A[0],B[0]);
xor G10(XOR_OUT[1],A[1],B[1]);
xor G11(XOR_OUT[2],A[2],B[2]);
xor G12(XOR_OUT[3],A[3],B[3]);

//--------------------
// NOT
//--------------------

wire [3:0] NOT_OUT;
not G13(NOT_OUT[0],A[0]);
not G14(NOT_OUT[1],A[1]);
not G15(NOT_OUT[2],A[2]);
not G16(NOT_OUT[3],A[3]);

//--------------------
// Left Shift
//--------------------

wire [3:0] LSHIFT;
assign LSHIFT = {A[2:0],1'b0};

//--------------------
// Right Shift
//--------------------

wire [3:0] RSHIFT;
assign RSHIFT = {1'b0,A[3:1]};

//--------------------
// Output Selection
//--------------------

assign Y =
(S==3'b000)?ADD:
(S==3'b001)?AND_OUT:
(S==3'b010)?OR_OUT:
(S==3'b011)?XOR_OUT:
(S==3'b100)?NOT_OUT:
(S==3'b101)?LSHIFT:
(S==3'b110)?RSHIFT:
4'b0000;

endmodule
