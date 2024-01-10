# Setting up for the first time
1. let it run though its initial installation
2. Download the latest Arch release from [Dreemurrs-embedded/Pine64-Arch](https://github.com/dreemurrs-embedded/Pine64-Arch/releases)
3. Burn the image to a SD Card, put into the pinetab2 and let fully boot up, test and confirm it is all working
4. Shutdown the PineTab2, take the SD Card Out, and Copy the image into /home/alarm/Downloads (best to extract it first), reinsert into the pinetab2 and boot
5. Run fdisk -l to confirm the path for the eMMC `sudo fdisk -l` to confirm the drive mount point and the size.  Mine was the 116gb size and /dev/mmcblk1
6. Take a breath
7. Run `sudo dd bs=1M if=<name of image of=<destination`.  In my case `sudo dd bs=1M if=archlinux-binetab2-plasma_desktip-20230925.img of=/dev/mmcblk1` and wait
and /dev/mmcblk1
8.  when done, shut down, remove the sd card and boot.
9.  Let it go though its preinstall process and then login (alarm/123456)
10.  Run `pacman -Syu --noconfirm` to update first.  
11. Run it again
12.  Make a new administrator user, login and delete alarm

