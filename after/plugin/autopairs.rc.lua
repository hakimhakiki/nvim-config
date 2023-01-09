local st, pairs = pcall(require, "nvim-autopairs")
if not st then
    return
end

pairs.setup{
    disable_filetype = { "TelescopePrompt" , "vim" },
}
