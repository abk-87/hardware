module adder(in1, in2, c_in, out, c_out);

input in1, in2, c_in;
output out, c_out;

assign out = (in1 ^ in2) ^ c_in;
assign c_out = (in1 & in2) | ((in1 ^ in2) & c_in);

endmodule


module full_adder(in1, in2, out);

input [31:0] in1, in2;
output [31:0] out;

wire wire_0, wire_1, wire_2, wire_3, wire_4, wire_5, wire_6, wire_7, wire_8, wire_9, wire_10, wire_11, wire_12, wire_13, wire_14, wire_15, wire_16, wire_17, wire_18, wire_19, wire_20, wire_21, wire_22, wire_23, wire_24, wire_25, wire_26, wire_27, wire_28, wire_29, wire_30, wire_31;

adder add_0(.in1(in1[0]), .in2(in2[0]), .c_in(1'b0), .out(out[0]), .c_out(wire_0));
adder add_1(.in1(in1[1]), .in2(in2[1]), .c_in(wire_0), .out(out[1]), .c_out(wire_1));
adder add_2(.in1(in1[2]), .in2(in2[2]), .c_in(wire_1), .out(out[2]), .c_out(wire_2));
adder add_3(.in1(in1[3]), .in2(in2[3]), .c_in(wire_2), .out(out[3]), .c_out(wire_3));
adder add_4(.in1(in1[4]), .in2(in2[4]), .c_in(wire_3), .out(out[4]), .c_out(wire_4));
adder add_5(.in1(in1[5]), .in2(in2[5]), .c_in(wire_4), .out(out[5]), .c_out(wire_5));
adder add_6(.in1(in1[6]), .in2(in2[6]), .c_in(wire_5), .out(out[6]), .c_out(wire_6));
adder add_7(.in1(in1[7]), .in2(in2[7]), .c_in(wire_6), .out(out[7]), .c_out(wire_7));
adder add_8(.in1(in1[8]), .in2(in2[8]), .c_in(wire_7), .out(out[8]), .c_out(wire_8));
adder add_9(.in1(in1[9]), .in2(in2[9]), .c_in(wire_8), .out(out[9]), .c_out(wire_9));
adder add_10(.in1(in1[10]), .in2(in2[10]), .c_in(wire_9), .out(out[10]), .c_out(wire_10));
adder add_11(.in1(in1[11]), .in2(in2[11]), .c_in(wire_10), .out(out[11]), .c_out(wire_11));
adder add_12(.in1(in1[12]), .in2(in2[12]), .c_in(wire_11), .out(out[12]), .c_out(wire_12));
adder add_13(.in1(in1[13]), .in2(in2[13]), .c_in(wire_12), .out(out[13]), .c_out(wire_13));
adder add_14(.in1(in1[14]), .in2(in2[14]), .c_in(wire_13), .out(out[14]), .c_out(wire_14));
adder add_15(.in1(in1[15]), .in2(in2[15]), .c_in(wire_14), .out(out[15]), .c_out(wire_15));
adder add_16(.in1(in1[16]), .in2(in2[16]), .c_in(wire_15), .out(out[16]), .c_out(wire_16));
adder add_17(.in1(in1[17]), .in2(in2[17]), .c_in(wire_16), .out(out[17]), .c_out(wire_17));
adder add_18(.in1(in1[18]), .in2(in2[18]), .c_in(wire_17), .out(out[18]), .c_out(wire_18));
adder add_19(.in1(in1[19]), .in2(in2[19]), .c_in(wire_18), .out(out[19]), .c_out(wire_19));
adder add_20(.in1(in1[20]), .in2(in2[20]), .c_in(wire_19), .out(out[20]), .c_out(wire_20));
adder add_21(.in1(in1[21]), .in2(in2[21]), .c_in(wire_20), .out(out[21]), .c_out(wire_21));
adder add_22(.in1(in1[22]), .in2(in2[22]), .c_in(wire_21), .out(out[22]), .c_out(wire_22));
adder add_23(.in1(in1[23]), .in2(in2[23]), .c_in(wire_22), .out(out[23]), .c_out(wire_23));
adder add_24(.in1(in1[24]), .in2(in2[24]), .c_in(wire_23), .out(out[24]), .c_out(wire_24));
adder add_25(.in1(in1[25]), .in2(in2[25]), .c_in(wire_24), .out(out[25]), .c_out(wire_25));
adder add_26(.in1(in1[26]), .in2(in2[26]), .c_in(wire_25), .out(out[26]), .c_out(wire_26));
adder add_27(.in1(in1[27]), .in2(in2[27]), .c_in(wire_26), .out(out[27]), .c_out(wire_27));
adder add_28(.in1(in1[28]), .in2(in2[28]), .c_in(wire_27), .out(out[28]), .c_out(wire_28));
adder add_29(.in1(in1[29]), .in2(in2[29]), .c_in(wire_28), .out(out[29]), .c_out(wire_29));
adder add_30(.in1(in1[30]), .in2(in2[30]), .c_in(wire_29), .out(out[30]), .c_out(wire_30));
adder add_31(.in1(in1[31]), .in2(in2[31]), .c_in(wire_30), .out(out[31]));

endmodule
