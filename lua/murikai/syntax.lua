local palette = require("murikai.palette")

local M = {}

function M.setup()
    local groups = {
        -- 1. TRADITIONAL SYNTAX GROUPS
        -- These act as a fallback and foundation.
        Comment        = { fg = palette.beige, italic = true },
        String         = { fg = palette.orange },
        Character      = { fg = palette.orange },
        Number         = { fg = palette.purple },
        Float          = { fg = palette.purple },
        Boolean        = { fg = palette.purple },
        Function       = { fg = palette.green },
        Statement      = { fg = palette.pink },
        Conditional    = { fg = palette.pink }, -- if, then, else
        Repeat         = { fg = palette.pink }, -- for, while
        Label          = { fg = palette.pink },
        Operator       = { fg = palette.fg },
        Keyword        = { fg = palette.pink },
        Exception      = { fg = palette.pink }, -- try, catch
        PreProc        = { fg = palette.light_blue }, -- import, from
        Include        = { fg = palette.light_blue },
        Define         = { fg = palette.light_blue },
        Type           = { fg = palette.light_blue }, -- class, int, string
        StorageClass   = { fg = palette.light_blue },
        Structure      = { fg = palette.light_blue },
        Typedef        = { fg = palette.light_blue },
        Special        = { fg = palette.blue },
        Identifier     = { fg = palette.fg },
        Constant       = { fg = palette.purple },
        Delimiter      = { fg = palette.yellow }, -- brackets (, [, {
        
        -- 2. MODERN TREE-SITTER GROUPS
        ["@variable"]           = { fg = palette.fg }, -- Normal variables
        ["@variable.builtin"]   = { fg = palette.purple }, -- 'self' or 'this'
        ["@variable.parameter"] = { fg = palette.orange }, -- Function arguments
        
        ["@function"]           = { link = "Function" },
        ["@function.builtin"]   = { fg = palette.light_blue }, -- print(), len()
        
        ["@keyword"]            = { link = "Keyword" },
        ["@keyword.function"]   = { fg = palette.light_blue }, -- 'def' or 'function'
        ["@keyword.return"]     = { fg = palette.pink }, -- 'return'
        
        ["@type"]               = { link = "Type" },
        ["@type.builtin"]       = { fg = palette.light_blue }, -- built-in types
        
        ["@constant"]           = { link = "Constant" },
        ["@constant.builtin"]   = { fg = palette.purple }, -- 'None', 'NULL', 'True', 'False'
        
        ["@constructor"]        = { fg = palette.light_blue }, -- '__init__'
        
        ["@string"]             = { link = "String" },
        ["@number"]             = { link = "Number" },
        ["@boolean"]            = { link = "Boolean" },
        
        ["@comment"]            = { link = "Comment" },
        
        ["@punctuation.bracket"]   = { fg = palette.yellow }, -- Standard brackets
        ["@punctuation.delimiter"] = { fg = palette.fg },     -- Commas, colons
    }

    -- Loop through and apply
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
