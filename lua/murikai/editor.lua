local palette = require("murikai.palette")

local M = {}

function M.setup()
    local ui_bg        = "#1c1b19" -- gray1
    local ui_bg_alt    = "#262522" -- gray2
    local ui_bg_visual = "#312f2c" -- gray3

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
    }

    -- 8. The Engine: Loop through the table and apply highlights
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
