module main_module(
    output Y,
    input clk
);
reg [4:0] count=5'b0000;
assign Y=count[4];
always @(posedge clk)
if (count==5'b11111) count<=5'b00000;
else count<=count+5'b00001;
endmodule
