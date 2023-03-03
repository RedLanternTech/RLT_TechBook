# OpenSuse Notes

## Don't forget to enable the Community Repositories

## Setup Snap and Flatpak [taken from here](https://linuxstoney.com/install-snap-and-flatpak-in-opensuse-tumbleweed/)
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

## Setup PAM for KDE Wallet AutoLogin
- make sure to use Blowfish and that your password for the wallet is the same as the login
- Install `sudo zypper install pam_kwallet`

## Install the Codecs
`sudo zypper install opi`
`opi codecs`

## Install Microsoft Fonts
`sudo zypper install fetchmsttfonts`

# Sources for this info
https://www.reddit.com/r/openSUSE/comments/p6q60u/codecs_its_easier_to_install_them_than_you_think/
https://averagelinuxuser.com/after-installing-opensuse/
