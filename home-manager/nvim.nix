{ pkgs, ... }:
{
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		viAlias = true;
		vimAlias = true;
		vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      onedark-nvim
      oil-nvim
      nvim-web-devicons
      nvim-treesitter.withAllGrammars
      telescope-nvim
      telescope-fzf-native-nvim
      telescope-ui-select-nvim
      vim-tmux-navigator
      todo-comments-nvim
    ];
	};

	xdg.configFile."nvim".source = ../xdg-config/nvim;
}
