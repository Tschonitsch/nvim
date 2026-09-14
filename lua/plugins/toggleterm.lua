--     _____                 _    _____
--    |_   _|               | |  |_   _|
--      | | ___   __ _  __ _| | ___| | ___ _ __ _ __ ___
--      | |/ _ \ / _` |/ _` | |/ _ \ |/ _ \ '__| '_ ` _ \
--      | | (_) | (_| | (_| | |  __/ |  __/ |  | | | | | |
--      \_/\___/ \__, |\__, |_|\___\_/\___|_|  |_| |_| |_|
--                __/ | __/ |
--               |___/ |___/

-- ---------- Keybinds ----------
vim.keymap.set("t", "<S-h>", "<C-\\><C-N>:vertical resize +5<CR>i") -- H: Resize Left
vim.keymap.set("t", "<S-l>", "<C-\\><C-N>:vertical resize -5<CR>i") -- L: Resize Right
vim.keymap.set("t", "<S-k>", "<C-\\><C-N>:resize +2<CR>i") -- K: Resize up
vim.keymap.set("t", "<S-j>", "<C-\\><C-N>:resize -2<CR>i") -- J: Resize down
-- ---------- Keybinds ----------

-- ---------- Config ----------
require("toggleterm").setup({
	open_mapping = "<C-t>", -- Ctrl + t to open the terminal
	direction = "vertical", -- vertical, horizontal, foat

	size = function(term)
		return vim.o.columns * 0.35
	end,

	persist_size = false, -- false: Changes size depenting on window size
	shade_terminals = false, -- false: Invis background

	highlights = {
		Normal = {
			guibg = "NONE",
		},
	},
})
-- ---------- Config ----------
