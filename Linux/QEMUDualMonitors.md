# Getting Dual Monitors Setup in QEMU / Virt-Manager

1. In the Host machine, install the spice guest tools from [spice-space.org](https://www.spice-space.org/download/windows/spice-guest-tools/spice-guest-tools-latest.exe)
2. Add a second Video QXL device.   
3. You have to use virt-viewer instead of accessing it though virtual machine manager.  Install virt-viewer `pacman -S virt-viewer`
4. Connect using virt-viewer `virt-viewer --connect qemu:///system`.  It will let you pick the running virtual machine (if you see nothing, you have to start the VM first).  From there you will have second monitors.  


