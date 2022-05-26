local function nmap(key, mapped) 
	vim.api.nvim_set_keymap('n', '<leader>' .. key, mapped, { noremap = true } )
end

vim.g.mapleader = ','

nmap('u', '<C-R>')
