local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    [[ __        __   _  ____ ___  __  __ _____   ____    _    ____ _  __ ]],
    [[ \ \      / /__| |/ ___/ _ \|  \/  | ____| | __ )  / \  / ___| |/ / ]],
    [[  \ \ /\ / / _ \ | |  | | | | |\/| |  _|   |  _ \ / _ \| |   | ' /  ]],
    [[   \ V  V /  __/ | |__| |_| | |  | | |___  | |_) / ___ \ |___| . \  ]],
    [[    \_/\_/ \___|_|\____\___/|_|  |_|_____| |____/_/   \_\____|_|\_\ ]],
    [[                      _               _   _                         ]],
    [[             ___  ___| |__   __ _ ___| |_(_) __ _ _ __              ]],
    [[            / __|/ _ \ '_ \ / _` / __| __| |/ _` | '_ \             ]],
    [[            \__ \  __/ |_) | (_| \__ \ |_| | (_| | | | |            ]],
    [[            |___/\___|_.__/ \__,_|___/\__|_|\__,_|_| |_|            ]],
    [[                                                                   ]]
}
dashboard.section.buttons.val = {
	dashboard.button("f", "⌕ Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "SebCodesTheWeb"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
