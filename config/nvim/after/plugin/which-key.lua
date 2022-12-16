local wk = require("which-key")
wk.setup({})

wk.register({
  ["<leader>"] = {
    n = {"<cmd>NvimTreeToggle<CR>", "Toggle nvim tree"},
    w = {"<cmd>w<CR>", "Write file"},
    s = {
      p = {"<cmd>Telescope find_files hidden=true<CR>", "Search in files"},
      f = {"<cmd>Telescope live_grep hidden=true<CR>", "Find files"},
      g = {"<cmd>Telescope grep_string hidden=true<CR>", "Grep String"}
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
