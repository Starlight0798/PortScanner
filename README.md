# PortScanner

A comprehensive port scanner tool implementing multiple scanning techniques including Ping, TCP Connect, TCP SYN, TCP FIN, and UDP scans. Designed with multi-threading support for efficient performance.

## Features

- **Ping Scan**: Check if a host is reachable.
- **TCP Connect Scan**: Attempt to establish a full TCP connection to determine if ports are open.
- **TCP SYN Scan**: Perform half-open scanning to detect open ports without completing the TCP handshake.
- **TCP FIN Scan**: Send FIN packets to determine if ports are open based on the response.
- **UDP Scan**: Send UDP packets to detect open or filtered ports.

## Directory Structure

```
PortScanner/
├── include/
│ ├── Ping.h
│ ├── TCPConnectScan.h
│ ├── TCPSYNScan.h
│ ├── TCPFINScan.h
│ ├── UDPScan.h
│ └── utils.h
├── src/
│ ├── Ping.cpp
│ ├── TCPConnectScan.cpp
│ ├── TCPSYNScan.cpp
│ ├── TCPFINScan.cpp
│ ├── UDPScan.cpp
│ ├── Scaner.cpp
│ └── utils.cpp
├── bin/
│ └── Scaner
├── obj/
│ └── *.o
└── Makefile
```

## Prerequisites

- A Linux-based system (recommended)
- g++ compiler
- Root or sudo privileges (required for raw socket operations)

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/Starlight0798/PortScanner.git
    cd PortScanner
    ```

2. Compile the code using the provided Makefile:
    ```bash
    make
    ```

## Usage

To run the scanner, you will need to have root privileges. Use the following commands to execute different types of scans:

- **Ping Scan**:
    ```bash
    sudo ./bin/Scaner -p <target_ip>
    ```

- **TCP Connect Scan**:
    ```bash
    sudo ./bin/Scaner -c <target_ip> <start_port> <end_port>
    ```

- **TCP SYN Scan**:
    ```bash
    sudo ./bin/Scaner -s <target_ip> <start_port> <end_port>
    ```

- **TCP FIN Scan**:
    ```bash
    sudo ./bin/Scaner -f <target_ip> <start_port> <end_port>
    ```

- **UDP Scan**:
    ```bash
    sudo ./bin/Scaner -u <target_ip> <start_port> <end_port>
    ```

## Example

To run a TCP Connect Scan on the IP address `192.168.1.1` for ports 1 to 100:
```bash
sudo ./bin/Scaner -c 192.168.1.1 1 100
