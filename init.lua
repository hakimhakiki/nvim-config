
-- Load Plugin
vim.cmd("runtime ./plugins.vim" )

-- Editor
vim.cmd("")
vim.o.syntax = true
vim.o.number = true
vim.o.relativenumber = false
vim.o.title = true

-- Cursor
vim.o.cursorline = true
vim.o.cursorcolumn = false
vim.o.scrolloff = 10
vim.opt.guicursor:append {'a:blinkwait500-blinkoff250-blinkon250-Cursor/lCursor'}

-- Wraping
vim.o.wrap = true
vim.o.linebreak = true

-- Statusline
vim.o.showmode = false
vim.o.showcmd = true

-- Folding
vim.o.foldmethod = 'marker'

-- Indent
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- Searching
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.smartcase = true

-- Colors
vim.o.termguicolors = true
vim.cmd('colorscheme dracula')
vim.o.background = 'dark'
vim.wo.winblend = 0
vim.go.pumblend = 5
vim.o.wildoptions = 'pum'

-- Popup and autocomplete
vim.opt.complete:append {'kspell'}
vim.opt.backspace = {'indent', 'eol', 'start'}
vim.opt.completeopt = {'menu', 'menuone', 'noinsert', 'noselect'}
vim.opt.spelllang = {'en', 'cjk'}
vim.opt.spellsuggest:append {9}

-- Clipboard
vim.opt.clipboard = {'unnamedplus'}

-- Path
vim.opt.path:append {'**'}
vim.opt.wildignore:append {'*/node_modules/*'}

-- Shell
vim.o.shell = 'fish'

-- Timeout lenght
vim.go.timeoutlen = 300
