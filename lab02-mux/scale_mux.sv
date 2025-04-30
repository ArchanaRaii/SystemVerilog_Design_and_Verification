timeunit        1ns ;
timeprecision 100ps ;
module scale_mux #(parameter WIDTH  =  1)(
      
      output logic [WIDTH-1:0] out,     
      input logic [WIDTH-1:0] in_a,
      input logic [WIDTH-1:0] in_b,    
      input logic sel_a

    );
    
always_comb
begin
    unique case(sel_a)
        1'b1: out = in_a;
        1'b0: out = in_b;
        default: out = 1'bX;
    endcase
end    

endmodule
