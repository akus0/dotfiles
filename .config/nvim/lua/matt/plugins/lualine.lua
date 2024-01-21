return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			blue = "#9bb2d3", -- pastel blue
			green = "#b4d7c9", -- pastel green
			violet = "#d3c3e0", -- pastel violet
			yellow = "#fadcaf", -- pastel yellow
			red = "#f1a2a1", -- pastel red
			fg = "#d4d2ed", -- pastel text
			bg = "#3e3b55", -- pastel overlay
			inactive_bg = "#a8a4c6", -- muted pastel
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.fg, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.fg },
				c = { bg = colors.inactive_bg, fg = colors.fg },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				globalstatus = true,
				disabled_filetypes = {
					-- 'Lazy',
					-- 'NvimTree',
					"alpha",
				},
				theme = my_lualine_theme,
				section_separators = { "|", "|" },
				component_separators = { "", "" },
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1, -- Display full path of the file
					},
				},

				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#f6c177" }, -- gold
					},
					--{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
			tabline = {
				-- lualine_a = {},
				-- lualine_b = {'branch'},
				-- lualine_c = {'filename'},
				-- lualine_x = {},
				-- lualine_y = {},
				-- lualine_z = {}
			},
			winbar = {
				-- lualine_a = {},
				-- lualine_b = {},
				-- lualine_c = {'filename'},
				-- lualine_x = {},
				-- lualine_y = {},
				-- lualine_z = {}
			},
			inactive_winbar = {
				-- lualine_a = {},
				-- lualine_b = {},
				-- lualine_c = {'filename'},
				-- lualine_x = {},
				-- lualine_y = {},
				-- lualine_z = {}
			},
			extensions = {},
		})
	end,
}
