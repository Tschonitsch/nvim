--     _
--    | |
--    | |     __ _ _____   _
--    | |    / _` |_  / | | |
--    | |___| (_| |/ /| |_| |
--    \_____/\__,_/___|\__, |
--                      __/ |
--                     |___/

-- ---------- Lazy.nvim Bootstrap ----------
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- ---------- Lazy.nvim Bootstrap ----------

-- ---------- Plugins ----------
require("lazy.plugins")
-- ---------- Plugins ----------
