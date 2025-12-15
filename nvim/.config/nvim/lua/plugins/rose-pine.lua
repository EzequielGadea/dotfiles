return {
	"rose-pine/neovim",
	name = "rose-pine",
    opt = {
        transparency = false,
    },
	opts = {
		variant = "main",
	},
	config = function()
        require("rose-pine").setup()
		vim.cmd("colorscheme rose-pine")
	end,
}
