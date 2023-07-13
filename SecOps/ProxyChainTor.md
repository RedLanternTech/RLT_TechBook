# Using Proxychains to send commands over Tor

Recently was working with metagoofil and I wanted to try to send queries over Tor.  Fortuantly it wasn't too bad with my only hangup was trusting Youtube too much.  

## To make it work
1. Install tor `sudo apt install tor`
2. `sudo systemctl enable --now tor.service`
3. To test, `proxychains firefox dnsleaktest.com`

If you are seeing socket denied errors, then you may be trying to send it though a socks5 which for some reason just threw all sorts of heck.