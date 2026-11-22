vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim",
})

vim.cmd("packadd bufferline.nvim")

require("bufferline").setup({})
