local gitsigns = require("gitsigns")
local lualine = require("lualine")
local onedark = require("onedark")
local surround = require("nvim-surround")
local autopairs = require("nvim-autopairs")

local function init()
	gitsigns.setup({})

	onedark.setup({
		style = "dark",
		transparent = true,
		term_colors = true,
	})

	lualine.setup({
		options = {
			extensions = { "fzf", "quickfix" },
			theme = "onedark",
		},
	})

	surround.setup({})

	autopairs.setup({})

	vim.cmd([[colorscheme onedark]])
end

init()
