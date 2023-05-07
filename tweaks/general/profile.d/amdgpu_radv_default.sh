# Check amdgpu module
if [ -d /sys/module/amdgpu ]; then 
	export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
fi
