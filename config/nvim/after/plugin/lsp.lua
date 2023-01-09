require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

local wk = require("which-key")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_attach = function(_, bufnr)
  wk.register({
    g = {
      d = { vim.lsp.buf.definition, "Go to definition" },
      D = { vim.lsp.buf.declaration, "Go to declaration" },
      i = { vim.lsp.buf.implementation, "Go to Implementation" },
      l = { vim.diagnostic.open_float, "Open Diagnostic Float" },
      r = { vim.lsp.buf.references, "Open symbol references" },
    },
    K = { vim.lsp.buf.hover, "LSP Hover" },
    ["<C-k>"] = { vim.lsp.buf.signature_help, "Signature Help" },
    ["[d"] = { vim.diagnostic.goto_prev, "Go to Next Diagnostic" },
    ["]d"] = { vim.diagnostic.goto_next, "Go to Previous Diagnostic" },
    ["<leader>"] = {
      ca = { vim.lsp.buf.code_action, "Code Action" },
      rn = { vim.lsp.buf.rename, "Rename Symbol" },
      lf = { "<cmd>Telescope lsp_document_symbols symbols=function<CR>", "LSP document functions" },
      lr = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename via LSP" },
      si = { "<cmd>Telescope lsp_document_symbols<CR>", "LSP document symbols" },
    },
  }, { buffer = bufnr })
end

require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  update_in_insert = true,
  underline = true,
  signs = true,
  virtual_text = true,
  float = {
    show_header = true,
    source = "always",
    border = "rounded",
    focusable = false,
  },
})
