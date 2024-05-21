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
│ ├── Scanner.cpp
│ └── utils.cpp
├── bin/
│ └── Scanner
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
    sudo ./bin/Scanner -p <target_ip>
    ```

- **TCP Connect Scan**:
    ```bash
    sudo ./bin/Scanner -c <target_ip> <start_port> <end_port>
    ```

- **TCP SYN Scan**:
    ```bash
    sudo ./bin/Scanner -s <target_ip> <start_port> <end_port>
    ```

- **TCP FIN Scan**:
    ```bash
    sudo ./bin/Scanner -f <target_ip> <start_port> <end_port>
    ```

- **UDP Scan**:
    ```bash
    sudo ./bin/Scanner -u <target_ip> <start_port> <end_port>
    ```

## Example

To run a TCP Connect Scan on the IP address `192.168.1.1` for ports 1 to 100:
```bash
sudo ./bin/Scanner -c 192.168.1.1 1 100
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## Acknowledgements

This project was developed as part of a network security course. Special thanks to all the contributors and supporters.

## Contact

For any questions or suggestions, please open an issue on GitHub or contact me
