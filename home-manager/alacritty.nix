{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      window.dynamic_padding = true;
      env.TERM = "xterm-256color";
      font = let
        my_font = "UbuntuMono Nerd Font";
      in {
        size = 15;
        normal = {
          family = my_font;
          style = "Regular";
        };
        bold = {
          family = my_font;
          style = "Bold";
        };
        italic = {
          family = my_font;
          style = "Italic";
        };
        bold_italic = {
          family = my_font;
          style = "Bold Italic";
        };
      };
    };
  };

  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override {fonts = ["JetBrainsMono" "Hack" "Iosevka" "UbuntuMono"];})
  ];
}
