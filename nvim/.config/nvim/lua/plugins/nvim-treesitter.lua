return {
	"nvim-treesitter/nvim-treesitter",
	name = "nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {"c", "cpp", "cmake", "lua", "haskell", "java", "python"},
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true
		},
		indent = { enable = true },  
	},
    config = function()
        --require'nvim-treesitter.configs'.setup()
    end

}
