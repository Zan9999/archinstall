# Original Script by CachyOS Team
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	if [ -d /sys/module/nvidia ]; then
		export GBM_BACKEND=nvidia-drm
		export __GLX_VENDOR_LIBRARY_NAME=nvidia
	fi
if [[ $DESKTOP_SESSION == "gnome" ]]; then
    export XCURSOR_THEME=breeze
    export XCURSOR_SIZE=24
fi
    # fallback to Xwayland for Qt applications 
    export QT_QPA_PLATFORM="wayland;xcb"
    export WINIT_UNIX_BACKEND=x11 # Workaround for Alacritty title bar
    export MOZ_ENABLE_WAYLAND=1
    export WLR_NO_HARDWARE_CURSORS=1 
    export KITTY_ENABLE_WAYLAND=1
fi
