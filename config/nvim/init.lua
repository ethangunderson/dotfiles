local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

g.completeopt = "menu,menuone,noinsert"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{import = "ethan.plugins"}, {import = "ethan.plugins.lsp"}}, {
	install = {
    colorscheme = { "gruvbox" },
		checker = {
			enabled = true,
		},
  },
  change_detection = {
    notify = false,
  },
})

require("keybindings")
require("settings")

vim.o.background = "dark" -- or "light" for light mode

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ timeout = 500 })
	end,
})
