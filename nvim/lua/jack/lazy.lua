require('lazy').setup({
    -- development
    -- { dir = "/home/jack/dev/pinky/nvim" },
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
    -- undotree
    { 'mbbill/undotree' },
    { 'github/copilot.vim' },
})
