require('lazy').setup({
    -- development
    -- { dir = "/home/jack/dev/pinky/nvim" },
    { 'rose-pine/neovim',                 name = 'rose-pine' },
    -- colorschemes
    { 'matsuuu/pinkmare' },
    { 'xiyaowong/transparent.nvim' },
    -- color preview
    { 'norcalli/nvim-colorizer.lua' },
    -- treesitter
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },
    -- Mason for managing LSP servers
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' }
        },
    },
    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- harpoon
    {
        'ThePrimeagen/harpoon',
        branch = "harpoon2",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("harpoon").setup()
        end
    },
    -- fugitive
    { 'tpope/vim-fugitive' },
    -- undotree
    { 'mbbill/undotree' },
    { 'github/copilot.vim' },
})
