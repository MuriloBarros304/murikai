local M = {}

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
    require("murikai.plugins").setup()
end

return M
