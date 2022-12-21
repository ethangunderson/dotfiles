local wk = require("which-key")
wk.setup({
  window = {
    border = "double"
  }
})

wk.register({
  ["<leader>"] = {
    ["/"] = {
    function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        previewer = false,
        theme = "ivy"
      })
    end, "Fuzzy search buffer"},
    n = {"<cmd>NvimTreeToggle<CR>", "Toggle nvim tree"},
    w = {"<cmd>w<CR>", "Write file"},
    s = {
      f = {"<cmd>Telescope find_files hidden=true<CR>", "Search files"},
      g = {"<cmd>Telescope live_grep hidden=true<CR>", "Grep files"},
      w = {"<cmd>Telescope grep_string hidden=true<CR>", "Grep string"},
      r = {"<cmd>Telescope oldfiles hidden=true<CR>", "Find recent files"},
      d = {"<cmd>Telescope diagnostics hidden=true<CR>", "Search diagnostics"},
      s = {"<cmd>Telescope lsp_document_symbols hidden=true<CR>", "Search document symbols"},
    },
    g = {
      s = {"<cmd>Telescope git_status<CR>", "List current changes"},
      c = {"<cmd>Telescope git_commits<CR>", "List commits"}
    },
    t = {
      t = {"<cmd> TestNearest<CR>", "Run nearest test"},
      f = {"<cmd> TestFile<CR>", "Run test file"},
      l = {"<cmd> TestLast<CR>", "Run the last test"},
      s = {"<cmd> TestSuite<CR>", "Run the test suite"}
    },
    x = {
      x = {"<cmd> TroubleToggle<CR>", "Toggle Trouble"},
      q = {"<cmd> TroubleToggle quickfix<CR>", "Toggle Trouble to quickfix"},
      n = { function() require('trouble').next({skip_groups = true, jump = true}) end, "Jump to next trouble"}
    }
  }
})
