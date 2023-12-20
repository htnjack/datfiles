local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function() harpoon:list().append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
