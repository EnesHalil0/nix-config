vim.g.tmux_navigator_no_mappings = 1
vim.api.nvim_set_keymap('n', '{Left-Mapping}', ':<M-U>TmuxNavigateLeft<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{Down-Mapping}', ':<M-U>TmuxNavigateDown<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{Up-Mapping}', ':<M-U>TmuxNavigateUp<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{Right-Mapping}', ':<M-U>TmuxNavigateRight<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{Previous-Mapping}', ':<M-U>TmuxNavigatePrevious<cr>', { noremap = true, silent = true })
