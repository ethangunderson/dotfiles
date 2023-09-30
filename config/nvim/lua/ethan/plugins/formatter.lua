return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup {
      logging = true,
      log_level = vim.log.levels.ERROR,
      filetype = {
        elixir = {
          require("formatter.filetypes.elixir").mixformat,
        },
        ["*"] = {
          require("formatter.filetypes.any").remove_trailing_whitespace
        }
      }
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        vim.cmd("FormatWrite")
     end,
    })
  end
}
