vim.g.mapleader = ','

local o = vim.o

o.number = true
o.relativenumber = true

o.incsearch = true
o.hlsearch = false

o.cursorline = true
o.cursorlineopt = 'number'

o.mouse = 'nv'
o.mousemodel = 'extend'

-- o.termguicolors = true

o.ignorecase = true
o.smartcase = true

o.signcolumn = 'yes'

o.laststatus = 3
o.shortmess = o.shortmess .. 'I'

o.timeout = true
o.timeoutlen = 1500

-- Aliases 
vim.cmd.command('W', 'w')
vim.cmd.command('Wq', 'wq')
vim.cmd.command('WQ', 'wq')

-- Neovide
vim.g.neovide_transparency = 0.8
-- vim.g.neovide_scale_factor = 0.8
-- vim.g.neovide_fullscreen = true
-- o.guifont = 'SauceCodePro Nerd Font Mono'
o.guifont = 'JetBrainsMonoNL Nerd Font:h10'

-- Disable default providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
