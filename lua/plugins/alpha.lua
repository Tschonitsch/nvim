-- Load Alpha with a protected call
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

-- Enable Alpha dashboard
local dashboard = require("alpha.themes.dashboard")

-- Disable the statusline to make the dashboard look clean
vim.cmd [[ au User AlphaReady if winnr('$') == 1 | set laststatus=1 ]]

-- Custom Section
dashboard.section.buttons.val = {
    dashboard.button("n", "  Create New file",       ":set laststatus=3 | :ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  Open Recent Files",     ":set laststatus=3 | :Telescope oldfiles <CR>"),
    dashboard.button("v", "  Neovim Settings",       ":set laststatus=3 | e ~/.config/nvim/ <CR>"),
    dashboard.button("h", "  Hyprland Settings",     ":set laststatus=3 | e ~/.config/hypr/ <CR>"),
    dashboard.button("u", "  Update Nvim Plugins",   ":Lazy sync<CR>"),
    dashboard.button("q", "  Quit Neovim",           ":qa<CR>"),
}

dashboard.section.header.val = {
[[                                      /\                                          ]],
[[                                      /\                                          ]],
[[                                      /\                                          ]],
[[                                      /\                                          ]],
[[                                    _`=='_                                        ]],
[[                                 _-~......~-_                                     ]],
[[                             _--~............~--_                                 ]],
[[                       __--~~....................~~--__                           ]],
[[           .___..---~~~................................~~~---..___,               ]],
[[            `=.________________________________________________,='                ]],
[[               @^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^@                   ]],
[[                        |  |  I   I   II   I   I  |  |                            ]],
[[                        |  |__I___I___II___I___I__|  |                            ]],
[[                        | /___I_  I   II   I  _I___\ |                            ]],
[[                        |'_     ~~~~~~~~~~~~~~     _`|                            ]],
[[                    __-~...~~~~~--------------~~~~~...~-__                        ]],
[[            ___---~~......................................~~---___                ]],
[[.___..---~~~......................................................~~~---..___,    ]],
[[ `=.______________________________________________________________________,='     ]],
[[    @^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^@        ]],
[[              |   |    | |    |  |    ||    |  |    | |    |   |                  ]],
[[              |   |____| |____|  |    ||    |  |____| |____|   |                  ]],
[[              |__________________|____||____|__________________|                  ]],
[[            _-|_____|_____|_____|__|------|__|_____|_____|_____|-_                ]],
}

dashboard.config.layout = {
   { type = "padding", val = 10 },
   dashboard.section.header,
   { type = "padding", val = 2 },
   dashboard.section.buttons,
   { type = "padding", val = 1 },
   dashboard.section.footer,
}
alpha.setup(dashboard.opts)