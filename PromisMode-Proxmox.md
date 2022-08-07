# Setup Promisc Mode on a ProxMox Network Card

[Instructions came from setting up Security Onion](https://github.com/Security-Onion-Solutions/securityonion/discussions/8245)

1. Run `ip link set enp7s0 promisc on` where enp7s0 is the physical nic card
2. Run `brctl setageing vmbr0 0` where vmbr0 is the name of your bridge
3. Run `brctl setfd vmbr0 0`

