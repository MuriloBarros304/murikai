local palette = require("murikai.palette")

local M = {}

function M.setup()
    -- local ui_bg        = "#0c0c0c" -- gray1
    -- local ui_bg_alt    = "#393e46" -- gray2
    -- local ui_bg_visual = "#57595B" -- gray3

    local groups = {
        -- 1. Base Editor UI
        Normal       = { fg = palette.fg, bg = palette.bg },
        NonText      = { fg = palette.gray3 },
        ColorColumn  = { bg = palette.gray2 },
 
        -- 2. Visual Selection
        Visual       = { reverse = true },
        VisualNOS    = { link = "Visual" },

        -- 3. Cursor & Lines
        Cursor       = { fg = palette.bg, bg = palette.orange },
        CursorLine   = { bg = palette.gray1 },
        CursorColumn = { link = "CursorLine" },
        LineNr       = { fg = palette.orange },
        CursorLineNr = { fg = palette.yellow, bg = palette.bg, bold = true },
        FieryYank    = { fg = palette.fg, bg = palette.orange, bold = true },
        IlluminatedWordText  = { reverse = true },
        IlluminatedWordRead  = { reverse = true },
        IlluminatedWordWrite = { reverse = true },
        LspReferenceText     = { reverse = true },
        LspReferenceRead     = { reverse = true },
        LspReferenceWrite    = { reverse = true },

        -- 4. Window Splits
        VertSplit    = { fg = palette.gray3, bg = palette.bg },
        WinSeparator = { fg = palette.gray3, bg = palette.bg },
 
        -- 5. Searching
        Search       = { fg = palette.bg, bg = palette.yellow },
        IncSearch    = { fg = palette.bg, bg = palette.orange, underline = true },
        CurSearch    = { link = "IncSearch" },
 
        -- 6. Pmenu (Popups like autocompletion)
        Pmenu        = { fg = palette.fg, bg = palette.gray1 },
        PmenuSel     = { bg = palette.gray3, reverse = true },
        PmenuSbar    = { bg = palette.gray3 },
        PmenuThumb   = { bg = palette.fg },

        -- 7. Messages
        ErrorMsg     = { fg = palette.fg, bg = palette.pink },
        WarningMsg   = { fg = palette.pink, bold = true },
        MoreMsg      = { fg = palette.yellow, bold = true },
        ModeMsg      = { fg = palette.yellow, bold = true },
        Question     = { fg = palette.orange, bold = true },

        -- 8. Tabs and NeoTree
        TabLineSel   = { fg = palette.gray2, bg = palette.orange, bold = true },
        TabLine      = { fg = palette.fg, bg = palette.gray1 },
        TabLineFill  = { bg = palette.gray2 },
        NeoTreeNormal   = { fg = palette.gray3, bg = palette.bg },
        NeoTreeNormalNC = { fg = palette.gray3, bg = palette.bg },
        NeoTreeFileName = { fg = palette.yellow },
        NeoTreeDirIcon  = { fg = palette.gray3 },
        NeoTreeIndentMarker = { fg = palette.gray1 },

        -- 9. LSP Diagnostics
        -- DiagnosticError       = { fg = palette.pink, undercurl = true },
        DiagnosticError       = { fg = palette.pink },
        DiagnosticWarn        = { fg = palette.yellow },
        DiagnosticInfo        = { fg = palette.light_blue },
        DiagnosticHint        = { fg = palette.beige },

        -- Virtual text adjustments
        DiagnosticVirtualTextError = { fg = palette.pink, bg = palette.gray2 },
        DiagnosticVirtualTextWarn  = { fg = palette.yellow, bg = palette.gray1 },

        -- 10. Indentation Guides
        IblIndent = { fg = palette.gray2 }, -- For indent-blankline
        IblScope  = { fg = palette.gray3 },
        MiniIndentscopeSymbol = { fg = palette.gray2 }, -- For mini.indentscope

        -- 11. Floating Windows (Lazy, Mason, Hover Docs)
        NormalFloat  = { fg = palette.fg, bg = palette.gray1 },
        FloatBorder  = { fg = palette.gray3, bg = palette.gray1 },
        FloatTitle   = { fg = palette.orange, bg = palette.gray1, bold = true },

        -- Lazy.nvim Specifics (Lazy sometimes overrides standard floats)
        LazyNormal   = { fg = palette.fg, bg = palette.gray1 },
        LazyBorder   = { fg = palette.gray3, bg = palette.gray1 },

        -- Mason Specifics
        MasonNormal  = { link = "NormalFloat" },
        MasonHeader  = { fg = palette.bg, bg = palette.pink, bold = true },
    }

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
