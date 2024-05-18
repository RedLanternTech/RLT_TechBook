# Keeping the touchpad from not working after sleep.

In Fedora, you have to use grubby to edit the Grub boot file.  

To keep the touchpad working after a sleep, type `sudo grubby --update-kernel=/boot/vmlinuz-$(uname -r) --args="psmouse.synaptics_intertouch=0"`

In PopOS, run the command `sudo kernelstub -a "psmouse.synaptics_intertouch=0"`

In Fedora Atomic based distros, run `sudo rpm-ostree sudo rpm-ostree kargs --editor`.  This will bring up the editor, at the end of the link of arguments already there, add `psmouse.synaptics_intertouch=0`

Sources for info:

https://computingforgeeks.com/modify-grub-cfg-configurations-on-linux-using-grubby/

https://wiki.archlinux.org/title/Touchpad_Synaptics#Troubleshooting

https://old.reddit.com/r/pop_os/comments/9fiaoh/cannot_add_kernel_parameters/

