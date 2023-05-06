vim.g.mapleader = ','

local o = vim.o

o.number = true
o.relativenumber = true

o.incsearch = true
o.hlsearch = false

o.cursorline = true
o.cursorlineopt = 'number'

o.mouse = ''

o.laststatus = 3
o.shortmess = o.shortmess .. 'I'

-- Disable default providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

