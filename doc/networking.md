# Networking

This document details common commands used for network configuration, troubleshooting, and downloading files over the internet.

## `ping` - Check Network Connectivity
Sends ICMP ECHO_REQUEST packets to network hosts to check if they are reachable and to measure round-trip time.

**Common Flags:**
- `-c <count>`: Stop after sending a specific number of packets.

**Examples:**
```bash
ping google.com       # Continuously ping google.com (press Ctrl+C to stop)
ping -c 4 8.8.8.8     # Ping a specific IP address exactly 4 times
```

## `curl` - Transfer Data to or from a Server
A versatile command-line tool for transferring data using various protocols (HTTP, HTTPS, FTP, etc.). Highly used for interacting with REST APIs.

**Common Flags:**
- `-O`: Save the output to a file with the same name as the remote file.
- `-I`: Fetch the headers only.
- `-X`: Specify request method (GET, POST, PUT, DELETE).
- `-d`: Send data in a POST request.

**Examples:**
```bash
curl http://example.com                 # Print HTML of website to screen
curl -O https://example.com/file.zip    # Download file.zip
curl -I https://google.com              # Get HTTP headers
```

## `wget` - Network Downloader
A non-interactive network downloader. It is robust and can download files in the background, resume broken downloads, and mirror entire websites.

**Common Flags:**
- `-c`: Continue getting a partially-downloaded file.
- `-q`: Quiet mode (turn off output).

**Examples:**
```bash
wget https://example.com/ubuntu.iso     # Download a file
wget -c https://example.com/huge.zip    # Resume an interrupted download
```

## `ip` - Show/Manipulate Network Routing and Devices
The `ip` command replaces the older `ifconfig` command. It is used to show or manipulate routing, network devices, interfaces, and tunnels.

**Examples:**
```bash
ip a           # Show all IP addresses and network interfaces (same as `ip addr`)
ip route       # Show the routing table
ip link set eth0 up   # Bring a network interface online
```

## `netstat` / `ss` - Network Statistics
Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. `ss` is the modern, faster replacement for `netstat`.

**Common Flags for `netstat`:**
- `-t`: TCP connections.
- `-u`: UDP connections.
- `-l`: Listening ports.
- `-p`: Show process ID/name.
- `-n`: Show numeric addresses instead of resolving hosts.

**Examples:**
```bash
netstat -tulpn    # Show all listening ports and the processes using them
ss -tulpn         # Modern equivalent of the above
```

## `ssh` - Secure Shell
A program for logging into a remote machine and executing commands over a secure, encrypted connection.

**Common Flags:**
- `-p <port>`: Connect to a specific port (default is 22).
- `-i <keyfile>`: Use a specific identity (private key) file for authentication.

**Examples:**
```bash
ssh username@192.168.1.10          # Connect to a server
ssh -p 2222 user@remote.host.com   # Connect using a custom port
```
