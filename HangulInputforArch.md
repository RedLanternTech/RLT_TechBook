# Notes
This is for how I got Hangul (Korean) input working in ArcoLinux (will probably work in Manjaro or Arch).  I probably could have ran everything as
one command but while working on it, I had went piece-by-piece.  I know this method works as of 1-22-22.  

Commands to run in the terminal

`sudo pacman -S fcitx5-im fcitx5-hangul adobe-source-han-sans-kr-fonts ibus-hangul `
When asked, I do install all the additional items for fcitx5-im

I then add the following lines of code into /etc/environment (I used vim).

``` 
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```
After this i was able to swap inputs by either ctrl+space or just clicking the icon by the clock (it will go from a keyboard to cool Red/Yellow/Blue
symbol when it is active.  Note that it only works if you are in a text field (or OpenOffice)

For more info, check out:

https://wiki.archlinux.org/title/Fcitx5

https://wiki.archlinux.org/title/Localization/Korean
