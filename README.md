# 🧠 32-bit MIPS 5-Stage Pipelined Processor (Verilog)
A simple yet functional **32-bit MIPS CPU** designed using **Verilog RTL**, implementing a classic **5-stage pipelined architecture**:

**IF → ID → EX → MEM → WB**

The processor supports basic arithmetic, logical, load/store & branch instructions and is fully simulated using a testbench.
---

## 🔥 Features
- 5-stage pipelined CPU
- 32-bit architecture
- Separate pipeline registers (IF/ID, ID/EX, EX/MEM, MEM/WB)
- Supports ALU, Immediate, Load/Store & Branch instructions
- Testbench included for simulation validation
- Fully waveform verified

---
## 🧩 Supported Instructions

| Type | Instructions |
|---|---|
| **RR-Type** | ADD, SUB, AND, OR, SLT, MUL |
| **RM-Type** | ADDI, SUBI, SLTI |
| **LOAD/STORE** | LW, SW |
| **Branching** | BEQZ, BNEQZ |
| **Other** | HLT (Stop execution) |

---
## 📄 File Descriptions

### 🧩 Source Files 
| File | Description |
|---|---|
| `pipe_MIPS32.v` | Main Verilog RTL containing 5-stage MIPS CPU architecture. Handles IF, ID, EX, MEM, WB pipeline stages, ALU ops, branching, memory & register file access. |

### 🧪 Testbench 
| File | Description |
|---|---|
| `test.v` | Testbench for simulation & verification. Generates clock, loads instructions & dumps VCD waveform. |

### 📸 Waveforms
| File | Description |
|---|---|
| `mips32.vcd` | Simulation output waveform file (open using GTKWave). |
---
