timeunit 1ns;
timeprecision 100ps;
module counter(
    input logic [4:0] data,
    output logic [4:0] count,
    input logic rst_,clk,load,enable
    );
    
always_ff @(posedge clk or negedge rst_)
begin
    if(!rst_)
        count <= 1'b0;
    else if(load)
        count <= data;
    else if(enable)
        count++;
end
    
endmodule
