`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:28 01/24/2026 
// Design Name: 
// Module Name:    ALU 
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
module Alu32(
    input     CLK,
    input     RST,      // ????
    input     EN,       // ??

    input  [1:0]  OPcode_in,
    input          ADD_SUB_in,
    input          LRshift_in,

    input   [31:0] A,
    input   [31:0] B,

    output reg  [31:0] Result
    );
	 always @(*) begin
	      case (OPcode_in)
			    2'b00: Result = ADD_SUB_in ? A - B : A + B;
                2'b01: Result = LRshift_in ? A >> 1 : A << 1;
                2'b10: Result = A & B;
                2'b11: Result = A | B;
                default: Result = 32'd0;
			endcase
	end
endmodule