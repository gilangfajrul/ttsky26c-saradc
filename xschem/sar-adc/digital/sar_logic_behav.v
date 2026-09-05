module sar_behavioral (
    input wire valid,       
    input wire comp_data_p,   
    input wire comp_data_n,   
    input wire clks,        
    output wire [7:0] sar_outp,
    output wire [7:0] sar_outn
);

    reg [7:0] shift_reg;
    reg [7:0] result_reg;

    assign sar_outp = result_reg;
    assign sar_outn = ~result_reg;

    integer i;

    always @(posedge valid or posedge clks) begin
        if (clks) begin
            shift_reg <= 8'b10000000; 
            result_reg <= 8'b11111111;
        end else begin
            shift_reg <= shift_reg >> 1;
            
            for (i = 0; i < 8; i = i + 1) begin
                if (shift_reg[i] == 1'b1) begin
                    result_reg[i] <= comp_data_p;
                end
            end
        end
    end

endmodule