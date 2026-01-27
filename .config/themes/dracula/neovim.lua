return {
	{
		"Mofiqul/dracula.nvim",
		config = function()
			require("dracula").setup({
				italic_comment = true,
				transparent_bg = true,
			})
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "dracula",
		},
	},
}
