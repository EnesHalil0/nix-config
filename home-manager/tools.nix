{pkgs, ...}: {
  home.packages = with pkgs; [
    unzip
    ripgrep
    fd
    pcmanfm
    imv
    brightnessctl
    rclone
    anki-bin
    htop
    btop
    exiftool
  ];

  programs.bash = {
    enable = true;
    historyControl = [
      "erasedups"
    ];
    profileExtra = ''
      export PATH=$PATH:$HOME/nix-config/bin
      # [ "$(tty)" = "/dev/tty1" ] && Hyprland
    '';
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.zathura = {
    enable = true;
    extraConfig = ''
      set selection-clipboard clipboard
      set sandbox none
    '';
  };
}
