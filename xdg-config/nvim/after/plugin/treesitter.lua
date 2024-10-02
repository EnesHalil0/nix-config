local configs = require("nvim-treesitter.configs")

require("nvim-treesitter").setup {
  configs.setup({
    ensure_installed = {},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
}
