vim.pack.add({ "https://github.com/windwp/nvim-autopairs" })

vim.cmd("packadd nvim-autopairs")

require("nvim-autopairs").setup({
	-- enable treesitter, no completion in lua or js string context
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
})
