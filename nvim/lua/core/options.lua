local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.timeoutlen = 300

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- UI
opt.number = true
opt.numberwidth = 4
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true -- required for tokyonight (and most themes) to render correctly
opt.scrolloff = 8 -- keep some context above/below the cursor
opt.wrap = true

-- Search
opt.ignorecase = true
opt.smartcase = true -- case-sensitive only when a capital letter is typed

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Editing
opt.mouse = "a"
opt.undofile = true -- persistent undo across sessions
opt.updatetime = 250 -- faster CursorHold/gitsigns/diagnostic updates (default 4000ms)

opt.clipboard = "unnamedplus"
