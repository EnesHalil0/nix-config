{
	inputs,
		lib,
		config,
		pkgs,
		...
}:
{
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
		};
	};

	gtk = {
		enable = true;

		theme = {
			name = "Materia-dark";
			package = pkgs.materia-theme;
		};

    font = {
      name = "Ubuntu";
      package = pkgs.ubuntu_font_family;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
	};

	qt = {
		enable = true;
		platformTheme.name = "adwaita";
		style.name = "adwaita-dark";
	};
}
