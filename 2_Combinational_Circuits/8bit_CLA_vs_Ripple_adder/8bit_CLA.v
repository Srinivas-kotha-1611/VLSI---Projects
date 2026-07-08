module carry_lookahead_adder_8bit(

input [7:0] A,
input [7:0] B,
input Cin,

output [7:0] Sum,
output Cout

);

wire [7:0] P;
wire [7:0] G;

wire C1, C2, C3, C4, C5, C6, C7;

// Generate and Propagate
assign P = A ^ B;
assign G = A & B;

// Carry Logic
assign C1 = G[0] | (P[0] & Cin);

assign C2 = G[1] |
            (P[1] & G[0]) |
            (P[1] & P[0] & Cin);

assign C3 = G[2] |
            (P[2] & G[1]) |
            (P[2] & P[1] & G[0]) |
            (P[2] & P[1] & P[0] & Cin);

assign C4 = G[3] |
            (P[3] & G[2]) |
            (P[3] & P[2] & G[1]) |
            (P[3] & P[2] & P[1] & G[0]) |
            (P[3] & P[2] & P[1] & P[0] & Cin);

assign C5 = G[4] |
            (P[4] & G[3]) |
            (P[4] & P[3] & G[2]) |
            (P[4] & P[3] & P[2] & G[1]) |
            (P[4] & P[3] & P[2] & P[1] & G[0]) |
            (P[4] & P[3] & P[2] & P[1] & P[0] & Cin);

assign C6 = G[5] |
            (P[5] & G[4]) |
            (P[5] & P[4] & G[3]) |
            (P[5] & P[4] & P[3] & G[2]) |
            (P[5] & P[4] & P[3] & P[2] & G[1]) |
            (P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) |
            (P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin);

assign C7 = G[6] |
            (P[6] & G[5]) |
            (P[6] & P[5] & G[4]) |
            (P[6] & P[5] & P[4] & G[3]) |
            (P[6] & P[5] & P[4] & P[3] & G[2]) |
            (P[6] & P[5] & P[4] & P[3] & P[2] & G[1]) |
            (P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) |
            (P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin);

assign Cout = G[7] |
              (P[7] & G[6]) |
              (P[7] & P[6] & G[5]) |
              (P[7] & P[6] & P[5] & G[4]) |
              (P[7] & P[6] & P[5] & P[4] & G[3]) |
              (P[7] & P[6] & P[5] & P[4] & P[3] & G[2]) |
              (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1]) |
              (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0]) |
              (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin);

// Sum Logic
assign Sum[0] = P[0] ^ Cin;
assign Sum[1] = P[1] ^ C1;
assign Sum[2] = P[2] ^ C2;
assign Sum[3] = P[3] ^ C3;
assign Sum[4] = P[4] ^ C4;
assign Sum[5] = P[5] ^ C5;
assign Sum[6] = P[6] ^ C6;
assign Sum[7] = P[7] ^ C7;

endmodule
