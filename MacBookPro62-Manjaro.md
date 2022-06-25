# Setting Up Manjaro on a Macbook Pro 6,2

## introduction 
Due to a hardware failure and a need to not want to spend more than $200 on a laptop, I run Linux on a Macbook Pro 15" mid 2010 (or Macbook Pro 6,2).  Linux Mint 20.3 has been so far the only Linux Distribution that would run with the Nivida/Intel Dual Setup in it.  For whatever reason, it had to have the proprietary Nividia 340 driver or it would randomly lock up.  After doing some research, I found it was possible to get the Noueavu driver to work right.

## Please Note 
For this trick to work, you still have to Format the Drive with a MBR and avoid using an GPT partition table **at all costs**.  If you don't, then Linux will see both video cards and freak out. 

You can do the MBR in one of two ways, manually or put the hard drive in a non-efi system and install Manjaro.  I do the later as I can do LUKS very simply.  

## Procedure 
1. Install the latest version of Manjaro (in my case Manjaro KDE 21.3.1)
- Install with Open Source Drivers 
- Make sure it has an internet connection 
- Definitely recommend BTFRS 
2. Edit `/etc/default/grub` and at the end of the `GRUB_CMDLINE_LINUX_DEFAULT` add `nouveau.noaccel=1` 
3. Run `sudo grub-mkconfig -o /boot/grub/grub.cfg`
4. Reboot the system 
