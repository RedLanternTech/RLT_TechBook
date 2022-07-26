# To make my darn Fstab file mout NTFS in (probably dumb) way that works

1. First, figure out the UID for the drive `sudo blkid`.  In my exampled, the uid of the drive is `88A8463EA8462AD`
2. at the end of the fstab file, I like to add:
```
# My Data Disk
UUID=88A8463EA8462AD0 /mnt/data ntfs-3g auto,defaults,uid=1000,gid=1000,utf8 0 0 
```
This will make the whole disk writeable so not the best if you are sharing the system (which I'm not).  This will make the entire disk writable for any user that logs in.
