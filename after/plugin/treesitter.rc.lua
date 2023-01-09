local st, sitter = pcall(require, "nvim-treesitter.configs")
if not st then
    return
end

sitter.setup{
    ensure_installed = {'lua', 'php', 'javascript', 'html', 'css'},
    sync_install = true,
    auto_install = false,
    ignore_install = {'json', 'xml'},
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local max_filesize = 10 * 1024 -- 10 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            -- disabled by language because bug
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end
    },
    indent = {
        enable = true
    }
}
