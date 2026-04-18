<h1 align="center"> SPI Protocol (Verilog RTL Design)</h1>


<p align="center">
<img src="https://img.shields.io/badge/Protocol-SPI-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Design-RTL-orange?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Language-Verilog-green?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Flow-OpenROAD-purple?style=for-the-badge"/>
</p>

<p align="center">
<img src="https://img.shields.io/badge/Status-Complete-success?style=flat-square"/>
<img src="https://img.shields.io/badge/Stage-RTL→GDS-blue?style=flat-square"/>
<img src="https://img.shields.io/badge/Tech-Sky130HD-informational?style=flat-square"/>
</p>

---

## Description

This project presents a **Verilog RTL implementation of the SPI (Serial Peripheral Interface)** protocol with emphasis on:

- Deterministic FSM-based control  
- True full-duplex data exchange  
- Clean master–slave synchronization  
- ASIC flow validation using OpenROAD  

---

##  Interface Signals

| Signal | Direction | Description |
|--------|----------|-------------|
| SCLK   | Master → Slave | Serial clock |
| MOSI   | Master → Slave | Data from master |
| MISO   | Slave → Master | Data from slave |
| SS     | Master → Slave | Slave select (Active LOW) |

---

##  Working Principle

<img src="https://res.cloudinary.com/blues-wireless/image/fetch/f_auto,c_limit,w_3840,q_auto/https://dev.blues.io/_next/static/media/3-2.dbb45825.png"/>

- Communication starts when **SS goes LOW**
- Master generates clock (**SCLK**)
- Data is transferred simultaneously on **MOSI and MISO**
- Communication ends when **SS goes HIGH**

---

## Data Transfer Mechanism

- Uses **shift registers** on both master and slave  
- One bit transferred per clock cycle  
- Parallel ↔ Serial conversion  

```verilog
always @(posedge sclk) begin
    tx_reg <= {tx_reg[6:0], 1'b0};
    rx_reg <= {rx_reg[6:0], miso};
end
```

---

## SPI Modes

| Mode | CPOL | CPHA | Behavior |
|------|------|------|----------|
| 0    | 0    | 0    | Sample on rising edge |
| 1    | 0    | 1    | Sample on falling edge |
| 2    | 1    | 0    | Sample on falling edge |
| 3    | 1    | 1    | Sample on rising edge |

---

##  Architecture

### Master
- Generates SCLK  
- Controls SS  
- Initiates transfer  

### Slave
- Responds to SS  
- Synchronizes with SCLK  
- Exchanges data  

---

##  Module Breakdown

### `spi_top.v`
- Top-level integration  
- Connects master and slave  
- Routes SPI signals  


### `spi_master.v`
- Clock generation  
- Control FSM  
- Data transmission  

**FSM:**

IDLE → LOAD → SHIFT → COMPLETE


### `spi_slave.v`
- Detects SS activation  
- Receives and transmits data  
- Synchronizes with clock  

**FSM:**

IDLE → RECEIVE → TRANSMIT → DONE


---

## Operation Flow

### Write Cycle

`SS ↓ → SHIFT DATA → SS ↑`


### Read Cycle

`SS ↓ → RECEIVE DATA → SS ↑`


---

##  Key Characteristics

- Full-duplex communication  
- No arbitration (single master system)  
- Higher speed than I2C  
- Simple hardware implementation  
- Deterministic timing  

---

##  OpenROAD Results

### 🔹 Timing

        Setup Slack : "finish__timing__setup__ws": 6.23598 (MET)
        Hold Slack  : "finish__timing__hold__ws" : 0.501082 (MET)


### 🔹 Area

        Standard Cells : "design__instance__count__stdcell": 522"
        Cell Area      : 5006 um^2
        Utilization    : "design__instance__utilization": 0.467221" (46%)

### 🔹 Physical Verification

        "finish__timing__drv__setup_violation_count": 0
        "finish__timing__drv__hold_violation_count" : 0


---

##  Final Output

- `6_final.odb`  
  → Post-layout optimized database
  <img width="1919" height="1016" alt="image" src="https://github.com/user-attachments/assets/10d3563d-03ed-48cb-b604-308c068e230b" />


- `6_final.gds`  
  → Tape-out ready layout
  <img width="1919" height="1014" alt="image" src="https://github.com/user-attachments/assets/ecd26253-a347-4271-a559-c461ee24c6ef" />


---
<h4 align="center">This project demonstrates a robust and scalable SPI design suitable for integration in digital and ASIC-based systems.</h4>


---
