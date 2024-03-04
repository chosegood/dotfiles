require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "gopls", "jdtls", "kotlin_language_server", "rust_analyzer", "tsserver" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").kotlin_language_server.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").tsserver.setup {}
