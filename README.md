# I2C-Protocol
This project implements a synthesizable I2C Master Controller in Verilog to interface with EEPROM devices over the I2C protocol. Designed with clean FSM-based logic, the controller supports both read and write operations, compliant with I2C standard timing and signaling.

---

## 🔧 Features

- ✅ Fully synthesizable Verilog RTL design
- 🔁 Supports I2C write and read transactions
- 📦 Start/Stop condition generation
- ✔️ Internal ACK/NACK detection
- ↔️ Tristate `SDA` line control (open-drain behavior)
- ⏱ Parameterized clock divider for standard I2C frequencies
- 🧠 Finite State Machine (FSM) manages protocol stages
- 🧪 Simulated and waveform-verified in Vivado

---

## 📁 Files

| File | Description |
|------|-------------|
| `i2c_eeprom_controller.v` | Main I2C controller module |
| `top.v` | Top-level wrapper to connect buttons/switches/LEDs |
| `arty_s7.xdc` | Vivado constraints for Arty S7 board (optional) |

> Note: This project is **simulated only**, not yet tested on physical hardware.

---

## 🛠 Parameters

- `CLK_FREQ` — Input clock frequency (default: 100 MHz)
- `I2C_FREQ` — Target I2C bus frequency (default: 100 kHz)

These can be adjusted when instantiating the module to match different hardware requirements.

---

## 🧪 Simulation

You can write a simple testbench to trigger I2C write/read transactions and observe:

- Start/Stop signals
- Correct data shifting
- ACK detection
- Timing of `SCL` and `SDA`

Use GTKWave or Vivado’s built-in waveform viewer to inspect results.
