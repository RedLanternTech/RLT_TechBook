# Linux Mint Network Troubleshooting Commands

Includes Windows Equivalents 

| Linux Command | Windows Equiv | Description |
| ------------- | ------------- | ----------- |
| ip address | ipconfig | Get the IP Address |
| sudo dhclient -r | ipconfig /release | Releases a DHCP Address |
| sudo dhclient | ipconfig /renew | Renews a DHCP Address |
| sudo /etc/init.d/dns-clean start | ipconfig /flushdns | Flush DNS Cache |
| ip route or ip r | ipconfig /all | Gets the Default Gateway |
| route -n | ipconfig /all | Gets the Default Gateway |
| systemd-resolve --status | ipconfig /all | Find DNS Servers|
| sudo service network-manager restart | netsh int ip reset | Restart the TCP/IP Stack
| hostnamectl | ipconfig | Check Current Hostname |
| sudo hostnamectl set-hostname **New_Hostname** | set-hostname (PowerShell) | Set a new Hostname |