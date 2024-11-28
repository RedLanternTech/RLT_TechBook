# Putting Signal Into Distrobox

Why they only do a debian package, I don't know.  Don't care to use the unverified flatpak so...

1. Create a new distrobox using Ubuntu Latest
2. Update it `sudo apt update && sudo apt upgrade -y`
3. Run `sudo apt install libasound2t64`
4. Follow the instructions to install Signal off the official site
5. Run Signal with signal-desktop, confirm it works then export it out to have it available
