--     _                 _ _
--    | |               | (_)
--    | |    _   _  __ _| |_ _ __   ___
--    | |   | | | |/ _` | | | '_ \ / _ \
--    | |___| |_| | (_| | | | | | |  __/
--    \_____/\__,_|\__,_|_|_|_| |_|\___|

-- ---------- Config ----------
require("lualine").setup({

	-- ---------- Options ----------
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	-- ---------- Options ----------

	-- sections = {
	-- 	lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
	-- 	--lualine_b = { "branch", "diff", "diagnostics" },
	-- 	lualine_b = { "filename", "branch" },
	--
	-- 	lualine_x = { "encoding", "fileformat", "filetype" },
	-- 	lualine_y = { "progress" },
	-- 	lualine_z = { "location" },
	-- },

	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { "filename", "branch" },
		lualine_c = {
			"%=", --[[ add your center components here in place of this comment ]]
		},
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
})
-- ---------- Config ----------
