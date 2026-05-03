#!/bin/bash

# Simple Backup Script
# This script creates a compressed backup of a specified directory.

SOURCE_DIR="/var/log"  # Directory to backup (example)
BACKUP_DIR="/tmp/backups" # Where to store the backup
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/log_backup_$DATE.tar.gz"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "Starting backup of $SOURCE_DIR..."

# Use tar to compress the source directory
# -c: create, -z: gzip, -v: verbose, -f: filename
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup file created at: $BACKUP_FILE"


    # Optional: print the size of the new backup file using du
    FILE_SIZE=$(du -sh "$BACKUP_FILE" | awk '{print $1}')
    echo "Backup size: $FILE_SIZE"
else
    echo "Error: Backup failed."
fi
