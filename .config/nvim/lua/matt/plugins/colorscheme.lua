return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 3000,
		config = function()
			i, vim.opt.laststatus = 2 -- Or 3 for global statusline
			vim.opt.statusline = " %f %m %= %l:%c ♥ "
			require("rose-pine").setup({
				variant = "main", -- Change "moon" to your desired variant
				dim_inactive_windows = false,
				extend_background_behind_borders = true,
				--  disable_float_background = true,
				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},
				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					warn = "#f7b777",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					headings = {
						h1 = "iris",
						h2 = "foam",
						h3 = "rose",
						h4 = "#315e4b",
						h5 = "pine",
						h6 = "foam",
					},
					-- Alternatively, set all headings at once.
					-- headings = "subtle",
				},

				highlight_groups = {
					--StatusLine = { fg = "love", bg = "love", blend = 10 },
					--StatusLineNC = { fg = "subtle", bg = "surface" },
					-- Float = { fg = "#D68C63" },
					-- Character = { fg = "#D68C63" },
					-- Variable = { fg = "#D68C63" },
					-- Constant = { fg = "#D68C63" },

					Comment = { italic = true },
					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
					String = { fg = "#fcb080" }, -- { fg = "#ffae70" }, -- { fg = "#c28686" },
					Number = { fg = "#eb6f92" },
					Operator = { fg = "#68998a" },
					Boolean = { fg = "#eb6f92" },
					Identifier = { fg = "#315e4b" },

					NormalFloat = { bg = "overlay" },
					FloatBorder = { bg = "surface" },
				},
				before_highlight = function(group, highlight, palette)
					-- if highlight.fg == palette.foam then
					-- 	highlight.fg = "#68998a"
					-- end
					if highlight.fg == palette.gold then
						highlight.fg = "#D68C99"
					end
				end,
			})
			vim.cmd([[colorscheme rose-pine]])
		end,
	},
}
