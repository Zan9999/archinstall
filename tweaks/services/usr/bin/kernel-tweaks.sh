#!/bin/bash

# Get the available memory in gigabytes
available_mem=$(free -g | awk '/Mem/ {print $7}')

# Calculate the dirty_ratio based on available memory (set to 50% of available memory)
dirty_ratio=$((available_mem / 2))

# Calculate the background_ratio based on available memory (set to 25% of available memory)
background_ratio=$((available_mem / 4))

# Update the dirty_ratio and background_ratio values
sysctl -w vm.dirty_ratio="$dirty_ratio"
sysctl -w vm.dirty_background_ratio="$background_ratio"

# Check if a swap file or partition exists
if [[ $(swapon --show) ]]; then
  # A swap file or partition exists, set vm.swappiness to 100
  sysctl -w vm.swappiness=100
  echo "vm.swappiness is set to 100"
else
  # No swap file or partition found
  echo "No swap file or partition found. Skipping setting vm.swappiness."
fi
