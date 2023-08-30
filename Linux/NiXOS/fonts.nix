# This is my fonts file to get Korean and other fonts working in NixOS.  It also resolves an issue with flatpaks getting
# these fonts as well
{ config, pkgs, ... }:

{
    # Setup for Korean, Japaneese, and Chinese
  fonts.fonts = with pkgs; [
  noto-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  baekmuk-ttf
  nanum
  ];

  i18n.inputMethod = {
  	enabled = "fcitx5";
	fcitx5.addons = with pkgs; [
		fcitx5-hangul
		fcitx5-mozc
		fcitx5-gtk
	];
	};
  system.fsPackages = [ pkgs.bindfs ];
  fileSystems = let
    mkRoSymBind = path: {
      device = path;
      fsType = "fuse.bindfs";
      options = [ "ro" "resolve-symlinks" "x-gvfs-hide" ];
    };
    aggregatedFonts = pkgs.buildEnv {
      name = "system-fonts";
      paths = config.fonts.fonts;
      pathsToLink = [ "/share/fonts" ];
    };
  in {
    # Create an FHS mount to support flatpak host icons/fonts
    "/usr/share/icons" = mkRoSymBind (config.system.path + "/share/icons");
    "/usr/share/fonts" = mkRoSymBind (aggregatedFonts + "/share/fonts");
  };
}