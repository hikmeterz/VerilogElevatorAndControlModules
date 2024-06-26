﻿# VerilogElevatorAndControlModules
## Project Description
This repository contains a collection of Verilog modules designed to simulate various control operations, including an elevator system, binary operations, and level control. Each module is well-documented and demonstrates a specific functionality or algorithm.

## Files
- `asansor.v`: Verilog module for simulating an elevator control system.
- `binary.v`: Verilog module for performing binary operations.
- `devre.v`: Verilog module for simulating a circuit.
- `seviye.v`: Verilog module for level control.

## Module Descriptions

### Module Usage
```verilog
// asansor.v
module asansor(input clk, input reset, input [3:0] floor_request, output [3:0] current_floor);
// Module implementation
endmodule

// binary.v
module binary(input [7:0] a, input [7:0] b, output [7:0] result);
// Module implementation
endmodule

// devre.v
module devre(input clk, input reset, input [7:0] in, output [7:0] out);
// Module implementation
endmodule

// seviye.v
module seviye(input clk, input reset, input [3:0] level, output alarm);
// Module implementation
endmodule
