{ config, pkgs, lib, ... }:
{
  programs.hyprland.enable = true;
# Optional, hint electron apps to use wayland:
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.hypridle.enable = true;

  programs.hyprlock.enable = true;

	environment.systemPackages = with pkgs; [
    grimblast
    wofi
    hyprpaper
    wmenu
    wofi
    hyprpicker
    kitty
    waybar
    font-awesome
    noto-fonts-color-emoji
    cliphist
    playerctl
  ];
}
