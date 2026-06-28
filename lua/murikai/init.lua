local M = {}
local palette = require("murikai.palette")

function M.setup()
    -- 1. Clear out any existing highlights so colors don't bleed over
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- 2. Tell Neovim the official name of the active theme
    vim.g.colors_name = "murikai"

    -- 3. Load all our modular highlight groups
    require("murikai.editor").setup()
    require("murikai.syntax").setup()
    -- require("murikai.plugins").setup()

    -- Terminal Colors for seamless :terminal experience
    vim.g.terminal_color_0  = palette.bg         -- Black
    vim.g.terminal_color_1  = palette.pink       -- Red
    vim.g.terminal_color_2  = palette.green      -- Green
    vim.g.terminal_color_3  = palette.yellow     -- Yellow
    vim.g.terminal_color_4  = palette.blue       -- Blue
    vim.g.terminal_color_5  = palette.purple     -- Magenta
    vim.g.terminal_color_6  = palette.light_blue -- Cyan
    vim.g.terminal_color_7  = palette.fg         -- White

    -- Bright versions (using slightly lighter/different palette shades)
    vim.g.terminal_color_8  = "#666666"          -- Bright Black (Gray)
    vim.g.terminal_color_9  = "#ff6e9e"          -- Bright Red
    vim.g.terminal_color_10 = "#c8fe4a"          -- Bright Green
    vim.g.terminal_color_11 = palette.beige      -- Bright Yellow
    vim.g.terminal_color_12 = "#5ab0f0"          -- Bright Blue
    vim.g.terminal_color_13 = "#b88afa"          -- Bright Magenta
    vim.g.terminal_color_14 = palette.orange     -- Bright Cyan
    vim.g.terminal_color_15 = "#ffffff"          -- Bright White
end

return M
