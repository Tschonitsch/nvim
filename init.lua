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

-- ---------- Plugins ----------
require("lazy").setup({
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "akinsho/toggleterm.nvim" },
	{ "stevearc/conform.nvim", opts = {} },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{ "goolord/alpha-nvim", dependencies = { "nvim-mini/mini.icons", "nvim-lua/plenary.nvim" } },
	{ "ThePrimeagen/harpoon" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-neo-tree/neo-tree.nvim", dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" } },
	{ "windwp/nvim-autopairs" },
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "mfussenegger/nvim-lint" },
	{ "neovim/nvim-lspconfig" },
	{ "nvimtools/none-ls.nvim" },
	{ "mfussenegger/nvim-dap" },
	{ "lewis6991/gitsigns.nvim" },
	{ "folke/which-key.nvim" },

	{ "mason-org/mason.nvim", opts = {} },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },

	{ "nvim-lualine/lualine.nvim" },
	{ "L3MON4D3/LuaSnip" },
}, { root = vim.fn.stdpath("config") .. "/lazy" })

-- ---------- Matugen Theme ----------
local function source_matugen()
	local path = os.getenv("HOME") .. "/.config/nvim/generated.lua"
	local f = io.open(path, "r")
	if f then
		io.close(f)
		dofile(path)
	else
		vim.cmd("colorscheme habamax")
	end
end

source_matugen()

vim.api.nvim_create_autocmd("Signal", {
	pattern = "SIGUSR1",
	callback = function()
		package.loaded["matugen-theme"] = nil
		source_matugen()
	end,
})

-- ---------- Configs ----------

require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettier" },
	},
})
require("ibl").setup({
	scope = {
		enabled = true,
		show_start = true,
		show_end = true,
	},
})

require("plugins.bufferline")
require("core.diagnostic")
require("plugins.cmp")
require("plugins.alpha")
require("core.lsp")
require("core.keybinds")
require("core.options")
require("plugins.toggleterm")
require("plugins.telescope")
require("plugins.neo-tree")
require("plugins.lualine")
