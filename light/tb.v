`timescale 1 ns/1 ps
module top();

reg clk;
reg rst;
reg bttn;
wire lght;

light l1(clk, rst, bttn, lght);

initial begin
	$dumpfile("v.vcd");
	$dumpvars();
end

initial begin 
	clk = 1'b0;
	rst = 1'b0;
	bttn = 1'b0;
end

always #1 clk = ~clk;

always @(*) begin
	#5;
	bttn = 1'b1;
	$display("%d %d %d %d", clk, rst, bttn, lght);
	#5;
	bttn = 1'b1;
	$display("%d %d %d %d", clk, rst, bttn, lght);
	#5;
	rst = 1'b1;
	$display("%d %d %d %d", clk, rst, bttn, lght);
	#5;
	bttn = 1'b1;
	$display("%d %d %d %d", clk, rst, bttn, lght);
	#5;
	$finish;
end

endmodule
