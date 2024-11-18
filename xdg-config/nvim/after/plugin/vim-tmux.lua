-- Disable default mappings provided by vim-tmux-navigator
vim.g.tmux_navigator_no_mappings = 1

-- Define custom key mappings using Alt key
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<m-h>', ':TmuxNavigateLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<m-j>', ':TmuxNavigateDown<CR>', opts)
vim.api.nvim_set_keymap('n', '<m-k>', ':TmuxNavigateUp<CR>', opts)
vim.api.nvim_set_keymap('n', '<m-l>', ':TmuxNavigateRight<CR>', opts)
vim.api.nvim_set_keymap('n', '<m-\\>', ':TmuxNavigatePrevious<CR>', opts)
