# System Information and Monitoring

This document provides detailed explanations of common commands used for monitoring system health, managing processes, and checking hardware resources.

## `top` / `htop` - Task Manager / Process Viewer
These tools display Linux processes and provide a dynamic, real-time view of a running system.

- **`top`**: Pre-installed on almost all Linux systems. Shows CPU/Memory usage and a list of running processes.
- **`htop`**: An enhanced, interactive version of `top` with a better UI, color coding, and easier process management (often requires installation via package manager).

**Common actions in `htop`:**
- `F3`: Search for a process.
- `F9`: Send a kill signal to a process.
- `F10`: Quit.

## `ps` - Report Current Processes
Produces a snapshot of the current processes. Unlike `top`, it does not update continuously.

**Common Flags:**
- `a`: Show processes for all users.
- `u`: Display the process's user/owner.
- `x`: Also show processes not attached to a terminal.

**Examples:**
```bash
ps aux             # Show every running process on the system
ps aux | grep node # Find a specific process (e.g., a node.js app)
```

## `kill` - Send Signals to Processes
Sends a specific signal to a process, most commonly to terminate it. You need the Process ID (PID), which you can find using `top` or `ps`.

**Common Signals:**
- `-15` (SIGTERM): Ask the process to terminate gracefully (default).
- `-9` (SIGKILL): Forcefully kill the process immediately.

**Examples:**
```bash
kill 1234      # Gracefully terminate process with PID 1234
kill -9 1234   # Forcefully kill process 1234
```

## `df` - Disk Free
Reports the amount of available disk space on file systems.

**Common Flags:**
- `-h`: Human-readable format (prints sizes in MB, GB instead of bytes).
- `-T`: Print file system type.

**Example:**
```bash
df -h
# Output shows Filesystem, Size, Used, Avail, Use%, Mounted on
```

## `du` - Disk Usage
Estimates file and directory space usage. It is useful for finding out which folders are consuming the most space.

**Common Flags:**
- `-s`: Summarize (display only a total for each argument).
- `-h`: Human-readable format.
- `-d <depth>`: Max depth to recurse into directories.

**Examples:**
```bash
du -sh /var/log/        # Get the total size of the /var/log directory
du -h -d 1 /var/        # Show sizes of all folders immediately inside /var/
```

## `free` - Memory Usage
Displays the total amount of free and used physical and swap memory in the system.

**Common Flags:**
- `-h`: Human-readable format.
- `-m`: Display in Megabytes.

**Example:**
```bash
free -h
# Output shows total, used, free, shared, buff/cache, available memory
```

## `uname` - Print System Information
Prints basic information about the operating system name and system hardware.

**Common Flags:**
- `-a`: Print all information (Kernel name, hostname, release, version, architecture).
- `-r`: Print kernel release version.

**Examples:**
```bash
uname -a
uname -r
```
