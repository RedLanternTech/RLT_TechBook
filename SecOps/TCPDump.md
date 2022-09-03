# TCP Dump

Notes come from the course on academy.hackthebox.com

## Switch Commands
| Switch Command | Result                                                                      |
|----------------|-----------------------------------------------------------------------------|
| D              | Will Display any interfaces available to capture from                       |
| i              | Selects an interface to capture from. example -i eth0                       |
| n              | Do not resolve hostnames                                                    |
| nn             | Do not resolve hostnames or well-known ports                                |
| e              | Will grab the ethernet header along with upper-layer data                   |
| X              | Shows contents of packets in hex and ASCII                                  |
| XX             | Same as X, but will also specify ethernet headers                           |
| v, vv,vvv      | Like in Nmap, increases verbosity                                           |
| c              | Grab a specific number of packets, then quit                                |
| S              | change relative sequence numbers in the capture display to absolute numbers |
| q              | Print less protocol info                                                    |
| r file.pcap    | read from a file                                                            |
| w file.pcap    | write into a file                                                           |
