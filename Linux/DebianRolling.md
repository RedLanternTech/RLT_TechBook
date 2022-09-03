# Turn Debian 11 Into a Rolling Release

This is based on some ideas that I researched.  I may take one of my systems back to Debian for Amateur Radio Work but I wanted to see if I could get it on a rolling release.  The idea being you run Debian Testing.  Figured I'd build a VM with some tweaks to see how I like it.  

Install will use Gnome with the PopOS Cosmic Extensions

# First Part, Debian Install
1. Installed Debian with no changes.  Did select Gnome as the desktop.

# Second Part, Swap to Debian Testing
1. run `cd /etc/apt`
2. run `sudo cp sources.list sources.list.backup`
3. In /etc/apt/sources.list, remove all the lines and add `deb http://deb.debian.org/debian/ testing main contrib non-free` and `deb-src http://deb.debian.org/debian/ testing main contrib non-free`
4. run `sudo apt update && sudo apt upgrade -y` 
