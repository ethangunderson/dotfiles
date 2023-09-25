return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local actions = require('telescope.actions')
    local sorters = require('telescope.sorters')
    local themes = require('telescope.themes')

    require('telescope').setup {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git/.*",
          ".elixir_ls"
          },
        prompt_prefix = ' |>',
        winblend = 0,
        layout_strategy = 'horizontal',
        layout_config = {
          preview_cutoff = 120,
          horizontal = {
            width_padding = 0.1,
            height_padding = 0.1,
            preview_width = 0.6,
          },
          vertical = {
            width_padding = 0.05,
            height_padding = 1,
            preview_height = 0.5,
          }
        },
        mappings = {
          i = {
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            ["<C-p>"] = actions.close
          }
        },
        selection_strategy = "reset",
        sorting_strategy = "descending",
        scroll_strategy = "cycle",
        color_devicons = true,
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},

        file_sorter = require('telescope.sorters').get_fzy_sorter, 

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
      },

      pickers = {
        git_status = {
          theme = 'ivy'
        },
        find_files = {
          theme = "ivy"
        },
        live_grep = {
          theme = "ivy"
        },
        grep_string = {
          theme = "ivy"
        },
        oldfiles = {
          theme = "ivy"
        },
        diagnostics = {
          theme = "ivy"
        },
        lsp_document_symbols = {
          theme = "ivy"
        }
      },
      extensions = {
        fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
        },

        fzf_writer = {
          use_highlighter = false,
          minimum_grep_characters = 4,
        },
      }
    }

    pcall(require('telescope').load_extension, 'fzy_native')
    pcall(require('telescope').load_extension, 'gh')
    pcall(require('telescope').load_extension, 'git_worktree')

    require('telescope').load_extension 'fzf'
  end
}
