This was written on Arch Linux but should work on other distros (other than the first line)

1. run `sudo pacman -S rclone`
2. run `rclone config`
3. Press N for New Remote
4. Enter the name, I just do `onedrive` all lower case
5. Select Microsoft OneDrive from the list of services
6. Don't enter a client id or secret id, just hit enter
7. Press N when asked for advanced config
8. When Asked for Autoconfig, press Y
9. It will bring up a login for Office 365, it it doesn't come up, turn off the firewall as rclone is generating a web site to pull this off
10. Select the Account Type (One Drive Personal or Business for actual one drive but this can do sharepoint as well)
11. When it asks if the configureation is ok, hit y for yes.  It will take you back to the configuration menu when done
12. make a new directory in your home directory for it, i named mine onedrive
13. Mount OneDrive by typing `rclone --vfs-cache-mode writes mount "onedrive": ~/onedrive`  this should mount the folder into the new one you made
14. To make it startup, go to Startup Applications in the Control Panel (in Cinnamon at least) and create a new startup item with the command `sh -c "rclone --vfs-cache-mode writes mount \"onedrive\": ~/onedrive"`

For more info, see https://itsfoss.com/use-onedrive-linux-rclone/ and https://rclone.org/onedrive/