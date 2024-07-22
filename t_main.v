`timescale 100ns/100ns
`include "main.v"
module t_main;
wire Y;
reg clk;

main_module M1(Y,clk);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,t_main);
    clk=1'b0;
    #1000 $finish;
end
always #5 clk=(!clk);
endmodule