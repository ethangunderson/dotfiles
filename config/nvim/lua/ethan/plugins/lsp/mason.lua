return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-null-ls
    -- local mason_null_ls = require("mason-null-ls")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "graphql",
        "elixirls"
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

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
  end
}
