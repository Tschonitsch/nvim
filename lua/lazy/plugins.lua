--     _                      ______ _             _
--    | |                     | ___ \ |           (_)
--    | |     __ _ _____   _  | |_/ / |_   _  __ _ _ _ __  ___
--    | |    / _` |_  / | | | |  __/| | | | |/ _` | | '_ \/ __|
--    | |___| (_| |/ /| |_| | | |   | | |_| | (_| | | | | \__ \
--    \_____/\__,_/___|\__, | \_|   |_|\__,_|\__, |_|_| |_|___/
--                      __/ |                 __/ |
--                     |___/                 |___/

require("lazy").setup({

	-- ---------- UI & Appearance ----------
	-- Startup dashboard
	{ "goolord/alpha-nvim", dependencies = { "nvim-mini/mini.icons", "nvim-lua/plenary.nvim" } },

	-- Buffers
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Status line
	{ "nvim-lualine/lualine.nvim" },

	-- File and UI icons
	{ "nvim-tree/nvim-web-devicons" },

	-- Displays colors directly in code
	{ "catgoose/nvim-colorizer.lua" },

	-- Visualizes indentation
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	-- ---------- UI & Appearance ----------

	-- ---------- Navigation & Search ----------
	-- Fuzzy finder for files, text, buffers, etc.
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Fast cursor movement and navigation
	{ "folke/flash.nvim" },

	-- File explorer
	{ "nvim-neo-tree/neo-tree.nvim", dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" } },
	-- ---------- Navigation & Search ----------

	-- ---------- Editing ----------
	-- Easily toggle comments
	{ "numToStr/Comment.nvim" },

	-- Automatically closes brackets and quotes
	{ "windwp/nvim-autopairs" },

	-- Snippet engine
	{ "L3MON4D3/LuaSnip" },

	-- Shows available keybindings
	{ "folke/which-key.nvim" },
	-- ---------- Editing ----------

	-- ---------- LSP & Completion ----------
	-- Configures Language Servers
	{ "neovim/nvim-lspconfig" },

	-- Installs and manages LSPs, formatters, and linters
	{ "mason-org/mason.nvim", opts = {} },

	-- Autocompletion engine
	{ "hrsh7th/nvim-cmp" },

	-- LSP completion source
	{ "hrsh7th/cmp-nvim-lsp" },

	-- Completion from open buffers
	{ "hrsh7th/cmp-buffer" },

	-- File and path completion
	{ "hrsh7th/cmp-path" },

	-- LuaSnip completion source
	{ "saadparwaiz1/cmp_luasnip" },
	-- ---------- LSP & Completion ----------

	-- ---------- Syntax & Code Quality ----------
	-- Advanced syntax highlighting and code parsing
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },

	-- Code formatting
	{ "stevearc/conform.nvim", opts = {} },

	-- Runs linters and reports code issues
	{ "mfussenegger/nvim-lint" },

	-- Integrates external formatters and linters
	{ "nvimtools/none-ls.nvim" },
	-- ---------- Syntax & Code Quality ----------

	-- ---------- Debugging ----------
	-- Debug Adapter Protocol support
	{ "mfussenegger/nvim-dap" },
	-- ---------- Debugging ----------

	-- ---------- Git ----------
	-- Shows Git changes directly in the sign column
	{ "lewis6991/gitsigns.nvim" },
	-- ---------- Git ----------

	-- ---------- Terminal ----------
	-- Toggle an integrated terminal
	{ "akinsho/toggleterm.nvim" },
	-- ---------- Terminal ----------
}, { root = vim.fn.stdpath("config") .. "/lazy" })
