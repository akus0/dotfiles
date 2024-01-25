return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_enabled = true
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("n", "<leader>c", ":Copilot<CR>", { noremap = true, silent = true })
		-- Set up options
		-- vim.g.copilot_default_confirm = 'yes'  -- Uncomment to always confirm suggestions
		-- vim.g.copilot_default_reject = 'no'   -- Uncomment to never reject suggestions

		-- Additional options
		-- vim.g.copilot_autostart = 0  -- Uncomment to disable autostart
		-- vim.g.copilot_autoshow = 0   -- Uncomment to disable autoshow
		-- vim.g.copilot_autohide = 0   -- Uncomment to disable autohide
		-- vim.g.copilot_autoupdate = 0 -- Uncomment to disable autoupdate
	end,
}
