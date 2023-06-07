require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls", "kotlin_language_server", "tsserver" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").kotlin_language_server.setup {}
require("lspconfig").tsserver.setup {}
