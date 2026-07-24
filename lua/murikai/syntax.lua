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
        Conditional    = { fg = palette.pink, bold = true }, -- if, then, else
        Repeat         = { fg = palette.pink, bold = true }, -- for, while
        Label          = { fg = palette.pink },
        Operator       = { fg = palette.pink },
        Keyword        = { fg = palette.pink, bold = true },
        Exception      = { fg = palette.pink, bold = true }, -- try, catch
        PreProc        = { fg = palette.light_blue }, -- import, from
        Include        = { fg = palette.blue },
        Define         = { fg = palette.purple },
        Type           = { fg = palette.light_blue }, -- class, int, string
        StorageClass   = { fg = palette.light_blue },
        Structure      = { fg = palette.light_blue },
        Typedef        = { fg = palette.light_blue },
        Special        = { fg = palette.blue },
        Identifier     = { fg = palette.fg },
        Constant       = { fg = palette.purple },
        -- Delimiter      = { fg = palette.yellow }, -- brackets (, [, {

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
        ["@punctuation.delimiter"] = { fg = palette.beige }, -- Commas, colons
        ["@property"]           = { fg = palette.light_blue }, -- e.g., the 'name' in user.name
        ["@function.method"]    = { link = "Function" }, -- Green for class methods
        ["@function.method.call"] = { link = "Function" },
        ["@module"]             = { fg = palette.fg }, -- e.g., the 'numpy' in 'import numpy'
        ["@string.escape"]      = { fg = palette.purple, bold = true }, -- \n, \t
        ["@string.regexp"]      = { fg = palette.blue }, -- Regex patterns
        ["@tag"]                = { fg = palette.pink }, -- <div>, <MyComponent>
        ["@tag.attribute"]      = { fg = palette.green, italic = true }, -- className, onClick
        ["@tag.delimiter"]      = { fg = palette.yellow }, -- The < and > brackets
        ["@operator"]           = { link = "Operator" }, -- +, -, =, ->
        ["@keyword.directive"]  = { fg = palette.pink }, -- #include, #define in C
        ["@keyword.import"]     = { link = "Include" }, -- import, require

        -- 3. RAINBOW DELIMITERS
        ["@punctuation.bracket"] = { fg = palette.yellow }, -- Fallback for standard brackets
        RainbowDelimiterYellow = { fg = palette.yellow },
        RainbowDelimiterOrange = { fg = palette.orange },
        RainbowDelimiterRed    = { fg = palette.pink },
        RainbowDelimiterCyan   = { fg = palette.light_blue },
        RainbowDelimiterBlue   = { fg = palette.blue },
        RainbowDelimiterViolet = { fg = palette.purple },
        RainbowDelimiterGreen = {fg = palette.green},

        -- 4. MARKDOWN STRUCTURE
        ["@markup.heading.1.markdown"]      = { fg = palette.pink, bold = true },
        ["@markup.heading.2.markdown"]      = { fg = palette.orange, bold = true },
        ["@markup.heading.3.markdown"]      = { fg = palette.yellow, bold = true },
        ["@markup.heading.4.markdown"]      = { fg = palette.green, bold = true },
        ["@markup.heading.5.markdown"]      = { fg = palette.light_blue, bold = true },
        ["@markup.heading.6.markdown"]      = { fg = palette.purple, bold = true },
        ["@markup.link.url.markdown"]       = { fg = palette.blue, underline = true },
        ["@markup.link.label.markdown"]     = { fg = palette.green },

        -- 5. GIT SIGNS
        GitSignsAdd    = { fg = palette.green, bg = "NONE" }, -- New lines
        GitSignsChange = { fg = palette.yellow, bg = "NONE" }, -- Changed lines
        GitSignsDelete = { fg = palette.pink, bg = "NONE" },   -- Deleted lines

        -- 6. LSP DIAGNOSTICS
        DiagnosticError = { fg = palette.pink },
        DiagnosticWarn  = { fg = palette.yellow },
        DiagnosticInfo  = { fg = palette.light_blue },
        DiagnosticHint  = { fg = palette.beige },
        DiagnosticUnderlineError = { sp = palette.pink, undercurl = true },
        DiagnosticUnderlineWarn  = { sp = palette.yellow, undercurl = true },
        DiagnosticUnderlineInfo  = { sp = palette.light_blue, undercurl = true },
        DiagnosticUnderlineHint  = { sp = palette.beige, undercurl = true },
    }

    -- Loop through and apply
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
