module sample_fpga01(
	input [1:0] KEY,
	input [3:0] SW,
	output [3:0] LED);
	wire [3:0] counter_out;

	simple_counter counter(KEY[0], SW[3:0], counter_out);
	assign LED = counter_out[3:0];
endmodule