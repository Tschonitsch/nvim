--     _____          _            _         ______ _             _    _ _
--    |_   _|        | |          | |        | ___ \ |           | |  | (_)
--      | | _ __   __| | ___ _ __ | |_ ______| |_/ / | __ _ _ __ | | _| |_ _ __   ___
--      | || '_ \ / _` |/ _ \ '_ \| __|______| ___ \ |/ _` | '_ \| |/ / | | '_ \ / _ \
--     _| || | | | (_| |  __/ | | | |_       | |_/ / | (_| | | | |   <| | | | | |  __/
--     \___/_| |_|\__,_|\___|_| |_|\__|      \____/|_|\__,_|_| |_|_|\_\_|_|_| |_|\___|
--
--

-- ---------- Colors ----------
local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine" })
local func = vim.api.nvim_get_hl(0, { name = "Function" })
-- ---------- Colors ----------

-- ---------- Config ----------
vim.api.nvim_set_hl(0, "IblScope", {
	fg = func.fg,
	bold = true,
})

require("ibl").setup({
	scope = {
		enabled = true,
		show_start = true,
		show_end = true,
		highlight = "IblScope",
	},
})
-- ---------- Config ----------
