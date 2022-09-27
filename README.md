# Microphase Z7-Lite (Zynq 7010 Board)

![image](Board%20Files/z7-lite/z7-lite_board.png)

## Specifications
- FPGA: Xilinx XCZ7010 CLG400ABX1833
- Spec: Dual-Core ARM Cortex-A9 MPCore Up to 866MHz
- Series PL Equivalent: Artix-7
- Logic Cells: 28K
- LUTs: 17,600
- Flip-Flops: 35200
- Total Block RAM (# 36Kb Blocks): 2.1Mb (60)
- DSP Slices: 80


## PS sub-system
- Crystal: 33.3333MHz
- Reset: Low Active

### DDR Interface
- Memory: MT41K256M16 
- Data bus: 16bit
- Row Address: 32K (A[14..0]) 
- Bank Address: 8 (BA[2..0]) BA0:L5, BA1: R4, BA2: J5


### SPI Flash
- Flash: WinBond W25Q128JVSIQ 128M-bit  QUAD SP
- Maximum Freq: 133MHz

- QSPI_CS pin: A7 (MIO1)  CS
- QSPI_DQ0 pin: B8 (MIO2) DI(IO0)
- QSPI_DQ1 pin: D6 (MIO3) DO(IO1)
- QSPI_DQ2 pin: B7 (MIO4) /WP (IO2)
- QSPI_DQ3 pin: A6 (MIO5) /HOLD (IO3)
- QSPI_CLK pin: A5 (MIO6) CLK


### Micro-SD Interface:

No Card Detect, No Write Protect

- SD_CLK pin: D14 (MIO40)
- SD_CMD pin: C17 (MIO41)
- SD_DATA0 pin: E12 (MIO42)
- SD_DATA1 pin: A9 (MIO43)
- SD_DATA2 pin: F13 (MIO44)
- SD_DATA3 pin: B15 (MIO45)

 
### UART
- UART_RX pin: C5 (MIO14) - USB2UART CH340E
- UART_TX pin: C8 (MIO15) - USB2UART CH340E

 

### I/O
- PS_KEY1 pin: B5 (MIO8) 
- PS_LED1 pin: E6 (MIO0)



### Extra peripheral:
- USB OTG (USB3320C)


## PL sub-system:

### Clock
- Crystal pin (50MHz): N18 

### I/O
- PL_KEY1 pin: P16 (L24N)
- PL_KEY2 pin: T12 (L2P)
- PL_LED1 pin: P15 (L24P)
- PL_LED2 pin: U12 (L2N)


## Extra peripheral:
HDMI, ETH


## Notes
Place ./Board Files/z7-lite folder into: $HOME/.Xilinx/Vivado/2020.2/xhub/board_store/xilinx_board_store

Constraints file in [./Start/Z7-LITE.xdc](https://raw.githubusercontent.com/hw/Microphase-Z7-Lite/main/Start/Z7_LITE.xdc)

Tutorial from: https://github.com/vanbwodonk/zynq_z7lite_training

Board files from: https://github.com/BeatSkip/MicroPhase-Z7-Lite-Board-Files

Courseware from: https://pan.baidu.com/s/1owxkcZHvyOPyCfhBmDOBjA Password: doiy


