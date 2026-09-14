--    ______        __  __          _ _
--    | ___ \      / _|/ _|        | (_)
--    | |_/ /_   _| |_| |_ ___ _ __| |_ _ __   ___
--    | ___ \ | | |  _|  _/ _ \ '__| | | '_ \ / _ \
--    | |_/ / |_| | | | ||  __/ |  | | | | | |  __/
--    \____/ \__,_|_| |_| \___|_|  |_|_|_| |_|\___|

-- ---------- Colors ----------
local tabline = vim.api.nvim_get_hl(0, { name = "TabLine" })
local tabline_sel = vim.api.nvim_get_hl(0, { name = "TabLineSel" })
-- ---------- Colors ----------

-- ---------- Config ----------
require("bufferline").setup({

	-- ---------- Options ----------
	options = {
		mode = "buffers",
		separator_style = "slant",
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",

		-- ---------- Icons ----------
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		-- ---------- Icons ----------

		-- ---------- Hover ----------
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		-- ---------- Hover ----------

		-- ---------- Offsets ----------
		offsets = {
			{
				filetype = "neo-tree",
				text = "Neo-tree",
				highlight = "Directory",
				text_align = "left",
			},
		},
		-- ---------- Offsets ----------
	},
	-- ---------- Options ----------

	-- ---------- Highlights ----------
	-- nothing at the bottom all just highlights
	highlights = {

		fill = {
			fg = tabline.fg,
			bg = tabline.bg,
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
	-- ---------- Highlights ----------
})
-- ---------- Config ----------
