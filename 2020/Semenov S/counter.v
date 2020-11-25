`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:48 03/23/2020 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input CLOCK,
    input DIRECTION,
    output [3:0] COUNT_OUT
    );

reg [23:0]CLK_1Hz = 0;
reg [3:0]LED_status;

always @(posedge CLOCK) begin
    if (CLK_1Hz < 13500000)
        CLK_1Hz <= CLK_1Hz + 1;
    else begin
        CLK_1Hz <= 0;
		  LED_status <= LED_status + 2*DIRECTION - 1;
		  end
end

assign COUNT_OUT = LED_status;

endmodule
