#!/bin/bash

available_mem=$(free -g | grep Mem | awk '{print $7}')
available_swap=$(free -g | grep Swap | awk '{print $2}')

if [ "$available_mem" -le 5 ]; then
  sysctl -w vm.dirty_ratio=10
  sysctl -w vm.dirty_background_ratio=5
elif [ "$available_mem" -le 13 ]; then
  sysctl -w vm.dirty_ratio=4
  sysctl -w vm.dirty_background_ratio=2
fi
if [ "$available_swap" -ne 0 ]; then
  sysctl -w vm.swappiness=100
fi
