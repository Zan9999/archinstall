# Check amdgpu module
if [ -d /sys/module/amdgpu ]; then 
# Checking RDNA-series chips
	export RADV_PERFTEST=gpl
	if [[ $(lspci -k | grep -EA3 "3D | VGA" | grep -o "\].*\[" | cut -c 3- | sed -r 's/(.+).{1}/\1/') = $(grep -Pio 'Navi 10|Navi 12|Navi 14|Navi 21|Navi 22|Navi 23|Navi 24|Navi 31|Navi 33') ]]; then
		# Enabling wave32 short instructions, wave64 for rt, experimental video decoding support, NGG Streamout, Graphics Pipeline Library
		export RADV_PERFTEST+=,cswave32,gewave32,video_decode,ngg_streamout,rt
	fi
fi

# Check Intel i915 module
if [ -d /sys/module/i915 ]; then
	export ANV_GPL=true # Enable Graphics Pipeline Library support on Intel ANV vulkan driver
	export COGL_ATLAS_DEFAULT_BLIT_MODE=framebuffer
	sysctl -w dev.i915.perf_stream_paranoid=0
fi
