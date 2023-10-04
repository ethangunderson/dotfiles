return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			-- One of "all", "maintained" (parsers with maintainers), or a list of languages
			ensure_installed = {
				"bash",
				"css",
				"dockerfile",
				"eex",
				"elixir",
				"erlang",
				"fish",
				"graphql",
				"hcl",
				"html",
				"javascript",
				"json",
				"lua",
				"make",
				"nix",
				"php",
				"python",
				"regex",
				"ruby",
				"typescript",
				"surface",
				"vim",
				"heex",
			},

			auto_install = true,

			-- Install languages synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- List of parsers to ignore installing
			ignore_install = { "" },

			indent = {
				true,
			},

			highlight = {
				-- `false` will disable the whole extension
				enable = true,

				-- list of language that will be disabled
				disable = { "" },

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},
			textobjects = {
				select = {
					enable = true,
					keymaps = {
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
						["ii"] = "@conditional.inner",
						["ai"] = "@conditional.outer",
						["il"] = "@loop.inner",
						["al"] = "@loop.outer",
						["at"] = "@comment.outer",
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>a"] = "@parameter.inner",
					},
					swap_previous = {
						["<leader>A"] = "@parameter.inner",
					},
				},
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<S-CR>",
					node_decremental = "<BS>",
				},
			},
		})
	end,
}
