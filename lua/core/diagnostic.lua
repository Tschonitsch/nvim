--    ______ _                             _   _
--    |  _  (_)                           | | (_)
--    | | | |_  __ _  __ _ _ __   ___  ___| |_ _  ___
--    | | | | |/ _` |/ _` | '_ \ / _ \/ __| __| |/ __|
--    | |/ /| | (_| | (_| | | | | (_) \__ \ |_| | (__
--    |___/ |_|\__,_|\__, |_| |_|\___/|___/\__|_|\___|
--                    __/ |
--                   |___/

-- ---------- Diagnostic ----------
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
})
-- ---------- Diagnostic ----------
