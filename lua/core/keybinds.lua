local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({'n', 'v'}, 'y', '"+y', { noremap = true })
vim.keymap.set({'n', 'v'}, 'd', '"+d', { noremap = true })
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })

vim.keymap.set({'n', 'i', 'v'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle<cr>', { noremap = true, silent = true })

vim.keymap.set('n', "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set('n', "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set('n', "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set('n', "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set('n', "<leader>tf", "<cmd>tabnew %<CR>")
