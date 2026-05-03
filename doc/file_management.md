# File and Directory Management

This document provides detailed explanations of common commands used for managing files and directories in Linux.

## `ls` - List Directory Contents
The `ls` command is used to list files and directories within the file system.

**Common Flags:**
- `-l`: Long listing format (shows permissions, owner, size, timestamp).
- `-a`: Show all files, including hidden files (those starting with a dot `.`).
- `-h`: Human-readable file sizes (e.g., KB, MB, GB).
- `-R`: List directories recursively.

**Examples:**
```bash
ls -lah /var/log   # List all files in /var/log with details and human-readable sizes
ls -lt             # List files sorted by modification time (newest first)
```

## `cd` - Change Directory
Used to navigate between directories.

**Examples:**
```bash
cd /usr/local/bin  # Navigate to the specified absolute path
cd ..              # Go up one directory level
cd ~               # Go to the current user's home directory
cd -               # Go back to the previous directory
```

## `pwd` - Print Working Directory
Displays the full absolute path to the current directory you are in.

**Example:**
```bash
pwd
# Output: /home/username/projects
```

## `mkdir` - Make Directory
Creates a new directory.

**Common Flags:**
- `-p`: Create parent directories as needed. No error if they already exist.

**Examples:**
```bash
mkdir new_folder           # Creates 'new_folder' in current directory
mkdir -p nested/dir/path   # Creates 'nested', 'dir', and 'path' directories
```

## `rm` - Remove Files or Directories
Deletes files and directories. **Caution: This action is generally permanent.**

**Common Flags:**
- `-r` (or `-R`): Recursively remove directories and their contents.
- `-f`: Force removal without prompting for confirmation.
- `-i`: Prompt before every removal.

**Examples:**
```bash
rm file.txt        # Delete file.txt
rm -i secret.txt   # Ask for confirmation before deleting
rm -rf old_logs/   # Forcefully remove directory 'old_logs' and all contents
```

## `cp` - Copy Files and Directories
Copies files or directories from one location to another.

**Common Flags:**
- `-r`: Copy directories recursively.
- `-i`: Prompt before overwrite.
- `-v`: Verbose output (show what is being copied).

**Examples:**
```bash
cp source.txt dest.txt       # Copy single file
cp -r images/ backup_images/ # Copy entire directory
```

## `mv` - Move or Rename Files and Directories
Used to move files from one place to another, or to rename them.

**Examples:**
```bash
mv old_name.txt new_name.txt # Rename file
mv script.sh /usr/local/bin/ # Move file to a different directory
```

## `find` - Search for Files in a Directory Hierarchy
A powerful tool to search for files based on name, size, time, and other attributes.

**Examples:**
```bash
find . -name "*.log"          # Find all files ending in .log in current directory and subdirectories
find / -size +1G              # Find all files larger than 1GB starting from root
find . -type d -name "test*"  # Find directories (type d) starting with "test"
```

## `tar` - Tape Archive
Used to compress and extract files and directories into archives (like zip).

**Common Flags:**
- `-c`: Create a new archive.
- `-x`: Extract an archive.
- `-z`: Compress/decompress using gzip.
- `-v`: Verbose output.
- `-f`: Specify the filename of the archive.

**Examples:**
```bash
tar -czvf archive.tar.gz folder/  # Create a compressed gzip archive of 'folder/'
tar -xzvf archive.tar.gz          # Extract a gzip archive
```
