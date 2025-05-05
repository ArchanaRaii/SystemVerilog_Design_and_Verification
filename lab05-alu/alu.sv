timeunit 1ns;
timeprecision 100ps;

import typedefs::*;

module alu(
    input   logic [7:0] accum, data,
    input   opcode_t    opcode,
    input   logic       clk,
    output  logic [7:0] out,
    output  logic       zero
    );
    
    always_comb
    begin
    if(accum)
     zero = 1'b0;
     else
     zero = 1'b1;
    end
    
    always_ff @(negedge clk)
    begin
    unique case(opcode)
        HLT: out = accum;
        SKZ: out = accum;
        ADD: out = data + accum;
        AND: out = data & accum;
        XOR: out = data ^ accum;
        LDA: out = data;
        STO: out = accum;
        JMP: out = accum; 
    endcase
    end
    
endmodule
