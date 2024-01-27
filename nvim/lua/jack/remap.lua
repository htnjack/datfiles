vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>q", ":q!<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "<leader>w", ":w!<enter>", {noremap=false})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>c', ':cclose<CR>', { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Yank to clipboard
vim.api.nvim_set_keymap("v", "<leader>y", "\"+y", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>y", "\"+y", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>Y", "\"+yg_", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>yy", "\"+yy", {noremap=true})


vim.api.nvim_set_keymap("n", "<leader>p", "\"+p", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>P", "\"+P", {noremap=true})
vim.api.nvim_set_keymap("v", "<leader>p", "\"+p", {noremap=true})
vim.api.nvim_set_keymap("v", "<leader>P", "\"+P", {noremap=true})
