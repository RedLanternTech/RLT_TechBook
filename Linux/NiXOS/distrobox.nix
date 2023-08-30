{ config, pkgs, ... }:

{
    virtualisation = {
    podman = {
      enable = true;

      # Create a `docker` alias for podman, to use it as a drop-in replacement
      dockerCompat = true;

      # For Nixos version > 22.11
      defaultNetwork.settings = {
      dns_enabled = true;
      };
    };
   };
 environment.systemPackages = with pkgs; [
  distrobox
 ];
}