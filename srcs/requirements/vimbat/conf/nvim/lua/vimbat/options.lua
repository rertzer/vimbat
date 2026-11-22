--				OPTIONS

-- appearance
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80" -- show a color column at position

-- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false -- dont use spaces instead of tabs
vim.opt.smartindent = true
vim.opt.autoindent = true

-- search
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show matches as you type
vim.opt.showmatch = false -- highlights matching brackets

-- backup & autosave
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.autowrite = false

-- behavior
vim.opt.wrap = true
vim.opt.updatetime = 100
vim.opt.scrolloff = 8
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = "menuone,noinsert,noselect" -- completion options
vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.wildmenu = true -- tab completion
vim.opt.splitbelow = true -- horizontal split
vim.opt.splitright = true -- vertical splits go right

-- folding: requires treesitter at runtime
vim.opt.foldenable = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

--			COMMANDS
-- vim.cmd.colorscheme("koehler")
