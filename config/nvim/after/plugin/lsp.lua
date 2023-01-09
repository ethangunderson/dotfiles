require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

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
