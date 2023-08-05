local utils = require('core.utils')
local tb = utils.fn('trouble')
local noice = utils.fn('noice')

local M = {
	{ 'nvim-tree/nvim-web-devicons' },
	{ 'kevinhwang91/nvim-bqf', ft = 'qf' },
	{ 'stevearc/dressing.nvim', opts = {}, event = 'VeryLazy' },
	{ 'stevearc/aerial.nvim', opts = {}},
	{ 'lukas-reineke/indent-blankline.nvim', event = { 'BufReadPost', 'BufNewFile' },
		opts = { show_first_indent_level = false, show_trailing_blankline_indent = false, show_current_context = true, show_end_of_line = true, }
	},
	{ 'folke/trouble.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' }, keys = {
		{ '<leader>xx', tb('toggle'), desc = 'Trouble Toggle' },
		{ '<leader>xl', tb('toggle', 'loclist' ), desc = 'Trouble Loclist' },
		{ '<leader>xq', tb('toggle', 'quickfix' ), desc = 'Trouble Quickfix ' },
		{ '<leader>xr', tb('toggle', 'lsp_references' ), desc = 'Trouble References [LSP]' },
		{ '<leader>xD', tb('toggle', 'lsp_definitions' ), desc = 'Trouble Definitions [LSP]' },
		{ '<leader>xt', tb('toggle', 'lsp_type_definitions' ), desc = 'Trouble Type Definitions [LSP]' },
		{ '<leader>xd', tb('toggle', 'document_diagnostics' ), desc = 'Trouble Document Diagnostics' },
		{ '<leader>xw', tb('toggle', 'workspace_diagnostics' ), desc = 'Trouble Workspace Diagnostics' },
	}},
	{ 'folke/noice.nvim', event = 'VeryLazy', dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
		keys = { { '<leader>n', noice('cmd', 'dismiss'), desc = 'Noice Dismiss' } },
		opts = {
			lsp = { override = {
				['cmp.entry.get_documentation'] = true,
				['vim.lsp.util.stylize_markdown'] = true,
				['vim.lsp.util.convert_input_to_markdown_lines'] = true,
			}, },
			presets = { lsp_doc_border = true, },

		}
	},
}

return M
