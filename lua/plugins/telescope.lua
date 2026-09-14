--     _____    _
--    |_   _|  | |
--      | | ___| | ___  ___  ___ ___  _ __   ___
--      | |/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \
--      | |  __/ |  __/\__ \ (_| (_) | |_) |  __/
--      \_/\___|_|\___||___/\___\___/| .__/ \___|
--                                   | |
--                                   |_|

-- ---------- Keybinds ----------
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" }) -- F: Search Files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" }) -- G: Search Text in Files
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Old Files" }) -- O: Search Recent Files

vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help Tags" }) -- H: Search Help Tags
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" }) -- B: Search Open Buffers
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" }) -- K: Search Keymaps
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope commands<CR>", { desc = "Commands" }) -- C: Search Commands
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "Diagnostics" }) -- D: Search Diagnostics
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Document Symbols" }) -- S: Search Document Symbols
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Buffer Search" }) -- W: Search in Current Buffer
-- ---------- Keybinds ----------

-- ---------- Config ----------
require("telescope").setup({
	--	defaults = {
	--		file_ignore_patterns = { "node_modules", ".git" },
	--	},
})
-- ---------- Config ----------
