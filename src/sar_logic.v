module set_dff (
    input wire D,
    input wire clk,
    input wire set,
    output reg Q,
    output wire Qb
);

    assign Qb = ~Q;

    // Trigger on the rising edge of clk OR the rising edge of set
    always @(posedge clk or posedge set) begin
        if (set) begin
            // 1. What should Q become when 'set' is HIGH?
            Q <= 1'b1;
        end else begin
            // 2. What should Q become when the clock ticks (and set is LOW)?
            Q <= D;
        end
    end

endmodule

module reset_dff (
    input wire D,
    input wire clk,
    input wire reset,
    output reg Q
);

    // Trigger on the rising edge of clk OR the rising edge of reset
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
    end

endmodule

module sar_top (
    input wire valid,
    input wire comp_data,
    input wire clks,
    output wire [7:0] sar_outp,
    output wire [7:0] sar_outn
);

    wire [8:0] clkc;
    assign clkc[0] = 1'b1;

    genvar i;

    generate
        for (i = 0; i < 8; i = i + 1) begin : sar_stages
            reset_dff seq(
                .D(clkc[i]),
                .clk(valid),
                .reset(clks),
                .Q(clkc[i+1])
            );

            set_dff bit(
                .D(comp_data),
                .clk(clkc[i+1]),
                .set(clks),
                .Q(sar_outp[7-i]),
                .Qb(sar_outn[7-i])
            );
        end
    endgenerate
    
endmodule