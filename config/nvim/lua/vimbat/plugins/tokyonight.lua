vim.pack.add({ "https://github.com/folke/tokyonight.nvim",})


local bg = "#011628"
local bg_dark = "#011423"
local bg_highlight = "#143652"
local bg_search = "#275378"
local bg_visual = "#275378"
local fg = "#CBE0F0"
local fg_dark = "#627E97"
local fg_gutter = "#627E97"
local border = "#547998"
local color_col = "#112443"

require("tokyonight").setup({
	style = "night",
	on_colors = function(colors)
		colors.bg = bg
		colors.bg_dark = bg_dark
		colors.bg_highlight = bg_highlight
		colors.bg_popup = bg_dark
		colors.bg_search = bg_search
		colors.bg_sidebar = bg_dark
		colors.bg_statusline = bg_dark
		colors.bg_visual = bg_visual
		colors.border = border
		colors.fg = fg
		colors.fg_dark = fg_dark
		colors.fg_float = fg
		colors.fg_gutter = fg_gutter
		colors.fg_sidebar = fg_dark
	end,
})

vim.cmd.colorscheme("tokyonight")
vim.api.nvim_set_hl(0, "ColorColumn", { bg = color_col,})
