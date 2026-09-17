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
		themable = true,
		show_duplicate_prefix = true,
		separator_style = "slant",
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",

		-- ---------- Icons ----------
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		-- ---------- Icons ----------

		indicator = {
			icon = "▎", -- this should be omitted if indicator style is not 'icon'
			style = "underline",
		},

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
	highlights = {

		-- ---------- Main ----------
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
		-- ---------- Main ----------

		-- ---------- Duplicate Buffers ----------
		duplicate = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		duplicate_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		duplicate_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
		},
		-- ---------- Duplicate Buffers ----------

		-- ---------- Modified ----------
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
		-- ---------- Modified ----------

		-- ---------- Separators ----------
		separator = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		separator_visible = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		separator_selected = {
			fg = tabline.bg,
			bg = tabline_sel.bg,
		},
		-- ---------- Separators ----------

		-- ---------- Close Buttons ----------
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
		-- ---------- Close Buttons ----------

		-- ---------- Numbers ----------
		numbers = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		numbers_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		numbers_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Numbers ----------

		-- ---------- Diagnostics ----------
		diagnostic = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		diagnostic_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		diagnostic_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Diagnostics ----------

		-- ---------- Error ----------
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

		error_diagnostic = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		error_diagnostic_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		error_diagnostic_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Error ----------

		-- ---------- Warning ----------
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

		warning_diagnostic = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		warning_diagnostic_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		warning_diagnostic_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Warning ----------

		-- ---------- Info ----------
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

		info_diagnostic = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		info_diagnostic_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		info_diagnostic_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Info ----------

		-- ---------- Hint ----------
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

		hint_diagnostic = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		hint_diagnostic_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		hint_diagnostic_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Hint ----------

		-- ---------- Indicator ----------
		indicator_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		indicator_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Indicator ----------

		-- ---------- Pick ----------
		pick = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		pick_visible = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		pick_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},
		-- ---------- Pick ----------

		-- ---------- Tabs ----------
		tab = {
			fg = tabline.fg,
			bg = tabline.bg,
		},

		tab_selected = {
			fg = tabline_sel.fg,
			bg = tabline_sel.bg,
			bold = true,
		},

		tab_separator = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		tab_separator_selected = {
			fg = tabline.bg,
			bg = tabline_sel.bg,
		},

		tab_close = {
			fg = tabline.fg,
			bg = tabline.bg,
		},
		-- ---------- Tabs ----------

		-- ---------- Misc ----------
		offset_separator = {
			fg = tabline.bg,
			bg = tabline.bg,
		},

		trunc_marker = {
			fg = tabline.fg,
			bg = tabline.bg,
		},
		-- ---------- Misc ----------
	},
	-- ---------- Highlights ----------
})
-- ---------- Config ----------
