module light (clk, rst, bttn, lght);

input clk;
input rst;
input bttn;
output reg lght;

reg flag = 0;

always@ (posedge clk)
begin
	if (rst) begin
		lght <= 1'b0;
		rst <= 1'b0;
	end
	else if (bttn && (flag == 0)) begin
		lght <= 1'b1;
		flag <= 1;
		bttn <= 1'b0;
	end
	else if (bttn && (flag == 1)) begin
		lght <= 1'b0;
		flag <= 0;
		bttn <= 1'b0;
	end
end

endmodule
