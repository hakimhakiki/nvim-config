local ss, telescope = pcall(require, "telescope")
if not ss then
    return
end

telescope.setup{
    defaults = {
        sorting_strategy = "ascending",
        wrap_results = false,
        prompt_prefix = "> ",
        selection_caret = "> ",
        initial_mode = "insert",
        border = true,
        color_devicons = false,
    }
}

