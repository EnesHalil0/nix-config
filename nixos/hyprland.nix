{pkgs, ...}: {
  programs.hyprland.enable = true;
  # Optional, hint electron apps to use wayland:
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.hypridle.enable = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  services.blueman.enable = true;

  programs.hyprlock.enable = true;

  services.upower.enable = true;

  # services.tlp = {
  #   enable = true;
  #   settings = {
  #     CPU_SCALING_GOVERNOR_ON_AC = "performance";
  #     CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  #
  #     CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
  #     CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
  #
  #     CPU_MIN_PERF_ON_AC = 0;
  #     CPU_MAX_PERF_ON_AC = 100;
  #     CPU_MIN_PERF_ON_BAT = 0;
  #     CPU_MAX_PERF_ON_BAT = 20;
  #
  #     #Optional helps save long term battery health
  #     # START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
  #     # STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
  #   };
  # };

  environment.systemPackages = with pkgs; [
    grimblast
    wofi
    hyprpaper
    wmenu
    wofi
    hyprpicker
    kitty
    waybar
    wl-clipboard
    font-awesome
    font-awesome_4
    font-awesome_5
    noto-fonts-color-emoji
    cliphist
    playerctl
    networkmanagerapplet
    blueman
    bluez
    wlsunset
    mako
  ];
}
