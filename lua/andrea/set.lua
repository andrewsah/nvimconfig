local opt = vim.opt

opt.clipboard = 'unnamedplus'

-- mouse support
opt.mouse = 'a'
opt.mousemodel = 'extend'

-- line number and relative
opt.number = true
opt.relativenumber = true

-- Keep x lines after the cursor
opt.scrolloff = 6

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.writebackup = false

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true

opt.cursorline = true

opt.showmode = false

opt.completeopt = { 'menu', 'menuone', 'noselect' }

opt.splitright = true
opt.splitbelow = true

-- map leader to <Space>
vim.g.mapleader = ' '
