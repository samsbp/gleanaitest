#!/bin/bash

echo "Listing all listening processes..."
echo "-----------------------------------"

# Check if ss exists
if command -v ss >/dev/null 2>&1; then
    sudo ss -tulnp | grep LISTEN
else
    echo "ss command not found. Trying netstat..."
    if command -v netstat >/dev/null 2>&1; then
        sudo netstat -tulnp | grep LISTEN
    else
        echo "Neither ss nor netstat is available on this system."
        exit 1
    fi
fi
