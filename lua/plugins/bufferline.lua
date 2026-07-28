vim.opt.termguicolors = true

local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
local tabline = vim.api.nvim_get_hl(0, { name = "TabLine" })
local tabline_sel = vim.api.nvim_get_hl(0, { name = "TabLineSel" })
local tabline_fill = vim.api.nvim_get_hl(0, { name = "TabLineFill" })

require("bufferline").setup({
	options = {
		mode = "buffers",
		separator_style = "slant",
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",

		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,

		offsets = {},
	},

	highlights = {

		fill = {
			bg = tabline_fill.bg,
		},

		background = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		buffer_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		buffer_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		-- wichtig für slant
		separator = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		separator_visible = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		separator_selected = {
			bg = tabline_sel.bg,
			fg = tabline.bg,
		},

		close_button = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		close_button_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		close_button_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
		},
		error = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		error_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		error_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		warning = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		warning_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		warning_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		info = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		info_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		info_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		hint = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		hint_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		hint_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		modified = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		modified_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		modified_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
	},
})
