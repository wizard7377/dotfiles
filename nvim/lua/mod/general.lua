vim.g.mapleader = ','
vim.keymap.set('n', ';f', [[:Telescope find_files<CR>]], {})
vim.keymap.set('n', ';t', [[:Telescope <CR>]], {})

local opt = vim.opt

opt.expandtab = false
opt.softtabstop = 4
opt.shiftwidth = 4

opt.number = true
opt.relativenumber = true

opt.hlsearch = false
opt.incsearch = true

opt.splitbelow = true
opt.splitright = true

opt.laststatus = 3

opt.termguicolors = true

opt.swapfile = false
opt.completeopt = { 'menu', 'menuone', 'noinsert' }

