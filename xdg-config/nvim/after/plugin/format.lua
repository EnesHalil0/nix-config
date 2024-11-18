local conform = require 'conform'

conform.setup {
  formatters_by_ft = {
    lua = { "stylua" },
    
    nix = { "alejandra" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
    notify_on_error = true,
  },
}


local map = vim.keymap.set

map("n", "<leader>f", function ()
  require("conform").format({ async = true, lsp_fallback = true })
end)
