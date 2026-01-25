module ALU32 (
    input  wire        CLK,
    input  wire        RST,      // ????
    input  wire        EN,       // ??

    input  wire [1:0]  OPcode_in,
    input  wire        ADD_SUB_in,
    input  wire        LRshift_in,

    input  wire [31:0] A,
    input  wire [31:0] B,

    output reg  [31:0] Result
);

    /* =========================
       1. ???? D ???
       ========================= */
    reg [1:0] OPcode;
    reg       ADD_SUB;
    reg       LRshift;

    always @(posedge CLK) begin
        if (RST) begin
            OPcode  <= 2'b00;
            ADD_SUB <= 1'b0;
            LRshift <= 1'b0;
        end
        else if (EN) begin
            OPcode  <= OPcode_in;
            ADD_SUB <= ADD_SUB_in;
            LRshift <= LRshift_in;
        end
    end

    /* =========================
       2. ALU ????
       ========================= */
    always @(*) begin
        case (OPcode)

            // 00 : ? / ?
            2'b00: begin
                if (ADD_SUB == 1'b0)
                    Result = A + B;
                else
                    Result = A - B;
            end

            // 01 : ??????
            2'b01: begin
                if (LRshift == 1'b0)
                    Result = A << 1;   // ?? 1 
                else
                    Result = A >> 1;   // ?? 1 
            end

            // 10 : ???
            2'b10: begin
                Result = A & B;
            end

            // 11 : ???
            2'b11: begin
                Result = A | B;
            end

            default: begin
                Result = 32'b0;
            end
        endcase
    end

endmodule
