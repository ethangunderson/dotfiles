require("luasnip.loaders.from_snipmate").load({
  paths = {
    vim.fn.stdpath('config') .. '/snippets',
  }
})
