# Installing OpenVas in Kali Linux

1. Open a Root Console (just so you don't worry about sudo)
2. `apt install openvas`
3. `gvm-setup`
4. Make note of the username and password and let it run
5. This takes a bit so give it like an hour
6. To check.  `gvm-check-setup`.   Also in /var/log/gvm, `tail -f gvmd.log`
7. To start if not running `gvm-start`.  Will be at https://127.0.0.1:9392
8. Once you confirm it works, go back into the console and run `sudo greenbone-feed-sync` to pull the config files
9. To stop `gvm-stop`

To get feeds if they didn't come down
1. `greenbone-feed-sync --type GVMD_DATA`
2. `greenbone-feed-sync --type SCAP`
3. `greenbone-feed-sync --type CERT`


[Source for this video](https://youtu.be/ZJcEWx9mlng)
