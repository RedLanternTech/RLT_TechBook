# Setting Up Duplicati On Manjaro

1. Install from the AUR duplicati-latest `pamac install duplicati-latest`
2. I run the service under my account to back up my home directory and other shared files.  
3. Run `systemctl --user enable duplicati`
4. Run `systemctl --user start duplicati`
5. You can now access duplicati at `https://localhost:8200`