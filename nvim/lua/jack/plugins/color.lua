local a = 123;
return {
    'tjdevries/colorbuddy.nvim',

    dependencies = {
        'norcalli/nvim-colorizer.lua',
        'norcalli/nvim-terminal.lua',
        { "houtenjack/hare.nvim", dev = true },
    },


    config = function()
        require("terminal").setup()
        require("colorizer").setup()

        vim.api.nvim_set_keymap("n", "<leader>rh", ":so ~/dev/hare.nvim/lua/hare.lua<CR>", { noremap = false })

        require("colorbuddy").colorscheme("hare")
    end
}
