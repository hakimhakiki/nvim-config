local status, bufferline = pcall(require, "bufferline")
if not status then
    return
end

bufferline.setup{
    options = {
        mode = "buffers",
        numbers = "none",
        separator_style = "thick",
        modified_icon = '*',
        sort_by = 'id',
        color_icons = false,
        --offsets = {
        --    {
        --        filetype = "NvimTree",
        --        text = "File Explorer",
        --        text_align = "center",
        --        separator = true
        --    }
        --},
    }
}
