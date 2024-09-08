# General-Purpose Processor
This project was developed as part of the Digital Systems course (COE328) at Toronto Metropolitan University, aiming to apply combinational and sequential circuit knowledge. The GPP was designed to demonstrate basic processor operations including arithmetic calculations and state-based control.

# General-Purpose Processor (GPP) Design Project

## Introduction
This project was developed as part of the Digital Systems course (COE328) at Toronto Metropolitan University, aiming to apply combinational and sequential circuit knowledge. The GPP was designed to demonstrate basic processor operations including arithmetic calculations and state-based control.

## Components
- **Latches:** Store 8-bit inputs and forward data to the ALU.
- **Decoder (4 to 16):** Interprets FSM outputs to select microcode for ALU operations.
- **Finite State Machine (FSM):** Controls the sequence of operations and outputs a 4-bit state.
- **Arithmetic Logic Unit (ALU):** Executes arithmetic and logic operations based on inputs from latches and decoder.

## Functionality
- **Data Storage:** Two latches named A and B for holding 8-bit input data.
- **Operation Selection:** FSM output drives the 4 to 16 decoder, selecting the operation to be executed by the ALU.
- **Output Display:** Hexadecimal results and operation status displayed using seven-segment displays.

## Project Files
- `Latch.vhdl`: VHDL code for input latches.
- `Decoder.vhdl`: Implementation of the 4 to 16 decoder.
- `FSM.vhdl`: VHDL code for the Finite State Machine.
- `ALU.vhdl`: Code for Arithmetic Logic Unit operations.
- `Block Diagrams`: Visual representation of data flow and control across the GPP.

## Simulation Results
- **Waveforms:** Detailed waveform outputs showing the interaction between different components and the timing of operations.
- **Testing Scenarios:** Tests covering various ALU operations to ensure accurate execution.

## Conclusion
This lab project successfully demonstrated the synthesis of various digital design elements into a working General-Purpose Processor, offering insights into the practical aspects of digital system design and the operational synergy required between different digital components.

## How to Use
- Clone the repository.
- Load the VHDL files into an appropriate FPGA programming environment.
- Simulate the circuit to observe the operation.
- Hardware implementation can be performed by uploading the VHDL code onto an FPGA board and connecting the necessary peripherals.

## References
Detailed reference links and course materials available on the official course webpage."
