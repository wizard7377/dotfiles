
-- global
local opt = vim.opt

opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4

opt.number = true
opt.relativenumber = true

opt.hlsearch = false
opt.incsearch = true

opt.splitbelow = true
opt.splitright = true

opt.laststatus = 3

opt.swapfile = false 
-- window specific


-- buffer specific
local bo = vim.bo 

-- bo.nvim_set_hl
