vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    max_width = 80,
    max_height = 15,
    wrap = true,
  }
)

