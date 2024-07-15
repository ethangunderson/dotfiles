return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>g", "Git", mode = "v" },
			{ "<leader>go", "<cmd>'<,'>OpenGithubFile<CR>", desc = "Open selection on github", mode = "v" },
			{ "<leader>/", "Fuzzy search buffer" },
			{ "<leader>n", "<cmd>NvimTreeToggle<CR>", desc = "Toggle nvim tree" },
			{ "<leader>w", "<cmd>w<CR>", desc = "Write file" },
			{ "<leader>sf", "<cmd>Telescope find_files hidden=true<CR>", desc = "Find files" },
			{ "<leader>sg", "<cmd>Telescope live_grep hidden=true<CR>", desc = "Search in files" },
			{ "<leader>sw", "<cmd>Telescope grep_string hidden=true<CR>", desc = "Search word" },
			{ "<leader>sr", "<cmd>Telescope oldfiles hidden=true<CR>", desc = "Recent files" },
			{ "<leader>sd", "<cmd>Telescope diagnostics hidden=true<CR>", desc = "Diagnostics" },
			{ "<leader>ss", "<cmd>Telescope lsp_document_symbols hidden=true<CR>", desc = "Document symbols" },
			{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Git status" },
			{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Git commits" },
			{ "<leader>go", "<cmd>OpenGithubFile<CR>", desc = "Open on github" },
			{ "<leader>tt", "<cmd> TestNearest<CR>", desc = "Test nearest" },
			{ "<leader>tf", "<cmd> TestFile<CR>", desc = "Test file" },
			{ "<leader>tl", "<cmd> TestLast<CR>", desc = "Test last" },
			{ "<leader>ts", "<cmd> TestSuite<CR>", desc = "Test suite" },
		})
	end,
}
