# FSM Sequence Detector – 1011 Pattern

This project implements **Finite State Machines (FSMs)** in Verilog to detect the binary sequence `1011` from a serial input stream.

It includes:
- ✅ A **Mealy Machine** version
- ✅ A **Moore Machine** version
- ✅ GTKWave support for visualizing output waveforms

---

## 📁 File Structure

| File Name                   | Description                                    |
|----------------------------|------------------------------------------------|
| `seq_detector_1011.v`      | ⭐ Mealy FSM design                             |
| `testbench.v`              | Testbench for Mealy FSM                        |
| `seq_detector_1011_moore.v`| ⭐ Moore FSM design                             |
| `testbench_moore.v`        | Testbench for Moore FSM                        |
| `waveform.vcd`             | Waveform output file for GTKWave               |
| `.gitignore`               | Ignores `waveform.vcd`                         |
| `README.md`                | You’re reading it now!                         |

---

🧠 Concepts Covered
Finite State Machine (FSM) Design

- Mealy and Moore Sequence Detectors
- Pattern Detection (1011)
- Hardware Modeling in Verilog
- Simulation using Icarus Verilog (iverilog, vvp)
- GTKWave for waveform visualization

📌 Notes
- This is a serial sequence detector: one input bit per clock.
- The FSM resets on active-low reset signal.
- The clk signal is generated in the testbench.
- The pattern can overlap; for example, in 1011011, the second 1011 is still detected.
- Output is 1 only for one cycle when sequence is matched.



## 🧪 How to Simulate (One Command Set for All)

```bash
# Compile & Run Mealy FSM
iverilog -o fsm_test testbench.v seq_detector_1011.v
vvp fsm_test

# Compile & Run Moore FSM
iverilog -o fsm_test_moore testbench_moore.v seq_detector_1011_moore.v
vvp fsm_test_moore

# Open waveform output in GTKWave
gtkwave waveform.vcd


