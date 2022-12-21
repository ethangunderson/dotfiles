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
