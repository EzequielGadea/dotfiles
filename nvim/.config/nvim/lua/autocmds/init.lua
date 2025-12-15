require "autocmds.handlers"

--Habilitar autocompletado si el LSP lo soporta
--vim.api.nvim_create_autocmd('LspAttach', {
--  callback = function(ev)
--    local client = vim.lsp.get_client_by_id(ev.data.client_id)
--    if client ~= nil and client:supports_method('textDocument/completion') then
--      vim.lsp.completion.enable(true, client.id, ev.buf, {
--          autotrigger = true,
--          convert = function(item)
--              return { abbr = item.label:gsub('%b()', '') }
--          end,
--      })
--    end
--  vim.keymap.set("i", "<C-k>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
--  end,
--})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    end
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("java")
vim.lsp.enable("clangd")
vim.lsp.enable("bashls")
--vim.lsp.enable("jdtls")

