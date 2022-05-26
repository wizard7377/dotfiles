local lc = require('lspconfig')

local attached = function()
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { buffer = 0 })
	vim.keymap.set('n', '<leader>R', vim.lsp.buf.rename, { buffer = 0 })

	vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })

	--vim.keymap.set('i', '<CTRL-N>', vim.lsp.buf.completion, { buffer = 0 })
end

lc.clangd.setup{
	on_attach = attached
}

-- require('rust-tools').setup({})
-- lc.rust_analyzer.setup{
-- 	on_attach = attached
-- }
