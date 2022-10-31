local configs = require('nvim-treesitter.configs')

vim.schedule(function() configs.setup{
	highlight = { enable = true }
} end)

