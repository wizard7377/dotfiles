local M = {}

M.ensure_lazy = function()
	local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable', -- latest stable release
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
end

M.keymap_table = function(table, buf)
	for _, map in ipairs(table) do
		vim.keymap.set(map.mode or { 'n' }, map[1], map[2], { desc = map.desc, buffer = buf })
	end
end

M.fn = function(module)
	return function(name, ...) local args = select(1, ...) return function() require(module)[name](args) end end
end

M.surround = function (ldelim, str, rdelim)
	return ldelim .. str .. rdelim
end

return M
