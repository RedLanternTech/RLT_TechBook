# OpenSuse Notes

## Don't forget to enable the Community Repositories

## Setup Snap and Flatpack [taken from here](https://linuxstoney.com/install-snap-and-flatpak-in-opensuse-tumbleweed/)
- `sudo zypper addrepo --refresh http://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed/ snappy`
- `sudo zypper install snapd flatpak`
- `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
- `sudo systemctl enable --now snapd`
- `sudo systemctl start --now snapd`

### To Use
- To do a flatpak search:  `flatpak search <package name>` 
- To Install: `flatpak install <application id>` Always use the application id
- For Snap:  `snap search <package>`
- To Install Snap:  `snap install <package>`

Note that Discovery in KDE seems to integrate pretty darn well with Flatpak
