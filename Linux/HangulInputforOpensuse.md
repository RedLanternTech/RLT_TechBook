# Notes
This is for how I got Hangul (Korean) input working in Opensuse Tumbleweed with KDE Plasma 5.26.5.  I know this method works as of 2-4-23.

First trick is to go into Yast, the add Korean in the Languages app.  It will take some time to run.  

When asked, I do install all the additional items for fcitx5-im

I then add the following lines of code into /etc/environment (I used vim).

``` 
INPUT_METHOD=fcitx
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```
Reboot the computer (or you could probably just logout and log back in but I like a full reboot)

Upon restart, go into System Settings -> Regional Settings -> Input Methods.  Uncheck the box `Only Show Current Language`.

Hangul will now be an option you can select and add into Current Input Method.  

After this i was able to swap inputs by either ctrl+space or just clicking the icon by the clock (it will go from a keyboard to a small penguin) 



