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
  { "neanias/everforest-nvim", priority = 1000,
    config = function()
      require("everforest").setup({ background = "medium" })
      vim.cmd.colorscheme("everforest")
    end
  },
  { "stevearc/conform.nvim", opts = {},},
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", },
  { "goolord/alpha-nvim", dependencies = { "nvim-mini/mini.icons", "nvim-lua/plenary.nvim" } },
  { "ThePrimeagen/harpoon" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-neo-tree/neo-tree.nvim", dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" } },
  { "windwp/nvim-autopairs" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "mfussenegger/nvim-lint" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "nvimtools/none-ls.nvim" },
  { "mfussenegger/nvim-dap" },
  { "lewis6991/gitsigns.nvim" },
  { "folke/which-key.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
}, { root = vim.fn.stdpath("config") .. "/lazy" })

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

require("core.keybinds")
require("core.options")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.neo-tree")
require("plugins.cmp")
require("plugins.alpha")
