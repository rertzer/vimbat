vim.pack.add({
	"https://www.github.com/nvim-tree/nvim-tree.lua",
	"https://www.github.com/nvim-tree/nvim-web-devicons",
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end
packadd("nvim-tree.lua")

-- nvim-tree config

require("nvim-web-devicons")

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			web_devicons = {
				file = {
					enable = true,
				},
				folder = {
					enable = true,
				},
			},
		},
		group_empty = true,
	},
	actions = {

		use_system_clipboard = true,

		open_file = {
			quit_on_open = false,
			window_picker = {
				enable = false,
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	git = {
		ignore = false,
	},
	view = {
		width = 35,
		side = "left",
		float = {
			enable = false,
		},
	},
	filters = {
		dotfiles = false,
	},
})

local keymap = vim.keymap.set

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
keymap("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
keymap("n", "<leader>ed", "<cmd>NvimTreeCollapse<CR>")
keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
