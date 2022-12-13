require('plugins')
require('keybindings')
require('settings')

local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox-flat]])
vim.g.gruvbox_flat_style = "hard"
-- vim.api.nvim_set_hl(0, "Normal", {bg="#252525"})
-- vim.api.nvim_set_hl(0, "EndOfBuffer", {bg="#252525"})
-- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", {bg="#252525"})
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg="#252525"})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank{timeout=500}
  end
})
