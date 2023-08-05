local M = {
	{ 'nvim-neorg/neorg', cmd = 'Neorg', build = ':Neorg sync-parsers', ft = 'norg', dependencies = { { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' } },
		opts = { load = { ['core.defaults'] = {}, ['core.concealer'] = {}, ['core.completion'] = { config = { engine = 'nvim-cmp' } } }, },
	}
}

return M
