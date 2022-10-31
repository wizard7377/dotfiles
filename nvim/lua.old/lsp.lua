local lc = require('lspconfig')

local attached = function()
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })

	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { buffer = 0 })

	vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { buffer = 0 })
	vim.keymap.set('n', '<leader>R', vim.lsp.buf.rename, { buffer = 0 })

	vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })

end

-- local capab= require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lc.clangd.setup {
	on_attach = attached,
	-- capababilits = capab
}
lc.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
