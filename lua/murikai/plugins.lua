local palette = require("murikai.palette")

local M = {}

function M.setup()
    -- Reusing our UI background shades for sidebars and floating windows
    local ui_bg        = "#1c1b19"
    local ui_bg_alt    = "#262522"
    local ui_bg_visual = "#312f2c"

    local groups = {
        -- 1. Neo-tree (The File Explorer)
        NeoTreeNormal         = { fg = palette.fg, bg = ui_bg },
        NeoTreeNormalNC       = { fg = palette.fg, bg = ui_bg },
        NeoTreeDirectoryIcon  = { fg = palette.blue },
        NeoTreeDirectoryName  = { fg = palette.light_blue, bold = true },
        NeoTreeFileName       = { fg = palette.fg },
        NeoTreeGitAdded       = { fg = palette.green },
        NeoTreeGitConflict    = { fg = palette.pink },
        NeoTreeGitDeleted     = { fg = palette.pink },
        NeoTreeGitIgnored     = { fg = palette.beige },
        NeoTreeGitModified    = { fg = palette.yellow },

        -- 2. Telescope (The Fuzzy Finder)
        TelescopeNormal       = { fg = palette.fg, bg = ui_bg },
        TelescopeBorder       = { fg = ui_bg_alt, bg = ui_bg },
        TelescopePromptNormal = { fg = palette.fg, bg = ui_bg_alt },
        TelescopePromptBorder = { fg = ui_bg_alt, bg = ui_bg_alt },
        TelescopePromptTitle  = { fg = palette.bg, bg = palette.orange, bold = true },
        TelescopePreviewTitle = { fg = palette.bg, bg = palette.green, bold = true },
        TelescopeSelection    = { bg = ui_bg_visual },
        TelescopeMatching     = { fg = palette.orange, bold = true },

        -- 3. Gitsigns (Git status in the gutter)
        -- We set 'bg' to "NONE" so it blends seamlessly with the line numbers
        GitSignsAdd           = { fg = palette.green, bg = "NONE" },
        GitSignsChange        = { fg = palette.yellow, bg = "NONE" },
        GitSignsDelete        = { fg = palette.pink, bg = "NONE" },

        -- 4. Blink.cmp (The Completion Engine)
        BlinkCmpMenu          = { fg = palette.fg, bg = ui_bg },
        BlinkCmpMenuBorder    = { fg = ui_bg_alt, bg = ui_bg },
        BlinkCmpMenuSelection = { bg = ui_bg_visual, reverse = true },
        BlinkCmpDoc           = { fg = palette.fg, bg = ui_bg },
        BlinkCmpDocBorder     = { fg = ui_bg_alt, bg = ui_bg },
        BlinkCmpLabelMatch    = { fg = palette.orange, bold = true }, -- The typed characters

        -- 5. Mini.icons (Filetype Icons)
        -- Mini.icons sets baseline colors for different file extensions
        MiniIconsAzure        = { fg = palette.blue },
        MiniIconsBlue         = { fg = palette.light_blue },
        MiniIconsCyan         = { fg = palette.light_blue },
        MiniIconsGreen        = { fg = palette.green },
        MiniIconsGrey         = { fg = palette.beige },
        MiniIconsOrange       = { fg = palette.orange },
        MiniIconsPurple       = { fg = palette.purple },
        MiniIconsRed          = { fg = palette.pink },
        MiniIconsYellow       = { fg = palette.yellow },
    }

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
