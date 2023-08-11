local status, tokyonight = pcall(require, "tokyonight")
if not status then
	return
end

--[[ vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true ]]
--[[ vim.g.tokyonight_colors = {
	fg = "#839496",
	fg_dark = "#586e75",
	fg_gutter = "#073642",
	bg_highlight = "#002b36",
	comment = "#586e75",
	blue = "#268bd2",

	cyan = "#2aa198",
	blue1 = "#2ac3de",
	blue2 = "#0db9d7",
	blue5 = "#89ddff",
	blue6 = "#B4F9F8",

	yellow = "#b58900",
	orange = "#cb4b16",
	magenta = "#d33682",
	purple = "#6c71c4",
} ]]

tokyonight.setup({
	style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "night", -- The theme is used when the background is set to light
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true,
	styles = {
		functions = {},
	},
	sidebars = { "qf", "vista_kind", "terminal", "packer" },
	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	on_colors = function(colors)
		colors.hint = colors.orange
		colors.error = "#ff0000"
	end,
})


vim.cmd([[colorscheme tokyonight]])
