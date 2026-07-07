`timescale 1ns/1ps

module tb;

reg [3:0] A;
reg [3:0] B;

wire Greater;
wire Equal;
wire Less;

comparator4bit uut(
    .A(A),
    .B(B),
    .Greater(Greater),
    .Equal(Equal),
    .Less(Less)
);

initial begin

    A=4'd5; B=4'd3; #10;
    A=4'd4; B=4'd4; #10;
    A=4'd2; B=4'd9; #10;
    A=4'd15; B=4'd1; #10;
    A=4'd0; B=4'd0; #10;

    $finish;

end

initial begin
    $monitor("A=%d B=%d Greater=%b Equal=%b Less=%b",
             A,B,Greater,Equal,Less);
end

endmodule
