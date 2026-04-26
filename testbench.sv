`timescale 1ns/1ps

module tb_sync_ram;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate RAM
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write data
        #10 we = 1; addr = 4'd0; din = 8'hA1;
        #10 addr = 4'd1; din = 8'hB2;
        #10 addr = 4'd2; din = 8'hC3;

        // Stop writing
        #10 we = 0;

        // Read data
        #10 addr = 4'd0;
        #10 addr = 4'd1;
        #10 addr = 4'd2;

        #20 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | WE=%b | Addr=%d | Din=%h | Dout=%h",
                  $time, we, addr, din, dout);
    end

endmodule