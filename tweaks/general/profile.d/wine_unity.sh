logical_cores=$(grep -c "^processor" /proc/cpuinfo)
half_cores=$((logical_cores / 2))

if [ "$half_cores" -gt 0 ]; then
  topology="${half_cores}:$(seq -s, 0 $((half_cores - 1)))"
  export WINE_CPU_TOPOLOGY="$topology"
else
  echo "Cannot set WINE_CPU_TOPOLOGY. Insufficient logical cores."
fi
