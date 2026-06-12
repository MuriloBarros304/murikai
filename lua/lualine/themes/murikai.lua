-- 1. Pull in the centralized color palette
local palette = require("murikai.palette")

-- 2. Define the background UI grays
local ui_bg     = "#1c1b19"
local ui_bg_alt = "#262522"

-- 3. Optimization: Section C is the same across most modes
local section_c = { bg = ui_bg, fg = palette.fg }

-- 4. Map the modes
return {
    normal = {
        -- Blue for Normal mode
        a = { bg = palette.blue, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    insert = {
        -- Green for Insert mode
        a = { bg = palette.green, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    visual = {
        -- Orange for Visual mode
        a = { bg = palette.orange, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    replace = {
        -- Pink for Replace mode
        a = { bg = palette.pink, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    command = {
        -- Yellow for Command mode
        a = { bg = palette.yellow, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    terminal = {
        -- Light Blue for Terminal mode
        a = { bg = palette.light_blue, fg = palette.bg, gui = 'bold' },
        b = { bg = ui_bg_alt, fg = palette.fg },
        c = section_c
    },
    inactive = {
        -- Muted beige and grays when the split window is not focused
        a = { bg = ui_bg_alt, fg = palette.beige, gui = 'bold' },
        b = { bg = ui_bg, fg = palette.beige },
        c = { bg = palette.bg, fg = palette.beige }
    }
}
