local api = vim.api
local augroup = api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        -- Elixir
        null_ls.builtins.diagnostics.credo,
        null_ls.builtins.formatting.mix,
        -- Git
        null_ls.builtins.code_actions.gitsigns,
        -- Lua
        null_ls.builtins.formatting.stylua,
    },

    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                    })
                end,
            })
        end
    end,
})
