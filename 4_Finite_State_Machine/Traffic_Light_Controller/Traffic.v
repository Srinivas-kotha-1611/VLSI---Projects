module Traffic_Light_Controller(
    input clk,
    input reset,

    output reg [2:0] roadA,
    output reg [2:0] roadB
);

// State Encoding
parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

reg [1:0] state, next_state;

//
// State Register
//
always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;
    else
        state <= next_state;
end

//
// Next State Logic
//
always @(*)
begin
    case(state)
        S0: next_state = S1;
        S1: next_state = S2;
        S2: next_state = S3;
        S3: next_state = S0;
        default: next_state = S0;
    endcase
end

//
// Output Logic
//
always @(*)
begin

    case(state)

        // Road A Green
        // Road B Red

        S0:
        begin
            roadA = 3'b001;
            roadB = 3'b100;
        end

        // Road A Yellow
        // Road B Red

        S1:
        begin
            roadA = 3'b010;
            roadB = 3'b100;
        end

        // Road A Red
        // Road B Green

        S2:
        begin
            roadA = 3'b100;
            roadB = 3'b001;
        end

        // Road A Red
        // Road B Yellow

        S3:
        begin
            roadA = 3'b100;
            roadB = 3'b010;
        end

        default:
        begin
            roadA = 3'b100;
            roadB = 3'b100;
        end
    endcase

end

endmodule
