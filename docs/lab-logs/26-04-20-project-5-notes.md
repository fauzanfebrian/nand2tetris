# Project 5: Computer Architecture

Today, 20 Apr 2026, marks the integration phase where all the individual chips we've built—the ALU, Registers, RAM, and Program Counter—finally come together to form a complete, functional computer system.

## Harvard vs. Von Neumann Architecture

In this project, we explored the two primary ways to organize a computer's memory and processing:

- **Harvard Architecture (The Hack way):** Uses separate memory units for instructions (ROM) and data (RAM). This allows the CPU to fetch an instruction and read/write data simultaneously in a single clock cycle, keeping things simple and fast for our implementation.
- **Von Neumann Architecture:** A more classic approach where a single memory space holds both data and instructions. While more flexible for general-purpose computing, it requires multiple cycles (fetch then execute) because it can't access the same memory for two different purposes at once.

## Modeling Behavior: Finite State Machines (FSM)

To handle complex operations that take place over multiple cycles (especially in Von Neumann systems), we use **Finite State Machines**.
- Each "state" represents what the machine is doing at a specific moment.
- We use a **State Register** to track our current position.
- Logic gates determine the "next state" based on the current state and hardware signals.

## I/O and Peripheral Integration

We also touched on how the computer talks to the outside world beyond just the screen and keyboard:
- **Memory-Mapped I/O:** Allocating specific memory addresses to represent hardware devices (like a disk or microphone).
- **Device Controllers:** As a system grows, the CPU can't do everything. We offload work to dedicated hardware (like a Graphics Card/Accelerator) so the CPU can just say "draw a line" instead of calculating every pixel itself.

## The Journey: Bottom-Up Synthesis

Project 5 is the culmination of everything we've built so far. We are taking the "fruits of our hard work" and synthesizing them:
- **Project 1:** Elementary logic gates.
- **Project 2:** Adders and the ALU.
- **Project 3:** Registers and RAM units.
- **Project 5:** Integrating these into a CPU, Memory, and a complete Computer.

## Goals

- [x] **Complete `Memory.hdl`**
  Implement the logic to route the 15-bit address across three segments:
  - **RAM16K:** Address `0` to `16383` (`0x0000` to `0x3FFF`).
  - **Screen:** Address `16384` to `24575` (`0x4000` to `0x5FFF`).
  - **Keyboard:** Address `24576` (`0x6000`).
  *Task:* Use `DMux` to route the `load` bit and `Mux` to select the `out` based on the highest bits of the address.

- [ ] **Complete `CPU.hdl`**
  Synthesize the D-register, A-register, ALU, and PC into a functional unit.
  - **Instruction Decoding:** Unpack the 16-bit instruction. Distinguish between A-instructions (MSB=0) and C-instructions (MSB=1).
  - **Control Logic:** Route C-control bits to destination registers (A, D, M) and ALU inputs.
  - **Jump Logic:** Write HDL to combine ALU status bits (`zr`, `ng`) with instruction jump bits to drive the PC `load` signal.
  - **Memory Interface:** Correct wiring for `outM`, `writeM`, `addressM`, and instruction fetch (`pc`).

- [ ] **Complete `Computer.hdl`**
  Connect the high-level components according to the top-level architecture:
  - Connect **ROM32K** (Instruction Memory) address input to the CPU's `pc` output.
  - Connect the **CPU**'s memory interface (`outM`, `writeM`, `addressM`) to the **Memory** chip.
  - Wire the global `reset` signal to both the CPU and the Computer's operational flow.

## Notes

It's incredible to see how a single **NAND** gate has evolved into a machine capable of executing complex programs. The Hack computer is a "simplest-case" Harvard architecture, which makes it perfect for understanding the core mechanics of computing without getting lost in the "complications" of modern general-purpose optimization.
