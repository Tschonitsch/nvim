--     _   _                               _ _
--    | \ | |                             | | |
--    |  \| | ___  ___  ___  ___ _ __ ___ | | |
--    | . ` |/ _ \/ _ \/ __|/ __| '__/ _ \| | |
--    | |\  |  __/ (_) \__ \ (__| | | (_) | | |
--    \_| \_/\___|\___/|___/\___|_|  \___/|_|_|

-- ---------- Config ----------
local neoscroll = require("neoscroll")

-- ---------- Options ----------
neoscroll.setup({
	hide_cursor = false,
	stop_eof = true,
	respect_scrolloff = false,
	cursor_scrolls_alone = true,

	duration_multiplier = 1.0,
	easing = "linear",
	ignored_events = {
		"WinScrolled",
		"CursorMoved",
	},
})
-- ---------- Options ----------

-- ---------- Keybinds ----------
vim.keymap.set("n", "<ScrollWheelDown>", function()
	neoscroll.scroll(1, {
		move_cursor = true,
		duration = 20,
		easing = "linear",
	})
end)

vim.keymap.set("n", "<ScrollWheelUp>", function()
	neoscroll.scroll(-1, {
		move_cursor = true,
		duration = 20,
		easing = "linear",
	})
end)
-- ---------- Keybinds ----------

-- ---------- Config ----------
