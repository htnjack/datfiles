local colors = {
    black   = "#1c2023",
    grey    = '#2c2e34',
    blue    = "#81a2be",
    cyan    = "#8abeb7",
    green   = "#8abeb7",
    magenta = "#efaed4",
    red     = "#ff6b6b",
    white   = "#c7ccd1",
    yellow  = "#f0c674",
    violet  = '#c489b3',
}

local hare = {
    normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.magenta, bg = colors.grey },
        c = { fg = colors.magenta, bg = colors.black },
        x = { fg = colors.magenta, bg = colors.grey },
        y = { fg = colors.magenta, bg = colors.grey },
        z = { fg = colors.black, bg = colors.green },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },
    command = { a = { fg = colors.black, bg = colors.blue } },

    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.black, bg = colors.black },
    },
}

local Modes = {
    normal = " N ",
    insert = " I ",
    command = " C ",
    visual = " V ",
    v_line = "VL ",
    v_block = "VB ",
}

local formatted_mode = function(str)
    local mode = string.gsub(str, "-", "_")
    mode = string.lower(mode)
    if Modes[mode] then
        return Modes[mode]
    end
    return mode .. "!!"
end

local setup = function()
    vim.opt.showmode = false
    require('lualine').setup {
        options = {
            theme = hare,
            component_separators = '❘',
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = {
                { 'mode', separator = { left = '', right = '' }, fmt = formatted_mode },
            },
            lualine_b = { 'filename' },
            lualine_c = { 'fileformat', 'branch', 'diff' },
            lualine_x = {},
            lualine_y = { 'filetype', 'encoding', 'progress' },
            lualine_z = {
                { 'location', separator = { left = '', right = '' } },
            },
        },
        inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
        },
        tabline = {},
        extensions = {},
    }
end

return {
    "nvim-lualine/lualine.nvim",
    config = setup,
}
