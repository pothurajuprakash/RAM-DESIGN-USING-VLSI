module sync_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
)(
    input clk,
    input we,                     // Write Enable
    input [ADDR_WIDTH-1:0] addr, // Address
    input [DATA_WIDTH-1:0] din,  // Data Input
    output reg [DATA_WIDTH-1:0] dout // Data Output
);

    // Memory declaration
    reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;     // Write operation
        dout <= mem[addr];        // Read operation
    end

endmodule