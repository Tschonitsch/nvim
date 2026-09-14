--     _____                  _ _   _
--    |_   _|                (_) | | |
--      | |_ __ ___  ___  ___ _| |_| |_ ___ _ __
--      | | '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
--      | | | |  __/  __/\__ \ | |_| ||  __/ |
--      \_/_|  \___|\___||___/_|\__|\__\___|_|

-- ---------- Treesitter ----------

-- Parser installieren
local treesitter = require("nvim-treesitter")

-- ---------- Languages ----------
local languages = {
	"java",
	"css",
	"ron",
	"lua",
	"qmljs",
	"vim",
	"vimdoc",
	"bash",
	"python",
	"cpp",
	"rust",
	"json",
	"yaml",
	"c",
	"html",
	"javascript",
	"markdown",
	"toml",
	"xml",
}
-- ---------- Languages ----------

-- Parser installieren
treesitter.install(languages)

-- Treesitter Features aktivieren
vim.api.nvim_create_autocmd("FileType", {
	pattern = languages,

	callback = function()
		-- Syntax Highlighting
		vim.treesitter.start()

		-- Treesitter Indent
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

-- ---------- Treesitter ----------
