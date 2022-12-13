local wk = require("which-key")
wk.setup({})

wk.register({
  ["<leader>"] = {
    n = {"<cmd>NvimTreeToggle<CR>", "Toggle nvim tree"},
    w = {"<cmd>w<CR>", "Write file"},
    s = {
      p = {"<cmd>Telescope find_files<CR>", "Search in files"},
      f = {"<cmd>Telescope live_grep<CR>", "Find files"},
      g = {"<cmd>Telescope grep_string<CR>", "Grep String"}
    }
  }
})
