require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },
}
vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle<cr>', { noremap = true, silent = true })