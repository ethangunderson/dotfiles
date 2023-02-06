require("plugins")
require("keybindings")
require("settings")

local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

g.completeopt = "menu,menuone,noinsert"

vim.o.background = "dark" -- or "light" for light mode
require("gruvbox").setup({
  bold = false,
  contrast = "hard",
  palette_overrides = {
    bright_green = "#abb025",
  },
})
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank({ timeout = 500 })
  end,
})
