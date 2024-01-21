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
					italic = false,
					transparency = false,
				},

				-- transparency_highlights = {
				-- NormalFloat = { bg = "#2E3440" },
				--},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					warn = "gold",

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
						h4 = "gold",
						h5 = "pine",
						h6 = "foam",
					},
					-- Alternatively, set all headings at once.
					-- headings = "subtle",
				},

				highlight_groups = {
					--StatusLine = { fg = "love", bg = "love", blend = 10 },
					--StatusLineNC = { fg = "subtle", bg = "surface" },

					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },

					NormalFloat = { bg = "overlay" },
					FloatBorder = { bg = "surface" },
				},
			})

			before_highlight =
				function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end, vim.cmd([[colorscheme rose-pine]])
		end,
	},
}