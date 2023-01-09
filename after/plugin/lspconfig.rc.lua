local st, lspconfig = pcall(require, "lspconfig")
if not st then
    return
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    -- Enable completion
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local bufopt = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopt)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopt)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopt)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopt)
    vim.keymap.set('n', '<space>r', vim.lsp.buf.references, bufopt)
end

local lsp_flag = {
    debounce_text_changes = 150,
}

local root_dir = function()
  return vim.fn.getcwd()
end

lspconfig.intelephense.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = root_dir,
    flags = lsp_flag
}

lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = root_dir,
    flags = lsp_flag
}

lspconfig.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = root_dir,
    flags = lsp_flag
}

lspconfig.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = root_dir,
    flags = lsp_flag
}
