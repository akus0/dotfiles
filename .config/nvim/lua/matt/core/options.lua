local opt = vim.opt -- for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

--keep block cursor
opt.guicursor = ""

-- Enable line highlighting for the current line
opt.cursorline = true

-- Highlight the search pattern as you type
opt.incsearch = true

-- Enable persistent undo across sessions
opt.undofile = true

-- Display matching brackets/parentheses
--opt.showmatch = true

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--Scroll Settings
opt.scrolloff = 15

-- Set the colorcolumn to highlight column 80 with the custom highlight group
-- opt.colorcolumn = "80"

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "auto"
--opt.colorcolumn = "80"

--backspace
opt.backspace = "indent,eol,start"

--undo
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undofile = true

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.updatetime = 50
