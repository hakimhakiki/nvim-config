local status, whichkey = pcall(require, "which-key")
if not status then
    return
end

whichkey.setup{
    icons = {
        breadcrumb = "»",
        separator = "➜ ",
        group = "+", 
    },
    popup_mappings = {
        scroll_down = '<c-d>',
        scroll_up = '<c-u>'
    },
    window = {
        border = "double",
        position = "bottom",
    }
}

-- Mappings
local opts = {
    mode = 'n',
    silent = true,
    noremap = true
}

local builtin = require("telescope.builtin")
local mappings = {
    [';'] = {
        name = "Safe mappings",
        n = {"<cmd>bnext<cr>", "Next Buffer"},
        p = {"<cmd>bprevious<cr>", "Previous Buffer"},
        d = {"<cmd>bdelete<cr>", "Delete current buffer"},
        t = {
            name = "Telescope Mapping",
            f = {builtin.find_files, "Find File in Working Directory"},
            g = {builtin.live_grep, "Find Word in Current File"},
            b = {builtin.buffer, "Switch Buffer"}
        },
        o = {"<cmd>NvimTreeOpen<cr>", "Open File Tree"},
        c = {"<cmd>NvimTreeClose<cr>", "Close File Tree"}
    },
}

whichkey.register(mappings, opts)




