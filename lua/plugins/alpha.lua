--      ___  _       _
--     / _ \| |     | |
--    / /_\ \ |_ __ | |__   __ _
--    |  _  | | '_ \| '_ \ / _` |
--    | | | | | |_) | | | | (_| |
--    \_| |_/_| .__/|_| |_|\__,_|
--            | |
--            |_|

-- ---------- Config ----------
-- Load Alpha with a protected call
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

-- Enable Alpha dashboard
local dashboard = require("alpha.themes.dashboard")

-- ---------- Sortcuts ----------
dashboard.section.buttons.val = {
	dashboard.button("n", "  Create New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("o", "  Open Recent Files", "::Telescope oldfiles <CR>"),
	dashboard.button("v", "  Neovim Config", ":e ~/.config/nvim/ <CR>"),
	dashboard.button("h", "  Hyprland Config", ":e ~/.config/hypr/ <CR>"),
	dashboard.button("s", "  Quickshell Config", ":e ~/.config/quickshell/ <CR>"),
	dashboard.button("u", "  Update Nvim Plugins", ":Lazy update<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
-- ---------- Sortcuts ----------

-- ---------- Artcover ----------
dashboard.section.header.val = {
	[[                                       /\                                       ]],
	[[                                       /\                                       ]],
	[[                                       /\                                       ]],
	[[                                       /\                                       ]],
	[[                                     _`=='_                                     ]],
	[[                                  _-~......~-_                                  ]],
	[[                              _--~............~--_                              ]],
	[[                        __--~~....................~~--__                        ]],
	[[            .___..---~~~................................~~~---..___,            ]],
	[[             `=.________________________________________________,='             ]],
	[[                @^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^@                ]],
	[[                         |  |  I   I   II   I   I  |  |                         ]],
	[[                         |  |__I___I___II___I___I__|  |                         ]],
	[[                         | /___I_  I   II   I  _I___\ |                         ]],
	[[                         |'_     ~~~~~~~~~~~~~~     _`|                         ]],
	[[                     __-~...~~~~~--------------~~~~~...~-__                     ]],
	[[             ___---~~......................................~~---___             ]],
	[[ .___..---~~~......................................................~~~---..___, ]],
	[[  `=.______________________________________________________________________,='  ]],
	[[     @^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^@     ]],
	[[               |   |    | |    |  |    ||    |  |    | |    |   |               ]],
	[[               |   |____| |____|  |    ||    |  |____| |____|   |               ]],
	[[               |__________________|____||____|__________________|               ]],
	[[             _-|_____|_____|_____|__|------|__|_____|_____|_____|-_             ]],
}
-- ---------- Artcover ----------

-- ---------- Padding ----------
dashboard.config.layout = {
	{ type = "padding", val = 10 },
	dashboard.section.header,
	{ type = "padding", val = 2 },
	dashboard.section.buttons,
	{ type = "padding", val = 1 },
	dashboard.section.footer,
}
-- ---------- Padding ----------

alpha.setup(dashboard.opts)
-- ---------- Config ----------
