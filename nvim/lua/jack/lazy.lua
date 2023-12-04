require('lazy').setup({
    -- development
    { dir = "/home/jack/dev/pinky/nvim" },
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- colorschemes
    { 'matsuuu/pinkmare' },
    { 'xiyaowong/transparent.nvim' },
    -- autoclose pairs
    { 'Raimondi/delimitMate' },
    -- color preview
    { 'norcalli/nvim-colorizer.lua' },
    -- treesitter
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    { "nvim-treesitter/playground" },
    -- Mason for managing LSP servers
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
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
    { 'ThePrimeagen/harpoon' },
})
