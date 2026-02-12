`timescale 1ns/1ps  // Set the time unit to 1 nanosecond

module half_adder_tb;
    // 1. Create registers for inputs and wires for outputs
    reg  a, b;
    wire sum, carry;

    // 2. Instantiate the Half Adder (connect it to the testbench)
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // 3. The Test Procedure
    initial begin
        $monitor("At time %t: a=%b, b=%b | sum=%b, carry=%b", $time, a, b, sum, carry);
        
        // Test Case 1: 0 + 0
        a = 0; b = 0; #10;
        // Test Case 2: 0 + 1
        a = 0; b = 1; #10;
        // Test Case 3: 1 + 0
        a = 1; b = 0; #10;
        // Test Case 4: 1 + 1
        a = 1; b = 1; #10;

        $finish; // End the simulation
    end
endmodule