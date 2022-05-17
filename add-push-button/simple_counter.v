module simple_counter(
	input [1:0] KEY,
	input [3:0] SW,
	output reg [3:0] counter_out);

	always @ (posedge KEY[0])
	begin
		counter_out <= #1 SW + counter_out;
	end
endmodule