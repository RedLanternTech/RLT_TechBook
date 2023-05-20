# Setting up my FT-1000MP Mark V on Linux.

This radio is an oldie but a goodie.

First, make sure your account is part of whatever group owns the tty devices

- Manjaro it is uucp
- Some have it as dialout

## I install the following Flatpaks

- Fldigi
- Flrig
- WSJT-X
- KLog

## For FlRig to work, the settings need to be as follows:
- Rig:  FT-1000MP-A
- /dev/ttyUSB0 (because I use a usb to serial uart)
- 2 - StopBits
- RTS/CTS
- DTR +12v

## in WSJTX
- Set the Rig to FLRig and the network server to 127.0.0.1:12345

