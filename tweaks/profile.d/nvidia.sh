	if [ -d /sys/module/nvidia ]; then
	# Hardware video acceleration
	export LIBVA_DRIVER_NAME=nvidia
	export MOZ_DISABLE_RDD_SANDBOX=1
	export NVD_BACKEND=direct
	# Anoter optimization
	export __GL_THREADED_OPTIMIZATIONS=1
	export __GL_MaxFramesAllowed=3
	export __GL_YIELD="USLEEP"
	export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
	fi
