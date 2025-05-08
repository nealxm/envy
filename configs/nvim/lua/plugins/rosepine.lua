return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			variant = "main",

			enable = {
				terminal = true,
				legacy_highlights = true,
				migrations = true,
			},

			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
