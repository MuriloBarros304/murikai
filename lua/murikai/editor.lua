local palette = require("murikai.palette")

local M = {}

function M.setup()
    local ui_bg        = "#0c0c0c" -- gray1
    local ui_bg_alt    = "#393e46" -- gray2
    local ui_bg_visual = "#57595B" -- gray3

    local groups = {
        -- 1. Base Editor UI
        Normal       = { fg = palette.fg, bg = palette.bg },
        NonText      = { fg = ui_bg_visual },
        ColorColumn  = { bg = ui_bg_alt },
 
        -- 2. Visual Selection
        Visual       = { bg = ui_bg_visual },
        VisualNOS    = { link = "Visual" },

        -- 3. Cursor & Lines
        Cursor       = { fg = palette.bg, bg = palette.orange },
        CursorLine   = { bg = ui_bg },
        CursorColumn = { link = "CursorLine" },
        LineNr       = { fg = palette.beige },
        CursorLineNr = { fg = palette.yellow, bg = palette.bg, bold = true },
        FieryYank    = { fg = palette.fg, bg = palette.orange, bold = true },
        IlluminatedWordText  = { reverse = true },
        IlluminatedWordRead  = { reverse = true },
        IlluminatedWordWrite = { reverse = true },
        LspReferenceText     = { reverse = true },
        LspReferenceRead     = { reverse = true },
        LspReferenceWrite    = { reverse = true },

        -- 4. Window Splits
        VertSplit    = { fg = ui_bg_visual, bg = palette.bg },
        WinSeparator = { fg = ui_bg_visual, bg = palette.bg },
 
        -- 5. Searching
        Search       = { fg = palette.bg, bg = palette.yellow },
        IncSearch    = { fg = palette.bg, bg = palette.orange, underline = true },
        CurSearch    = { link = "IncSearch" },
 
        -- 6. Pmenu (Popups like autocompletion)
        Pmenu        = { fg = palette.fg, bg = ui_bg },
        PmenuSel     = { bg = ui_bg_visual, reverse = true },
        PmenuSbar    = { bg = ui_bg_visual },
        PmenuThumb   = { bg = palette.fg },

        -- 7. Messages
        ErrorMsg     = { fg = palette.fg, bg = palette.pink },
        WarningMsg   = { fg = palette.pink, bold = true },
        MoreMsg      = { fg = palette.yellow, bold = true },
        ModeMsg      = { fg = palette.yellow, bold = true },
        Question     = { fg = palette.orange, bold = true },

        -- 8. Tabs
        TabLineSel   = { fg = palette.ui_bg_alt, bg = palette.orange, bold = true },
        TabLine      = { fg = palette.fg, bg = ui_bg_alt },
        TabLineFill  = { bg = ui_bg },

    }

    -- 9. The Engine: Loop through the table and apply highlights
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
