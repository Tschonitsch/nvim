--    ______ _           _
--    |  ___| |         | |
--    | |_  | | __ _ ___| |__
--    |  _| | |/ _` / __| '_ \
--    | |   | | (_| \__ \ | | |
--    \_|   |_|\__,_|___/_| |_|

-- ---------- Keybind----------
vim.keymap.set({ "n", "x", "o" }, "F", function() -- "F" is the Flash Search key
	require("flash").jump()
end, { desc = "Flash Search" })
-- ---------- Keybind----------

-- ---------- Config ----------
require("flash").setup({

	-- ---------- Promt----------
	prompt = {
		enabled = false,
	},
	-- ---------- Promt----------

	-- ---------- Modes ----------
	modes = {
		char = {
			enabled = false,
		},
	},
	-- ---------- Modes ----------
})
-- ---------- Config ----------
