return {
	"HiPhish/rainbow-delimiters.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	lazy = false,
	init = function()
		-- This module contains a number of default definitions
		local rainbow_delimiters = require("rainbow-delimiters")

		vim.g.rainbow_delimiters = {
			strategy = {
				[""] = rainbow_delimiters.strategy["global"],
				vim = rainbow_delimiters.strategy["local"],
			},
			query = {
				[""] = "rainbow-delimiters",
				lua = "rainbow-blocks",
			},

			highlight = {
				"RainbowDelimiterRed",
				"RainbowDelimiterYellow",
				"RainbowDelimiterBlue",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
				"RainbowDelimiterViolet",
				"RainbowDelimiterCyan",
			},

			-- my colours = {
			-- 	"#eb6f92",
			-- 	"#f6c177",
			-- 	"#31748f",
			-- 	"#9ccfd8",
			-- 	"#c4a7e7",
			-- 	"#e0def4",
			-- 	"#908caa",
			-- },
		}
	end,

	vim.cmd([[
    highlight RainbowDelimiterRed  guifg=#eb6f92 ctermfg=White
    highlight RainbowDelimiterYellow guifg=#f6c177 ctermfg=White
    highlight RainbowDelimiterBlue guifg=#31748f ctermfg=White
    highlight RainbowDelimiterOrange guifg=#9ccfd8 ctermfg=White
    highlight RainbowDelimiterGreen guifg=#c4a7e7 ctermfg=White
    highlight RainbowDelimiterViolet guifg=#ebbcba ctermfg=White
    highlight RainbowDelimiterCyan guifg=#d7827e ctermfg=White
  ]]),
}
