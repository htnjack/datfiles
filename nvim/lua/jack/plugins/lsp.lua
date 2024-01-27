local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.keymap.set({ 'n', 'x' }, '<leader>f', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
end

return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        "jose-elias-alvarez/null-ls.nvim",
        "nvim-lua/plenary.nvim",
        'github/copilot.vim',
    },
    config = function()
        local cmp = require("cmp")
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                'lua_ls', 'rust_analyzer', 'pyright', 'html', 'gopls', 'html', 'htmx', 'ocamllsp', 'vimls', 'yamlls',
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({ capabilities = capabilities, on_attach = on_attach })
                end,
                ["ocamllsp"] = function()
                    require("lspconfig").ocamllsp.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
                        get_language_id = function(_, ftype)
                            return ftype
                        end,
                    })
                end,
                ["htmx"] = function()
                    require("lspconfig").html.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "html", "templ" },
                    })
                end,
                ["html"] = function()
                    require("lspconfig").html.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "html", "templ" },
                    })
                end,
                ["pyright"] = function()
                    local null_ls = require("null-ls")
                    null_ls.setup({
                        sources = {
                            -- python
                            null_ls.builtins.formatting.black.with({
                                extra_args = { "--line-length=120" }
                            }),
                            null_ls.builtins.formatting.isort,
                        }
                    })
                    require("lspconfig").pyright.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        on_new_config = function(new_config, dir)
                            if require("util").dir_has_file(dir, "poetry.lock") then
                                vim.notify_once("Running `pyright` with `poetry`")
                                new_config.cmd = { "poetry", "run", "pyright-langserver", "--stdio" }
                            elseif require("util").dir_has_file(dir, "Pipfile") then
                                vim.notify_once("Running `pyright` with `pipenv`")
                                new_config.cmd = { "pipenv", "run", "pyright-langserver", "--stdio" }
                            else
                                vim.notify_once("Running `pyright` without a virtualenv")
                            end
                        end,
                    })
                end
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<C-y>'] = cmp.mapping.confirm({ select = false }),
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<S-Tab>'] = nil,
                ['<Tab>'] = nil,
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
            })
        })
    end,
}
