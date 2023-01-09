local st, alpha = pcall(require, "alpha")
if not st then
    return
end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
"░░░░░▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄░░░░░░░░",
"░░░░░█░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▀▀▄░░░░",
"░░░░█░░░▒▒▒▒▒▒░░░░░░░░▒▒▒░░█░░░",
"░░░█░░░░░░▄██▀▄▄░░░░░▄▄▄░░░░█░░",
"░▄▀▒▄▄▄▒░█▀▀▀▀▄▄█░░░██▄▄█░░░░█░",
"█░▒█▒▄░▀▄▄▄▀░░░░░░░░█░░░▒▒▒▒▒░█",
"█░▒█░█▀▄▄░░░░░█▀░░░░▀▄░░▄▀▀▀▄▒█",
"░█░▀▄░█▄░█▀▄▄░▀░▀▀░▄▄▀░░░░█░░█░",
"░░█░░░▀▄▀█▄▄░█▀▀▀▄▄▄▄▀▀█▀██░█░░",
"░░░█░░░░██░░▀█▄▄▄█▄▄█▄████░█░░░",
"░░░░█░░░░▀▀▄░█░░░█░█▀██████░█░░",
"░░░░░▀▄░░░░░▀▀▄▄▄█▄█▄█▄█▄▀░░█░░",
"░░░░░░░▀▄▄░▒▒▒▒░░░░░░░░░░▒░░░█░",
"░░░░░░░░░░▀▀▄▄░▒▒▒▒▒▒▒▒▒▒░░░░█░",
"░░░░░░░░░░░░░░▀▄▄▄▄▄░░░░░░░░█░░",
}

dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( ";s", "  Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( ";c", "  Check Health", ":checkhealth<CR>"),
    dashboard.button( ";p", "  Check Plugins", ":PlugStatus<CR>"),
    dashboard.button( "?", "?  Manual Guide", ":help<CR>"),
    dashboard.button( "q", "  Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {"People say nothing is imposible, but I do nothing every day", "- Troll"}

alpha.setup(dashboard.config)
