module adder(in1, in2, c_in, out, c_out);

input in1, in2, c_in;
output out, c_out;

assign out = (in1 ^ in2) ^ c_in;
assign c_out = (in1 & in2) | ((in1 ^ in2) & c_in);

endmodule


module full_adder(in1, in2, out);

input [31:0] in1, in2;
output [32:0] out;

parameter N = 32;
wire [0:32] w;
assign w[0] = 0;

generate
	genvar i;
	for (i = 0; i < N; i = i + 1)
	begin
		adder add_0(in1[i], in2[i], w[i], out[i], w[i+1]);
	end
endgenerate

assign out[32] = w[32];

endmodule
