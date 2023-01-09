local st, mason = pcall(require, "mason")
local ss, lsp = pcall(require, "mason-lspconfig")
if not st and not ss then
    return
end

mason.setup()
lsp.setup{
    automatic_installation = false
}
