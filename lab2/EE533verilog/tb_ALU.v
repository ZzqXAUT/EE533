`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:23:35 01/24/2026
// Design Name:   Alu32
// Module Name:   C:/Documents and Settings/student/EE533-lab2/EE533verilog/tb_ALU.v
// Project Name:  EE533verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Alu32;

    // DUT ??
    reg         CLK;
    reg         RST;
    reg         EN;
    reg  [1:0]  OPcode_in;
    reg         ADD_SUB_in;
    reg         LRshift_in;
    reg  [31:0] A;
    reg  [31:0] B;

    // DUT ??
    wire [31:0] Result;

    // ???
    reg  [31:0] exp;

    // ??? DUT
    Alu32 dut (
        .CLK(CLK),
        .RST(RST),
        .EN(EN),
        .OPcode_in(OPcode_in),
        .ADD_SUB_in(ADD_SUB_in),
        .LRshift_in(LRshift_in),
        .A(A),
        .B(B),
        .Result(Result)
    );

    // ===============================
    // ???????
    // ===============================
    function [31:0] calc_exp;
        input [1:0]  op;
        input        add_sub;
        input        lrshift;
        input [31:0] a;
        input [31:0] b;
        begin
            case (op)
                2'b00: calc_exp = add_sub ? (a - b) : (a + b);
                2'b01: calc_exp = lrshift ? (a >> 1) : (a << 1);
                2'b10: calc_exp = a & b;
                2'b11: calc_exp = a | b;
                default: calc_exp = 32'd0;
            endcase
        end
    endfunction

    // ===============================
    // ?? task
    // ===============================
    task check;
        begin
            exp = calc_exp(OPcode_in, ADD_SUB_in, LRshift_in, A, B);
            #1; // ???????

            if (Result !== exp) begin
                $display("? FAIL | OP=%b A=%h B=%h | Result=%h Exp=%h",
                         OPcode_in, A, B, Result, exp);
            end else begin
                $display("? PASS | OP=%b A=%h B=%h | Result=%h",
                         OPcode_in, A, B, Result);
            end
        end
    endtask

    // ===============================
    // ??
    // ===============================
    initial begin
        // ????? X
        CLK = 0;
        RST = 0;
        EN  = 1;
        OPcode_in = 0;
        ADD_SUB_in = 0;
        LRshift_in = 0;
        A = 0;
        B = 0;

        #5;

        // ---------- ADD ----------
        OPcode_in = 2'b00; ADD_SUB_in = 0;
        A = 32'd10; B = 32'd3;
        check();

        A = 32'hFFFF_FFF0; B = 32'd1;
        check();

        // ---------- SUB ----------
        OPcode_in = 2'b00; ADD_SUB_in = 1;
        A = 32'd10; B = 32'd3;
        check();

        A = 32'd0; B = 32'd1;
        check();

        // ---------- SHIFT LEFT ----------
        OPcode_in = 2'b01; LRshift_in = 0;
        A = 32'h0000_0001;
        check();

        A = 32'h4000_0000;
        check();

        // ---------- SHIFT RIGHT ----------
        OPcode_in = 2'b01; LRshift_in = 1;
        A = 32'h8000_0000;
        check();

        A = 32'h0000_0002;
        check();

        // ---------- AND ----------
        OPcode_in = 2'b10;
        A = 32'hFF00_FF00; B = 32'h0F0F_0F0F;
        check();

        A = 32'hAAAA_AAAA; B = 32'h5555_5555;
        check();

        // ---------- OR ----------
        OPcode_in = 2'b11;
        A = 32'hFF00_0000; B = 32'h00FF_0000;
        check();

        A = 32'h0000_0000; B = 32'hFFFF_FFFF;
        check();

        $display("?? All tests finished.");
        $finish;
    end

endmodule
