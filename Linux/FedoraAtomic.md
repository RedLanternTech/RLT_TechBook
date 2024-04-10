# Fedora Atomic Notes

## Add tailscale
`cd /etc/yum.repos.d`
`sudo wget https://pkgs.tailscale.com/stable/fedora/tailscale.repo`
`sudo rpm-ostree install tailscale`

## Make Changes to Grub
`rpm-ostree kargs --editor`

## Enable AutoUpdate
- Change in /etc/rpm-ostreed.conf the line `AutomaticUpdatePolicy` to stage and reboot

## Get the Apps 
`sudo rpm-ostree install nextcloud-client emacs ripgrep git neovim`
`flatpak install com.brave.Browser io.freetubeapp.FreeTube org.mozilla.Thunderbird`


