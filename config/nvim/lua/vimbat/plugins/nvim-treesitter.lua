vim.pack.add({
	{
		src = "https://www.github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
})

vim.cmd("packadd nvim-treesitter")

local setup_treesitter = function()
	local treesitter = require("nvim-treesitter")
	treesitter.setup({})
	local ensure_installed = {
		"arduino",
		"awk",
		"asm",
		"bash",
		"c",
		"cmake",
		"cpp",
		"css",
		"csv",
		"dockerfile",
		"gitignore",
		"go",
		"groovy",
		"helm",
		"haskell",
		"html",
		"htmldjango",
		"java",
		"javascript",
		"jinja",
		"json",
		"latex",
		"lua",
		"make",
		"markdown",
		"nasm",
		"nginx",
		"objdump",
		"ocaml",
		"pem",
		"perl",
		"powershell",
		"printf",
		"prisma",
		"python",
		"regex",
		"ruby",
		"rust",
		"sql",
		"strace",
		"terraform",
		"toml",
		"typescript",
		"vim",
		"vimdoc",
		"xml",
		"yaml",
	}

	local config = require("nvim-treesitter.config")
	local already_installed = config.get_installed()
	local parsers_to_install = {}

	for _, parser in ipairs(ensure_installed) do
		if not vim.tbl_contains(already_installed, parser) then
			table.insert(parsers_to_install, parser)
		end
	end

	if #parsers_to_install > 0 then
		treesitter.install(parsers_to_install)
	end

	local group = vim.api.nvim_create_augroup("TreeSitterConfig", { clear = true })
	vim.api.nvim_create_autocmd("FileType", {
		group = group,
		callback = function(args)
			local lang = vim.treesitter.language.get_lang(args.match)
			if lang and vim.list_contains(config.get_installed(), lang) then
				vim.treesitter.start(args.buf)
			end
		end,
	})
end

setup_treesitter()

-- require("ts_context_commentstring").setup({
-- 	enable_autocmd = false,
-- })
