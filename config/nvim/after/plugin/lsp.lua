require("mason").setup()
require("mason-lspconfig").setup()
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'elixirls',
  'html',
  'sumneko_lua',
  'tailwindcss',
})

lsp.setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
    underline = true,
    signs = true,
    virtual_text = true,
    float = {
      show_header = true,
      source = 'always',
      border = 'rounded',
      focusable = false,
    },
  }
)
