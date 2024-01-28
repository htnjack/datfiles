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

        require("colorbuddy").colorscheme "hare"
    end
}
