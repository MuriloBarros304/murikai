local palette = require("murikai.palette")

local section_c = { bg = palette.gray1, fg = palette.fg }

-- Map the modes
return {
    normal = {
        -- Blue for Normal mode
        a = { bg = palette.blue, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    insert = {
        -- Green for Insert mode
        a = { bg = palette.green, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    visual = {
        -- Orange for Visual mode
        a = { bg = palette.orange, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    replace = {
        -- Pink for Replace mode
        a = { bg = palette.pink, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    command = {
        -- Yellow for Command mode
        a = { bg = palette.yellow, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    terminal = {
        -- Light Blue for Terminal mode
        a = { bg = palette.light_blue, fg = palette.bg, gui = 'bold' },
        b = { bg = palette.gray2, fg = palette.fg },
        c = section_c
    },
    inactive = {
        -- Muted beige and grays when the split window is not focused
        a = { bg = palette.gray2, fg = palette.beige, gui = 'bold' },
        b = { bg = palette.gray1, fg = palette.beige },
        c = { bg = palette.bg, fg = palette.beige }
    }
}
