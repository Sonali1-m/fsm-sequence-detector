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

