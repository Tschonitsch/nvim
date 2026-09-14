--     _   __           _     _           _
--    | | / /          | |   (_)         | |
--    | |/ /  ___ _   _| |__  _ _ __   __| |___
--    |    \ / _ \ | | | '_ \| | '_ \ / _` / __|
--    | |\  \  __/ |_| | |_) | | | | | (_| \__ \
--    \_| \_/\___|\__, |_.__/|_|_| |_|\__,_|___/
--                 __/ |
--                |___/

-- ---------- Clipboard ----------
vim.keymap.set({ "n", "v" }, "y", '"+y', { noremap = true })
vim.keymap.set({ "n", "v" }, "d", '"+d', { noremap = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
-- ---------- Clipboard ----------

-- ---------- Arrow Keys ----------
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
-- ---------- Arrow Keys ----------

-- ---------- Buffers ----------
vim.keymap.set("n", "<leader>tl", "<cmd>bnext<CR>", { desc = "Next Buffer" }) -- Next Buffer
vim.keymap.set("n", "<leader>th", "<cmd>bprevious<CR>", { desc = "Previous Buffer" }) -- Prev Buffer
vim.keymap.set("n", "<leader>tx", "<cmd>bdelete<CR>", { desc = "Delete Buffer" }) -- Close Buffer
vim.keymap.set("n", "<leader>tn", "<cmd>enew<CR>", { desc = "New Buffer" }) -- New Buffer
-- ---------- Buffers ----------

-- ---------- Visual Mode ----------
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
-- ---------- Visual Mode ----------

-- ---------- Terminal ----------
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
	noremap = true,
	silent = true,
})
-- ---------- Terminal ----------
