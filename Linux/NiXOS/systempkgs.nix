{ config, pkgs, ... }:

{  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Enable Flatpaks
  services.flatpak.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    vscodium
    git
    neofetch
    wget
    gnugrep
  ];
}

