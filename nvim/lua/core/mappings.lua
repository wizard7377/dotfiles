local M = { }
local tb = require('core.utils').fn('telescope.builtin')

M.lsp = {
	{ 'K', vim.lsp.buf.hover, desc = 'Show documentation [LSP]' },
	{ 'gd', vim.lsp.buf.definition, desc = 'Goto definition [LSP]' },
	{ 'gD', vim.lsp.buf.declaration, desc = 'Goto declaration [LSP]' },
	{ '<leader>lf', vim.lsp.buf.format, desc = 'Format [LSP]', mode = { 'n', 'v', 's' }},
	{ '<leader>lr', vim.lsp.buf.rename, desc = 'Rename [LSP]' },
	{ '<leader>lx', vim.lsp.buf.references, desc = 'References [LSP]' },
	{ '<leader>la', vim.lsp.buf.code_action, desc = 'Code Action [LSP]', mode = { 'n', 'v', 's' } },
	{ '<leader>lc', vim.lsp.codelens.run, desc = 'Code Lens [LSP]', mode = { 'n', 'v', 's' } },
	{ '<leader>li', vim.lsp.buf.implementation, desc = 'Implementations [LSP]' },

	{ '<leader>[', vim.diagnostic.goto_prev, desc = 'Goto Previous Diagnostic [LSP]' },
	{ '<leader>]', vim.diagnostic.goto_next, desc = 'Goto Next Diagnostic [LSP]' },
	{ '<leader>d', vim.diagnostic.open_float, desc = 'Show Current Diagnostic [LSP]' },

	{ '<leader>ls', tb('lsp_document_symbols'), desc = 'Find Symbol in Document [LSP]' },
	{ '<leader>lS', tb('lsp_dynamic_workspace_symbols'), desc = 'Find Symbol in Workspace [LSP]' },
}

return M
