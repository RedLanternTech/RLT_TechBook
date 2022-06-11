# Suricata Setup on a Raspberry Pi 

1. Start with either a fresh copy of Raspbery Pi OS or Ubuntu Server. 
- I like Raspbery Pi os but make sure to set the localization is `raspi-config` or Suricata will have an issue later. 
- The Raspbery Pi Imager tool is great as I can set Wifi and SSH up right away.
2. Run updates `sudo apt update && sudo apt upgrade -y && sudo reboot`
3. Set eth0 into promiscuous mode.  `sudo ip link set eth0 promisc on`
4. Install Suricata `sudo apt install suricata`
5. Make the following changes in /etc/suricata/suricata.yaml
- set HOME_NET to the correct Network IP.  For Example, if your eth0 on the Pi is on 10.0.0.1 with a subnet mask of 255.255.255.0, your Network IP is 10.0.0.0/24
- change default-rule-path to /var/lib/suricata/rules
6. Save and close the file 
7. Run `sudo systemctl enable suricata.service`
8. Run `sudo systemctl start suricata.serivce`
9. run `sudo suricata-update`
10. run `sudo chmod -R 755 /var/lib/suricata/rules`
11. Run `sudo systemctl restart suricata.serivce`
12. Check /var/log/suricata/suricata.log.  If you see SC_ERR_NO_RULES(42), re-run steps 10 and 11 
13. Wait 2 minutes 
14. On another machine, run `curl http://testmynids.org/uid/index.html` 
15. Detections will start being logged to fast.log
