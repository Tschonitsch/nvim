--     _____              __
--    /  __ \            / _|
--    | /  \/ ___  _ __ | |_ ___  _ __ _ __ ___
--    | |    / _ \| '_ \|  _/ _ \| '__| '_ ` _ \
--    | \__/\ (_) | | | | || (_) | |  | | | | | |
--     \____/\___/|_| |_|_| \___/|_|  |_| |_| |_|

-- ---------- Config ----------
require("conform").setup({

	-- ---------- Format timeout ----------
	format_on_save = {
		timeout_ms = 500,
	},
	-- ---------- Format timeout ----------

	-- ---------- Formatters ----------
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		java = { "clang-format" },
	},
	-- ---------- Formatters ----------

	-- ---------- Formatter configs ----------
	formatters = {
		["clang-format"] = {
			prepend_args = {
				"--style={IndentWidth: 4, TabWidth: 4, ColumnLimit: 120}",
			},
		},
	},
	-- ---------- Formatter configs ----------
})
-- ---------- Config ----------
