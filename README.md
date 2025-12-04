# Nand2Tetris: From First Principles

Personal repo for building a modern general-purpose computer system from scratch.

All code and notes here are based on the "Nand2Tetris" curriculum by Shimon Schocken & Noam Nisan.
[Project Specs](https://www.nand2tetris.org/projects) | [Video Lectures](https://www.youtube.com/watch?v=LqirVc5SlW0)

## 🧠 Focus Areas

- **Hardware Construction**: Logic gates, ALU, RAM, and CPU design (HDL)
- **Architecture**: The Von Neumann architecture & Fetch-Execute Cycle
- **Low-Level**: Assembly language & Machine code
- **System Software**: Assembler implementation (written in C)
- **Virtualization**: Stack-based Virtual Machine construction
- **Compilers**: Tokenizing, Parsing, and Code Generation (Jack -> VM)
- **OS**: Standard Library implementation (Math, String, Memory Allocators)

## 🛠️ Why this Repo Exists

This is the execution log for the `Building the Machine` phase of my engineering journey. Used for:

- Removing the "black box" magic from high-level programming
- Manual implementation of the entire stack (Hardware -> OS)
- Practice with C (custom Assembler implementation)
- Documentation of architectural decisions and trade-offs

## 📚 Resources (The Shadow Curriculum)

Since I am not enrolled the course from [Coursera](https://www.coursera.org/learn/build-a-computer), I follow this loop:

1. **Watch**: [YouTube Lectures](https://www.youtube.com/@MakkuZjAileron)
2. **Read**: [Project Specifications](https://www.nand2tetris.org/course)
3. **Build**: Implement locally in `projects/XX`
4. **Verify**: Run `HardwareSimulator.sh` against the provided `.tst` scripts.
