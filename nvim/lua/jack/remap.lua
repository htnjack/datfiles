vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set('n', '<leader>cc', ':cclose<CR>', { noremap = true, silent = true })

