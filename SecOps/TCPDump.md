# TCP Dump

Notes come from the course on academy.hackthebox.com

## Switch Commands
| Switch Command  | Result                                                                        |
|-----------------|-------------------------------------------------------------------------------|
| D               | Will Display any interfaces available to capture from                         |
| i (lowercase i) | Selects an interface to capture from. example -i eth0                         |
| n               | Do not resolve hostnames                                                      |
| nn              | Do not resolve hostnames or well-known ports                                  |
| e               | Will grab the ethernet header along with upper-layer data                     |
| X               | Shows contents of packets in hex and ASCII                                    |
| XX              | Same as X, but will also specify ethernet headers                             |
| v, vv,vvv       | Like in Nmap, increases verbosity                                             |
| c               | Grab a specific number of packets, then quit                                  |
| S               | change relative sequence numbers in the capture display to absolute numbers   |
| q               | Print less protocol info                                                      |
| r file.pcap     | read from a file                                                              |
| w file.pcap     | write into a file                                                             |
| A               | Will only show ASCII test after the packet line instead of both ASCII and Hex |
| l               | will tell tcpdumpt to output packs in a different mode                        |
| l               | will line buffer instead of pooling, great for grep                           |
|                 |                                                                               |

# Filters

host [ip]

tcpdump -i eth0 host 192.168.1.1

Source/Destination [host|net|port] [IP|Network Range|Port]

tcpdump -i eth0 src host 192.168.1.1 # show everything from 192.168.1.1

tcpdump -i eth0 tcp src port 80 # showing everying from port 80

tcpdump -i eth0 dst net 192.168.0.0/24 # this will show everything going to 192.168.0.0 network

tcpdump -i eth0 dst net not 192.168.0.0/24 # helps filter out internal traffic so you can see what is leaving your network.  Depends on how you have your switch setup. 

Protocol Filter [tcp/udp/icmp]

tcpdump -i eth0 udp # shows all the udp traffic

proto [protocol number] 

portrange [0-65535]

less/greater [size in bytes]

can use and/or/not to combine filters
tcpdump -i eth0 host 192.168.0.1 and port 23

Note that applying filters pre-capture, it will drop any traffic not matching the filter
