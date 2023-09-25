return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("gruvbox").setup({
      bold = false,
      contrast = "hard",
      palette_overrides = {
        bright_green = "#abb025",
     }
    })
    -- load the colorscheme here
    vim.cmd([[colorscheme gruvbox]])
  end,
}
