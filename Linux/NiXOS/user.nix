{ config, pkgs, ... }:

{
   # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.zac = {
    isNormalUser = true;
    description = "Zac";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      kate
      freetube
      nextcloud-client
      vlc
      libsForQt5.neochat
      onlyoffice-bin
    ];
  };
}