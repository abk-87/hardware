`timescale 1 ns/1 ps
module top();

reg [31:0] in1;
reg [31:0] in2;
wire [32:0] out;

full_adder adder_test(.in1(in1), .in2(in2), .out(out));

initial begin
	$dumpfile("v.vcd");
	$dumpvars();
end

initial begin
    in1 = 455; 
    in2 = 12356; 
    #1;
    $display("%d+%d=%d", in1, in2, out);
    in1 = 999999; 
    in2 = 1; 
    #1;
    $display("%d+%d=%d", in1, in2, out);
    in1 = 8624; 
    in2 = 1397; 
    #1;
    $display("%d+%d=%d", in1, in2, out);
    in1 = 4294967295; 
    in2 = 2161866544; 
    #1;
    $display("%d+%d=%d", in1, in2, out);
end

endmodule
