require('lualine').setup({
  extensions = {'nvim-tree', 'fugitive'},
  options = {
    component_separators = "",
    section_separators = "",
    icons_enabled = true,
    theme = "gruvbox",
  },
  sections = {
    lualine_a = {
      {'mode', padding = { left = 1, right = 1}}
    },
    lualine_b = {
      {'branch', padding = {left = 1, right = 1}},
      {'diff',
        padding = { left = 1, right = 1 }
      },
      {'diagnostics',
        sources = { "nvim_diagnostic" },
        padding = { left = 1, right = 1 }
      }
    },
    lualine_c = {'filename'},
    lualine_x = {{'filetype', padding = { left = 1, right = 2 }}},
    lualine_y = {},
    lualine_z = {}
  }
})
