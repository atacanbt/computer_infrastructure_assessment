#!/bin/bash

# Check if the user provided exactly one argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <name>"
    exit 1
elif [ $# -gt 1 ]; then
    echo "Error: Too many arguments. Please provide only one name."
    exit 1
fi

# Store the first argument as the user's name
name=$1

# Print the greeting
echo "Hello, $name!"