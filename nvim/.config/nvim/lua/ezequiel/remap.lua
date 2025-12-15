vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Sobreescribir lo que esta seleccionado por 
-- lo que esta en clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copiar cosas sobre el clipboard del sistema
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Quizas algun dia
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navegar quickfix
vim.keymap.set("n", "]q", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "[q", "<cmd>cprev<CR>zz")

-- Navegar loclist
vim.keymap.set("n", "]l", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "[l", "<cmd>lprev<CR>zz")

-- Reemplazo la palabra bajo el cursor por si misma,
-- util para navegar sobre todas las ocurrencias.
vim.keymap.set("n", "<leader>rn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover({
        max_width = 80,
        max_height = 15,
    })
end)

