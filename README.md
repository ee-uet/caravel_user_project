# UET Lahore Servo Motor Controller

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![UPRJ_CI](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

The project implements different components used in a servo motor controller. The components include the following:
1. Closed Loop PID Controller
2. PWM Generator
3. Delta Sigma Input (Decimation Filters such as CIC Filters)
4. Direct Digital Synthesizers (DDS) for Generating Sinusoids

A block diagram of the project is given below:

![Block Diagram](./docs/source/_static/blockdia.svg)

The green part of the block diagram shows the components implemented in the project. One of the motor module runs the closed loop system, after the reset, with the quadrature encoder feedback and generates the corresponding 

## Applications
Motor control is being used in numerous applications such as automotive drives, industrial processing, domestic applicances, etc. Different applications pose different challenges for the motor drive and an SoC that covers a wide range of applications will have huge potential. Our SoC combines different components that will be used in designing a motor controller catering such large application space.

## Motor Module Registers and Their Descriptions

The Motor control module has three building blocks, namely, Quadrature Encoder Interface (QEI) for feedback input, a PID controller and a PWM timer. The module has multiple registers for its configuration and operation. The register address map for the module is given in the following table.

| **Register Name** | **Address** | **Accessibility** | **Description** |
| --- | --- | --- | --- |
| **Timer Configuration and Working Registers** |
| Timer Config | 0x30000000 | RW | Timer configuration register |
| Timer Reload | 0x30000004 | RW | Timer reload value register |
| Timer Count | 0x30000008 | RW | Timer current count register |
| Timer Duty | 0x3000000C | RW | Timer duty cycle register for PWM |
| **Quadrature Encoder Configuration and Working Registers** |
| QEI Count | 0x30000100 | RW | Encoder current count register |
| QEI Speed | 0x30000104 | RO | Encoder speed register |
| QEI Config | 0x30000108 | RW | Encoder configuration register |
| **PID Controller Configuration and Working Registers** |
| PID Kp | 0x30000200 | RW | PID proportional gain register |
| PID Ki | 0x30000204 | RW | PID integral gain register |
| PID Kd | 0x30000208 | RW | PID derivative gain register |
| PID Ref | 0x3000020C | RW | PID reference signal register |
| PID Feedback | 0x30000210 | RW | PID feedback register |
| PID Config | 0x30000214 | RW | PID configuration register |

**Bit-field descriptions for Timer Registers**

| 31 --- 8 | 7 --- 4 | 3 | 2 | 1 | 0 |
| --- | --- | --- | --- | --- | --- |
| Reserved | PWM DB | PID Sel | IRQ En | Up/Dn | Enable |

Timer Configuration Register

| **Bit Field** | **Description** |
| --- | --- |
| Enable | Enables the timer when set to 1. |
| Up/Dn | Timer counts up when set to 1 and counts down otherwise. |
| IRQ En | When set to 1 generates an interrupt on each timer overflow/underflow. |
| PID Sel | If set to 1, the timer uses PID controller output as PWM duty cycle value. When cleared to 0, PWM duty cycle register is used to define PWM duty cycle value. |
| PWM DB | Configures the PWM dead-band value. |

The registers _Timer Reload_ and _Timer Count_ are 32-bit each, while _Timer Duty_ register is 16-bit wide.

**Bit-field descriptions for Quadrature Encoder Interface Registers**

| 31 --- 3 | 2 | 1 | 0 |
| --- | --- | --- | --- |
| Reserved | Period Sel | Enable | Count-2x |

Timer Configuration Register

| **Bit Field** | **Description** |
| --- | --- |
| Count-2x | If set to 1, encoder counts both rising and falling edges of Channel A. When cleared to 0, encoder counts all the edges of both channels (4x). |
| Enable | When set to 1, enables the QEI module. |
| Period Sel | When cleared to 0, the speed is measured by counting the encoder pulses during one reload interval of the PWM timer. When set to 1, the speed is evaluated by measuring the time period between two consecutive encoder pulses. |

The registers _QEI Count_ register is 32-bit, while _QEI Speed_ register is 16-bit.

**Bit-field descriptions for PID Controller Registers**

| 31 --- 10 | 9| 8 | 7 ---1 | 0   |
| ---| --- |--- |--- |--- |
| Reserved |TEST EN | SYNC EN | Unused | FB Sel |

Timer Configuration Register

| **Bit Field** | **Description** |
| --- | --- |
| FB Sel | If set to 1, the _PID Feedback_ register value is used as the feedback signal. When cleared to 0, the speed output from QEI module is used as feedback. |
| SYNC EN | If set to 1, allows syncing of the PWMs. |
| TEST EN | Set by default, needs to be low to allow wishbone control. |

The registers _PID Kp_, _PID Ki_ and _PID Kd_ registers are 8-bit each and are treated as unsigned values. The _PID Ref_ and _PID Feedback_ registers are 16-bit each.
