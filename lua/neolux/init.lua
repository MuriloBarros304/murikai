local M = {}
local palette = require("neolux.palette")

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.opt.termguicolors = true

    vim.g.colors_name = "neolux"

    require("neolux.editor").setup()
    require("neolux.syntax").setup()
    -- require("neolux.plugins").setup()

    vim.g.terminal_color_0  = palette.bg         -- Black
    vim.g.terminal_color_1  = palette.pink       -- Red
    vim.g.terminal_color_2  = palette.green      -- Green
    vim.g.terminal_color_3  = palette.yellow     -- Yellow
    vim.g.terminal_color_4  = palette.blue       -- Blue
    vim.g.terminal_color_5  = palette.purple     -- Magenta
    vim.g.terminal_color_6  = palette.light_blue -- Cyan
    vim.g.terminal_color_7  = palette.fg         -- White
end

return M
