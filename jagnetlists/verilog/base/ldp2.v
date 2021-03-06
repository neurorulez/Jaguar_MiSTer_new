`include "defs.v"

module ldp2
(
	output	q,
	output	qn,
	input		d,
	input		g,
	input		cd,
	input		sys_clk
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

// always @(d or g or cd)
always @(posedge sys_clk)
begin
	if (~cd) begin
		data <= 1'b0;
	end else if (g) begin
		data <= d;
	end
end

endmodule
