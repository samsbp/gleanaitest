#!/bin/bash

# If no argument is given, use current directory
TARGET_DIR="${1:-.}"

# Check if directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

echo "Listing permissions for all files and directories in: $TARGET_DIR"
echo "--------------------------------------------------------------"

# Use find to list all files and directories with permissions
find "$TARGET_DIR" -exec ls -ld {} \;
