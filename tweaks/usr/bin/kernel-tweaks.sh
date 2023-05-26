#!/bin/bash

# Get the available memory in gigabytes
available_mem=$(free -g | awk '/Mem/ {print $7}')

if [ $available_mem -le 5 ]; then
    sysctl -w vm.dirty_ratio=10
    sysctl -w vm.dirty_background_ratio=5
elif [ $available_mem -le 13 ]; then
    sysctl -w vm.dirty_ratio=4
    sysctl -w vm.dirty_background_ratio=2
fi

# Check if a swap file or partition exists
if [[ $(swapon --show) ]]; then
  # A swap file or partition exists, set vm.swappiness to 100
  sysctl -w vm.swappiness=100
fi

# Iterate over the block devices and check if they are zram devices
for device in /sys/block/zram*; do
    if [[ -d "$device" ]]; then
      sysctl -w vm.page-cluster=0
    fi
done
