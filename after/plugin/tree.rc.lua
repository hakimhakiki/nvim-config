local status, tree = pcall(require, "nvim-tree")
if not status then
    return
end

tree.setup{
    sort_by = 'name',
    view = {
        adaptive_size = true,
        side = 'right'
    },
    renderer = {
        add_trailing = true,
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
        icons = {
            webdev_colors = false ,
            show = {
                file = true,
                folder = false,
                folder_arrow = true
            },
            glyphs = {
                folder = {
                    arrow_closed = " ",
                    arrow_open = " "
                }
            },
        },
    }
}
