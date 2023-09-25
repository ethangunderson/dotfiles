return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.align").setup({})
    require("mini.comment").setup({})
    require("mini.pairs").setup({})
    require("mini.surround").setup({})
  end
}
