return {
	"stevearc/conform.nvim",
	-- "ethangunderson/conform.nvim",
	-- branch = "mix",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				yaml = { "yamlfmt" },
				elixir = { "mix" },
			},
			format_on_save = {
				timeout_ms = 800,
				lsp_fallback = true,
			},
		})
	end,
}
