return {
	"ethangunderson/conform.nvim",
	branch = "mix",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				yaml = { "yamlfmt" },
				elixir = { "mix" },
			},
			format_on_save = {
				quiet = true,
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
