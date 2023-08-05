local tb = require('core.utils').fn('trouble')

local M = {
	{ 'lewis6991/gitsigns.nvim', event = { 'BufReadPre', 'BufNewFile' }, config = true },
	{ 'folke/trouble.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' }, keys = {
		{ '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
		{ '<leader>xl', tb('toggle', 'loclist' ), desc = 'Trouble Loclist' },
		{ '<leader>xq', tb('toggle', 'quickfix' ), desc = 'Trouble Quickfix ' },
		{ '<leader>xr', tb('toggle', 'lsp_references' ), desc = 'Trouble References [LSP]' },
	}},
}

return M
