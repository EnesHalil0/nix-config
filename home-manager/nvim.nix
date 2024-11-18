{pkgs, ...}: {
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
      nvim-surround
      gitsigns-nvim
      lualine-nvim
      nvim-autopairs
      harpoon2
      plenary-nvim

      # LSP and Completion
      nvim-lspconfig
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      cmp-cmdline
      nvim-cmp
      cmp-under-comparator
      cmp_luasnip
      luasnip
      fidget-nvim
      neodev-nvim

      # Format
      conform-nvim
    ];
  };

  home.packages = with pkgs; [
    nil
    lua-language-server
    stylua
    alejandra
  ];

  xdg.configFile."nvim".source = ../xdg-config/nvim;
}
