When setting up VS Code or VS Codium, if you get an error that basically says "Git ssh_askpass: exec(/usr/lib/ssh/ssh-askpass): No such file or directory", 
its missing a dialogue provider.  Seems to happen in Arch Linux when using KDE Plasma.  

There are two fixes:

Install x11-ssh-askpass or do a symlink back to ksshaskpass.

First install ksshaskpass `sudo pacman -S ksshaaskpass`
then run sudo `sudo ln /usr/bin/ksshaskpass /usr/lib/ssh/ssh-askpass`