vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
	input = {
		enabled = true,
		win = {
			relative = "cursor",
			row = 1,
			col = 0,
			width = 40,
			border = "rounded",
		},
	},
})
