local status, lualine = pcall(require, 'lualine')
if not status then
    return
end

lualine.setup{
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = {left = '', right = ''},
        section_separators = {left = '', right = ''},
        always_divide_middle = true,
        globalstatus = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            {
                'filename',
                symbols = {modified = '*', readonly = '!', unnamed = 'noname', newfile = 'new'}
            },
        },
        lualine_c = {
            'branch',
            'diff',
        },
        lualine_x = {
            {
                'diagnostics',
                sources = {'nvim_diagnostic', 'nvim_lsp'},
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
                colored = false,
                always_visible = true,
            },
        },
        lualine_y = {{'filetype', colored = false}, 'filesize'},
        lualine_z = {'hostname'},
    },
}

