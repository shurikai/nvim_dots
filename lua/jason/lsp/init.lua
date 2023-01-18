local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "jason.lsp.mason"
require("jason.lsp.handlers").setup()
require "jason.lsp.null-ls"
