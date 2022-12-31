# Sideloading ADB files

if for some reason `adb devices` comes back blank or won't see the darn phone

`sudo adb kill-server`
`sudo adb start-server`

Seems to do the trick.  found this while making my Pixel 3bXL hate life. 