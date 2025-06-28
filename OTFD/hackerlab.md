# Setup Lab to use with Metasploit-The Penetration Tester's Guide from No Starch Press
[Link to the Book](https://nostarch.com/metasploit-2nd-edition)

## General Notes about the Hardware. 
- Used a spare machine that had the system requirements
    - 500gb hd
    - 16gb of ram
    - i7 Seventh Generation
- Install the latest version of Linux Mint
    - lightweight
    - Ubuntu/Debian based
- Installed Virtual Box
    - Just used the one in the ubuntu repo
    - Add your user to the vboxusers group `sudo usermod -a -G vboxusers $USER`
    - Create a folder under /etc named vbox
    - Create a file in it named networks.conf
    - In networks.conf, paste the following

```
* 192.168.56.0/21 172.28.128.0/24
```

- Install Vagrant
    - Follow the instructions off the web site
    - Once done, run `vagrant plugin install vagrant-reload`
- Install ansible `sudo apt install ansible`
- Setup SSH
- Setup VNC following the guide for kali [here](https://www.kali.org/docs/general-use/novnc-kali-in-browser/)
- Use TMux to manage the sessions and have multiple panes going. 

### Metasploitable 3

- git clone the Metasploitable3 repo into your home directory
- From https://releases.hashicorp.com/packer, download the packer_1.6.6_linux_amb64.zip version of packer and save it in metasploitable3/packer folder
- In the command line, enter `export PATH=$PATH:~/metasploitable3/packer/`
    - Note that any point if you close your terminal, you will have to do that again
- Run build.sh windows2008 and wait a long time
- head back to the root of the Repo downloaded and make sure you are in the same directory as the Vagrantfile
- Modify the line in the vagrant file that starts with win2k8.vm.network. you want to take out the section with DHCP and change it to `ip: '172.28.128.4'` this will allow the Windows box to create a mapped drive to the Ubuntu box.
- Run `vagrant up` to start both virtual machines
- On the Windows VM
	- Add .Net 3.5.1 and install SQL Server Express 2012 following most of the instructions from the metasploit second edition book.  I did enable name pipes and tcp but ignored thier settings in the SQL Configuration and kept the IP's to all.  Started SQL Browser and couldn't get the agent started
- I had to kill the firewall as the firewall went into a guest network mode

### GOAD
- Goad's instructions are good but one of the vagrant plugin's, vagrant-vbguest will break Metasploitable 3.  I installed it, setup GOAD, then just removed it.
- With the limited ram, I kept it at GOAD-Light.  though I may take it to the full on one if I get the ram in this box.  DDR4 isn't expensive. 

# Some Post Items

- it may not have created a dhcp server in VirtualBox, make sure to go add it if you plan on throwing Kali into this host only Vnet
