# Random Notes for Kali Linux

### Ettercap

`sudo ettercap -Tw dump.pcap` - To throw a packet dump into a pcap file.

### Remote Access 
`vncserver :1` - will start VNC and I can get to a desktop if I want

### Snort Commands 
`sudo apt install snort` 

`sudo snort -i eth0 -c /etc/snort/snort.conf -q -A console` - For quick and dirty IDS.  Will show you anything going on in the environment.  Will run it live. Replace eth0 with the name of your interface.   

`sudo ip link set eth0 promisc on` - Enable's Promiscuous Mode on an ethernet card

`sudo snort -T -i eth0 -c /etc/snort/snort.conf` - Runs a test on the config file

### Suricata Commands 
- Before Running Suricata, You have to change the default-rule-path variable in suricata.yaml to `/var/lib/suricata/rules`

`sudo systemctl enable suricata.service` - Enable Suricata's Service 

`sudo suricata-update` - Updates Suricata and downloads the community rules at latest emerging rules 

`sudo suricata-update enable-source <name of source>` will add in sources

`sudo suricata-update list-sources` list the definition sources that can be added

`sudo suricata -T -c /etc/suricata/suricata.yaml -v` Will run Suricata in Test mode, make sure the serivce isn't running first 

`sudo systemctl start suricata.service` - Starts Suricata in the background

- Logs are stored in /var/log/suricata
- Can test to see if it is working by `curl http://testmynids.org/uid/index.html` and then checking /var/log/suricata/fast.log 
- `sudo tail -f /var/log/suricata/fast.log` will keep a running tail of the logs
