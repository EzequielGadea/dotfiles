return {
	"rose-pine/neovim",
	name = "rose-pine",
    opt = {
        transparency = true,
    },
	opts = {
		variant = "main",
	},
	config = function()
        require("rose-pine").setup({
            styles = {
                transparency = true,
            }
        })
		vim.cmd("colorscheme rose-pine")
	end,
}
