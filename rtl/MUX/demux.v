// 1 X 4 DeMUX
module demux(select, enable, out);

input [1:0] select;
input enable;

output reg [3:0] out;

always @(*) begin
    if(enable) begin
        case(select)
            2'b00: out = 4'b0001;
            2'b01: out = 4'b0010;
            2'b10: out = 4'b0100;
            2'b11: out = 4'b1000;
            default: out = 4'b0000; 
        endcase
    end

    else begin
        out = 4'b0000;
    end
end

endmodule