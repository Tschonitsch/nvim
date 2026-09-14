--     _   _                _____
--    | \ | |              |_   _|
--    |  \| | ___  ___ ______| |_ __ ___  ___
--    | . ` |/ _ \/ _ \______| | '__/ _ \/ _ \
--    | |\  |  __/ (_) |     | | | |  __/  __/
--    \_| \_/\___|\___/      \_/_|  \___|\___|

-- ---------- Keybinds ----------
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" }) -- Leader + n for toggle
vim.keymap.set("n", "<leader>E", "<cmd>Neotree focus<CR>", { desc = "Focus Neo-tree" }) -- Leader + N for focus
-- ---------- Keybinds ----------

-- ---------- Config ----------
require("neo-tree").setup({

	-- ---------- Filesystem----------
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	},
	-- ---------- Filesystem----------

	-- ---------- Window ----------
	window = {
		position = "left",
		width = 32,
	},
	-- ---------- Window ----------

	popup_border_style = "rounded",
})
-- ---------- Config ----------
