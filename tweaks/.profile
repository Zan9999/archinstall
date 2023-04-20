# Check amdgpu module
if [ -d /sys/module/amdgpu ]; then 
# Checking RDNA-series chips
	export RADV_PERFTEST=gpl
	export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
	if [[ $(lspci -k | grep -EA3 "3D | VGA" | grep -o "\].*\[" | cut -c 3- | sed -r 's/(.+).{1}/\1/') = $(grep -Pio 'Navi 10|Navi 12|Navi 14|Navi 21|Navi 22|Navi 23|Navi 24|Navi 31|Navi 33') ]]; then
		# Enabling wave32 short instructions, wave64 for rt, experimental video decoding support, NGG Streamout, Graphics Pipeline Library
		export RADV_PERFTEST+=,cswave32,gewave32,video_decode,ngg_streamout,rt
	fi
fi
# Check Intel i915 module
if [ -d /sys/module/i915 ]; then
	export ANV_GPL=true # Enable Graphics Pipeline Library support on Intel ANV vulkan driver
fi
# Check obs_vkcapture
if [ "$XDG_SESSION_TYPE" = "x11" ] && [ $(pacman -Qs obs-vkcapture) != "" ]; then
	export OBS_USE_EGL=1
fi
# Gnome qt fix
if [[ $DESKTOP_SESSION == "gnome" ]]; then
	export XCURSOR_THEME=breeze
	export XCURSOR_SIZE=24
	export QT_STYLE_OVERRIDE=adwaita
fi
#vaapi
gpuId=$(lspci -d "*:*:03xx" -n | cut -f 3 -d " ")

intel_check_vaapi() {
	if [[ -n $(vainfo | grep i965) ]]; then
		export LIBVA_DRIVER_NAME=i965
	else
		export LIBVA_DRIVER_NAME=iHD
	fi

	export VDPAU_DRIVER=va_gl
}

amd_check_vaapi() {
	if [[ -d /sys/module/amdgpu ]]; then
		export LIBVA_DRIVER_NAME=radeonsi
		export VDPAU_DRIVER=radeonsi
	fi
}

case "$gpuId" in

	1002*) # AMD
	amd_check_vaapi
	;;

	10de*) # Nvidia
	export LIBVA_DRIVER_NAME=nvidia
	export VDPAU_DRIVER=nvidia
	;;

	8086*) # Intel
	intel_check_vaapi
	;;
esac
# Wayland 
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	if [ -d /sys/module/nvidia ]; then
		export GBM_BACKEND=nvidia-drm
		export __GLX_VENDOR_LIBRARY_NAME=nvidia
	fi
    export WAYLAND=1
    # QT_QPA_PLATFORM='xcb' best for KDE Framework apps
    export QT_QPA_PLATFORM='xcb' 
    export GDK_BACKEND='wayland,x11'
    export WINIT_UNIX_BACKEND=x11 # Workaround for Alacritty title bar
    export MOZ_DBUS_REMOTE=1
    export MOZ_ENABLE_WAYLAND=1
    export _JAVA_AWT_WM_NONREPARENTING=1
    export BEMENU_BACKEND=wayland
    export CLUTTER_BACKEND=wayland
    export ECORE_EVAS_ENGINE=wayland_egl
    export ELM_ENGINE=wayland_egl
fi
# General
export EDITOR=/usr/bin/micro
export BROWSER=firefox
export QT_QPA_PLATFORMTHEME=qt6ct

