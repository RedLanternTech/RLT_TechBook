# Intro
The Following Notes Come from the tasks in the Snort Challenge - The Basics Room along with the intro Snort Room.  Also used a posting by [This Nice Person](https://medium.com/@huglertomgaw/snort-challenge-the-basics-tryhackme-225c332b50ac) when I got stuck.

# General Items

- Find the names of applications and other string variables in a log `sudo strings snort.log.930329202`
- quickest way to get to a specific packet number is to just have it print the lines
    so if you want packet 64 out of a log, `snort -r logfilename -n 64`
- If you don't get a log file, then the rules didn't find anything
- best way (or at least the way TryHackMe) likes to test pcaps is run `sudo snort -c local.rules -A full -l . -r pcapfile`.  this assumes you have a folder with a local.rules file in it and will save the alert and log files right there as well.  Will run snort in IDS mode
- VIM rules for looking at Snort Rules as it knows how to format them and makes troubleshooting easy.  Emacs may too but TryHackMe doesn't give you emacs and I didn't feel like spending 20 minutes setting it up.

# Start Snort in Sniffer Mode
`sudo snort -v -i eth0`
-v = verbose mode
-i = lets you set your interface
-c = lets you pick a config file to payload
-d = display packet data
-e = display link layer
-X = display full packet in hex
-T = Self-test
-l = set location for log file.  -l . will save to the current working directory
-K ASCII = saves the log in ASCII mode

I was able to pull off the first task in Snort Challenge - Live Attacks by running snort in sniffer mode and dumping the logs out in ASCII format.  So `sudo snort -dev -K ASCII -l .`

# IDS Rules for Torrent Metafiles

- Find items with .torrent extension:  `alert tcp any any -> any any (msg:"Torrent File Detected"; content:".torrent"; nocase;sid:10000000011); rev:1;`

# Find All Traffic for a given port

Use Two rules, in the example HTTP on port 80

`alert tcp any 80 <> any any (msg:"TCP port 80 inbound traffic detected";sid:1000000000001; rev :1)`
`alert tcp any any <> any 80 (msg:"TCP port 80 outbound traffic detected";sid:1000000000002; rev :1)`

- Find a Triggerd Rule's Sid (will need a log file) `sudo cat snort.log.8949393 | grep -r -e sid`

- Detect a packet by payload size (between 770 and 855 bytes) `alert tcp any any -> any any (msg: "Packet Size 770 and 855 bytes detected"; dsize: 770<>855; sid: 1000001;rev:1;)`


