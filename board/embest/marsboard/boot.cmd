setenv bootargs console=ttymxc1,115200 root=/dev/mmcblk${devnum}p${bootpart} consoleblank=0 "${bootargs}"
load ${devtype} ${devnum}:${bootpart} ${loadaddr} ${prefix}zImage
load ${devtype} ${devnum}:${bootpart} ${fdt_addr_r} ${prefix}${fdtfile}
bootz ${loadaddr} - ${fdt_addr_r}
