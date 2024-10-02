{
	pkgs,
		...
}:
{
	home.packages = with pkgs; [
		just
		unzip
    ripgrep
    fd
	];

  programs.bash = {
    enable = true;
    historyControl = [
      "erasedups"
    ];
    profileExtra = ''
      [ "$(tty)" = "/dev/tty1" ] && Hyprland
    '';
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };
}
