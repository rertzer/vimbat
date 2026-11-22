vim.pack.add({
	"https://github.com/numToStr/Comment.nvim",
})

vim.cmd("packadd Comment.nvim")

require("Comment").setup({
	padding = true,
	sticky = true,

	toggler = {
		line = "gcc",
		block = "gbc",
	},

	opleader = {
		line = "gc",
		block = "gb",
	},

	extra = {
		above = "gcO",
		below = "gco",
		eol = "gcA",
	},

	mappings = {
		basic = true,
		extra = true,
	},
})
