return {

    'tjdevries/colorbuddy.nvim',

    dependencies = {
        'norcalli/nvim-colorizer.lua',
        "norcalli/nvim-terminal.lua",
        'tjdevries/gruvbuddy.nvim',
    },

    config = function()
        vim.opt.termguicolors = true
        require("terminal").setup()

        require("colorbuddy").colorscheme "gruvbuddy"
        local Color, colors, Group, groups, styles = require('colorbuddy').setup()

        Color.new('white', '#c8ccd4')
        Color.new('red', '#ff6b6b')
        Color.new('pink', '#efaed4')
        Color.new('green', '#8abeb7')
        Color.new('yellow', '#f0c674')
        Color.new('blue', '#81a2be')
        Color.new('aqua', '#ff00ff')
        Color.new('cyan', '#8abeb7')
        Color.new('purple', '#FFFF00')
        Color.new('violet', '#c489b3')
        Color.new('orange', '#00FF00')
        Color.new('brown', '#133047')

        Color.new('seagreen', '#698b69')
        Color.new('turquoise', '#698b69')

        require("colorizer").setup()

        Group.new("@variable", colors.superwhite, nil)

        Group.new("GoTestSuccess", colors.green, nil, styles.bold)
        Group.new("GoTestFail", colors.red, nil, styles.bold)

        -- Group.new('Keyword', c.purple, nil, nil)

        Group.new("TSPunctBracket", colors.orange:light():light())

        Group.new("StatuslineError1", colors.red:light():light(), groups.Statusline)
        Group.new("StatuslineError2", colors.red:light(), groups.Statusline)
        Group.new("StatuslineError3", colors.red, groups.Statusline)
        Group.new("StatuslineError3", colors.red:dark(), groups.Statusline)
        Group.new("StatuslineError3", colors.red:dark():dark(), groups.Statusline)

        Group.new("pythonTSType", colors.red)
        Group.new("goTSType", groups.Type.fg:dark(), nil, groups.Type)

        Group.new("typescriptTSConstructor", groups.pythonTSType)
        Group.new("typescriptTSProperty", colors.blue)

        -- vim.cmd [[highlight WinSeparator guifg=#4e545c guibg=None]]
        Group.new("WinSeparator", nil, nil)

        -- I don't think I like highlights for text
        -- Group.new("LspReferenceText", nil, c.gray0:light(), s.bold)
        -- Group.new("LspReferenceWrite", nil, c.gray0:light())

        -- Group.new("TSKeyword", c.purple, nil, s.underline, c.blue)
        -- Group.new("LuaFunctionCall", c.green, nil, s.underline + s.nocombine, g.TSKeyword.guisp)

        Group.new("TSTitle", colors.blue)

        -- TODO: It would be nice if we could only highlight
        -- the text with characters or something like that...
        -- but we'll have to stick to that for later.
        Group.new("InjectedLanguage", nil, groups.Normal.bg:dark())

        Group.new("LspParameter", nil, nil, styles.italic)
        Group.new("LspDeprecated", nil, nil, styles.strikethrough)
        Group.new("@function.bracket", groups.Normal, groups.Normal)
        Group.new("@variable.builtin", colors.purple:light():light(), groups.Normal)

        -- Group.new("VirtNonText", c.yellow:light():light(), nil, s.italic)
        Group.new("VirtNonText", colors.gray3:dark(), nil, styles.italic)

        Group.new("TreesitterContext", nil, groups.Normal.bg:light())
        Group.new("TreesitterContextLineNumber", colors.blue)
        -- hi TreesitterContextBottom gui=underline guisp=Grey
        -- Group.new("TreesitterContextBottom", nil, nil, s.underline)

        Group.new("@property", colors.blue)
        Group.new("@punctuation.bracket.rapper", colors.gray3, nil, styles.none)
        Group.new("@rapper_argument", colors.red, nil, styles.italic)
        Group.new("@rapper_return", colors.orange:light(), nil, styles.italic)
        Group.new("@constructor.ocaml", colors.orange:light(), nil, styles.none)
        Group.new("constant", colors.orange, nil, styles.none)

        Group.new("@keyword", colors.violet, nil, styles.none)
        Group.new("@keyword.faded", groups.nontext.fg:light(), nil, styles.none)
        -- Group.new("@keyword.faded", c.green)

        Group.new("Function", colors.yellow, nil, styles.none)

        vim.cmd [[
            hi link @function.call.lua LuaFunctionCall
            hi link @lsp.type.variable.lua variable
            hi link @lsp.type.variable.ocaml variable
            hi link @lsp.type.variable.rust variable
            hi link @lsp.type.namespace @namespace
            hi link @punctuation.bracket.rapper @text.literal
            hi link @normal Normal
        ]]

        Group.new("Normal", colors.superwhite, colors.gray0)

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
