vim.g.mapleader = ' '

-- Turn hybrid line numbers on
vim.opt.relativenumber = true

-- Highlight cursor line underneath the cursor horizontally.
vim.opt.cursorline = true

-- Set shift width to 4 spaces.
vim.opt.shiftwidth = 4

-- Set tab width to 4 columns.
vim.opt.tabstop = 4

-- Use space characters instead of tabs.
vim.opt.expandtab = true

-- While searching though a file incrementally highlight matching characters as you type.
vim.opt.incsearch = true

-- Use highlighting when doing a search.
vim.opt.hlsearch = true

-- Default colorcolumn to 80 chars.
vim.opt.colorcolumn = '80'

-- Disable neovim from creating swap files
vim.opt.swapfile = false
