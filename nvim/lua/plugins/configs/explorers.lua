local utils = require('core.utils')
local nt = utils.fn('neo-tree.command')

local M = {
	-- { 'nvim-telescope/telescope-file-browser.nvim', dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
	-- 	config = function() require('telescope').load_extension('file_browser') end,
	-- 	keys = {
	-- 		{ '<leader>e', function() require('telescope').extensions.file_browser.file_browser() end, desc = 'File Explorer' }
	-- 	}
	-- },
	{ 'nvim-neo-tree/neo-tree.nvim', event = 'BufEnter', cmd = 'Neotree', dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim' },
		init = function() vim.g.neo_tree_remove_legacy_commands = 1 end, opts = { sources = { 'filesystem', 'document_symbols' } },
		keys = {
			{ '<leader>e', nt('execute', { toggle = true, reveal = true }), desc = 'Explore Files' },
			{ '<leader>s', nt('execute', { toggle = true, reveal = true, source = 'document_symbols' }), desc = 'Explore Symbols' },
		},
	},
	-- { 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons', }, lazy = false, config = true, --[[ enabled = false  ]]},
}

return M
