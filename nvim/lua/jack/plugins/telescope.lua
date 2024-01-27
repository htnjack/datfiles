return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    },
    config = function()
        require('telescope').setup {
            defaults = {
                theme = "dropdown",
            },
        }
        require('telescope').load_extension('fzf')
        local builtin = require("telescope.builtin")

        local ivy = require('telescope.themes').get_ivy()
        vim.keymap.set("n", "<leader>tf", function()
            builtin.find_files(ivy)
        end, {})
        vim.keymap.set("n", "<C-p>", function()
            builtin.git_files(ivy)
        end, {})
        vim.keymap.set("n", "<leader>ts", function()
            builtin.grep_string(ivy, { search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set("n", "<leader>th", function()
            builtin.help_tags(ivy)
        end, {})
    end,
}
