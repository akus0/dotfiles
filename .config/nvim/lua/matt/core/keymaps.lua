-- Navigation and Visual Mode
-- Set the leader key to space
vim.g.mapleader = " "
-- Use space as leader key and execute Ex commands
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move selected lines down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move selected lines up in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")
-- Scroll down and keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Scroll up and keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Move to the next search result and center the screen
vim.keymap.set("n", "n", "nzzzv")
-- Move to the previous search result and center the screen
vim.keymap.set("n", "N", "Nzzzv")


-- Clipboard Operations
-- Delete selected text in visual mode and paste it elsewhere
-- vim.keymap.set("x", "<leader>p", [["_dP]])
-- -- Yank to system clipboard in normal and visual modes
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- -- Yank to system clipboard in normal mode
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
-- -- Delete selected text in normal and visual modes
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- --paste from system clipboard
-- vim.keymap.set("n", "<leader>p", [["*p]])


-- Buffer Navigation //not working
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bb", ":e #<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>`", ":e #<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bl", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- Insert Mode and Miscellaneous
-- Exit insert mode with Ctrl-c 
vim.keymap.set("i", "<C-c>", "<Esc>")
-- Disable mapping for Q in normal mode
vim.keymap.set("n", "Q", "<nop>")



-- Terminal and LSP
-- Open tmux sessionizer in a new tmux window
--Insert Mode and Miscellaneous
-- Exit insert mode with Ctrl-c
--vim.keymap.set("i", "vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format code using LSP
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)



-- Quickfix and Location List
-- Move to the next quickfix entry and center the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- Move to the previous quickfix entry and center the screen
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Move to the next location list entry and center the screen
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- Move to the previous location list entry and center the screen
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Comments //not working
-- vim.keymap.set("n", "<C-_>", "gcc", { noremap = false })
-- vim.keymap.set("v", "<C-_>", "gcc", { noremap = false })

-- Search and Replace
-- Search and replace with confirmation
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])



-- File Operations
-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- Edit Packer config file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua")
-- Run CellularAutomaton make_it_rain command
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")



-- Miscellaneous
-- Source the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
