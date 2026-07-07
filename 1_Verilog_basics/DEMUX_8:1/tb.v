`timescale 1ns/1ps

module tb;

reg D;
reg [2:0] S;
wire [7:0] Y;

integer i;

demux1to8 uut(
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    D=1;

    for(i=0;i<8;i=i+1)
    begin
        S=i;
        #10;
        $display("S=%d Y=%b",S,Y);
    end

    $finish;

end

endmodule
