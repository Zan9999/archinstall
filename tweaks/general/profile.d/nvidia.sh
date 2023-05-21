if [ -d /sys/module/nvidia ]; then
  export __GL_THREADED_OPTIMIZATIONS=1
  export __GL_MaxFramesAllowed=3
  export __GL_YIELD="USLEEP"
  export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
  sysctl -w vm.panic_on_oom=0
fi
