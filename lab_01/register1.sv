timeunit 1ns; 
timeprecision 100ps;
module register1(
    output logic [7:0]   out  ,
    input logic [7:0]   data ,
    input logic         enable  ,
    input logic         rst_,
    input logic         clk 
    );

always_ff @(posedge clk or negedge rst_)
begin
    if(!rst_)
        out <= 1'b0;
    else if(enable)
        out <= data;  
end
endmodule
