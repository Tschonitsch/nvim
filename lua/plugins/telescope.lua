require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  },
}
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')

