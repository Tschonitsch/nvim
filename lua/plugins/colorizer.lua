--     _____       _            _
--    /  __ \     | |          (_)
--    | /  \/ ___ | | ___  _ __ _ _______ _ __
--    | |    / _ \| |/ _ \| '__| |_  / _ \ '__|
--    | \__/\ (_) | | (_) | |  | |/ /  __/ |
--     \____/\___/|_|\___/|_|  |_/___\___|_|

-- ---------- Config ----------
require("colorizer").setup({
	event = "BufReadPre",

	-- ---------- Options ----------
	opts = {
		user_default_options = {
			RGB = true,
			RRGGBB = true,
			RRGGBBAA = true,
			names = false,
			mode = "background",
			css = true,
			css_fn = true,
		},
	},
	-- ---------- Options ----------
})
-- ---------- Config ----------
