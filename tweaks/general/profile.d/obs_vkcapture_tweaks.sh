if [ "$XDG_SESSION_TYPE" = "x11" ] && [ $(pacman -Qs obs-vkcapture) != "" ]; then
	export OBS_USE_EGL=1
fi
