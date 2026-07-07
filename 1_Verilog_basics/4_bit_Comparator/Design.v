module comparator4bit(
    input [3:0] A,
    input [3:0] B,
    output Greater,
    output Equal,
    output Less
);

wire e0,e1,e2,e3;

assign e0 = ~(A[0]^B[0]);
assign e1 = ~(A[1]^B[1]);
assign e2 = ~(A[2]^B[2]);
assign e3 = ~(A[3]^B[3]);

assign Equal = e0 & e1 & e2 & e3;

assign Greater =
       (A[3] & ~B[3]) |
       (e3 & A[2] & ~B[2]) |
       (e3 & e2 & A[1] & ~B[1]) |
       (e3 & e2 & e1 & A[0] & ~B[0]);

assign Less =
       (~A[3] & B[3]) |
       (e3 & ~A[2] & B[2]) |
       (e3 & e2 & ~A[1] & B[1]) |
       (e3 & e2 & e1 & ~A[0] & B[0]);

endmodule
