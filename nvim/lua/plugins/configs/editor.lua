local tb = function(name, args)
	return function() require('trouble')[name](opts) end
end

local M = {
	{ 'lewis6991/gitsigns.nvim', event = { 'BufReadPre', 'BufNewFile' }, config = true },
	{ 'folke/trouble.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' }, keys = {
		{ '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
		{ '<leader>xq', tb('toggle', 'quickfix' ), desc = 'Trouble Toggle' },
		-- { '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
		-- { '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
		-- { '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
	}},
}

return M
