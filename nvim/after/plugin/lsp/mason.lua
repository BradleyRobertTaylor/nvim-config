require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "solargraph",
    "tsserver",
    "html",
    "cssls",
  },
})
