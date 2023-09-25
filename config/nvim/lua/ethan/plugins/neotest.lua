return { 
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "jfpedroza/neotest-elixir"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-elixir"),
        -- require("neotest-vim-test")({
          -- ignore_file_types = { "elixir" },
        -- }),
      },
    })

    local wk = require("which-key")
    wk.register({
      ["<leader>"] = {
        t = {
          name = "Tests",
          t = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
          f = { { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run File" } },
          l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Run Last" },
          -- s = { "<cmd> TestSuite<CR>", "Run the test suite" },
          s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary" },
          o = { "<cmd>lua require('neotest').output.open({ enter = true })<CR>", "Test Output"}
        }
      },
    })
  end
}
