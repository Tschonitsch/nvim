--     _____       _   _
--    |  _  |     | | (_)
--    | | | |_ __ | |_ _  ___  _ __  ___
--    | | | | '_ \| __| |/ _ \| '_ \/ __|
--    \ \_/ / |_) | |_| | (_) | | | \__ \
--     \___/| .__/ \__|_|\___/|_| |_|___/
--          | |
--          |_|

-- ---------- Indentation ----------
vim.opt.tabstop = 4 -- Number of spaces a <Tab> counts for
vim.opt.softtabstop = 4 -- Number of spaces inserted when pressing <Tab>
vim.opt.shiftwidth = 4 -- Number of spaces for indentation
vim.opt.expandtab = true -- Convert <Tab> into spaces
vim.opt.autoindent = true -- Copy indentation from the current line
vim.opt.smartindent = true -- Smart automatic indentation
-- ---------- Indentation ----------

-- ---------- Transparent Background ----------
-- vim.api.nvim_set_hl(0, "FloatBorder", {
-- 	bg = "NONE",
-- })
-- vim.api.nvim_set_hl(0, "NormalFloat", {
-- 	bg = "NONE",
-- })
-- ---------- Transparent Background ----------

-- ---------- Other ----------
vim.cmd("let g:netrw_banner = 0")

vim.opt.guicursor = ""
vim.opt.showtabline = 2
vim.opt.termguicolors = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard:append("unnamedplus")
-- ---------- Other ----------
