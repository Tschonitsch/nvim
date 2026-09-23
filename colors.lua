--     _   _            _   _ _            
--    | \ | |          | | | (_)           
--    |  \| | ___  ___ | | | |_ _ __ ___   
--    | . ` |/ _ \/ _ \| | | | | '_ ` _ \  
--    | |\  |  __/ (_) \ \_/ / | | | | | | 
--    \_| \_/\___|\___/ \___/|_|_| |_| |_| 

vim.api.nvim_set_hl(0, "Normal", { fg = "#e3e2e2", bg = "#121414" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f2020" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#1f2020" })
vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#464747" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#121414" })

vim.api.nvim_set_hl(0, "Visual", { bg = "#3a494e", fg = "#243337" })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = "#292a2a" })

vim.api.nvim_set_hl(0, "Search", { bg = "#b9c9cf", fg = "#243337" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#b2cbd3", fg = "#121414" })
vim.api.nvim_set_hl(0, "CurSearch", { bg = "#b9c9cf", fg = "#243337" })

vim.api.nvim_set_hl(0, "MatchParen", { bg = "#343535", fg = "#b9c9cf", bold = true })

vim.api.nvim_set_hl(0, "Comment", { fg = "#919091", italic = true })
vim.api.nvim_set_hl(0, "Todo", { fg = "#b9c9cf", bold = true })

vim.api.nvim_set_hl(0, "Constant", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "String", { fg = "#bfc8cb" })
vim.api.nvim_set_hl(0, "Character", { fg = "#bfc8cb" })
vim.api.nvim_set_hl(0, "Number", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "Boolean", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "Float", { fg = "#b2cbd3" })

vim.api.nvim_set_hl(0, "Identifier", { fg = "#e3e2e2" })
vim.api.nvim_set_hl(0, "Function", { fg = "#b9c9cf" })

vim.api.nvim_set_hl(0, "Statement", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Repeat", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Label", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#e3e2e2" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Exception", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "PreProc", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "Include", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Define", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "Macro", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "PreCondit", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "Type", { fg = "#bfc8cb" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Structure", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Typedef", { fg = "#bfc8cb" })

vim.api.nvim_set_hl(0, "Special", { fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Tag", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#919091" })
vim.api.nvim_set_hl(0, "Debug", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "Underlined", { underline = true, fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "Error", { fg = "#ffb4ab", bg = "#121414" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#ffb4ab", bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#b2cbd3" })

vim.api.nvim_set_hl(0, "NonText", { fg = "#464747" })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#464747" })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#464747" })

vim.api.nvim_set_hl(0, "Title", { fg = "#b9c9cf", bold = true })
vim.api.nvim_set_hl(0, "Directory", { fg = "#b9c9cf" })

vim.api.nvim_set_hl(0, "Pmenu", { fg = "#e3e2e2", bg = "#1f2020" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#243337", bg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#292a2a" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#464747" })

vim.api.nvim_set_hl(0, "StatusLine", { fg = "#e3e2e2", bg = "#292a2a" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#919091", bg = "#1f2020" })
vim.api.nvim_set_hl(0, "TabLine", { fg = "#919091", bg = "#1f2020" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#243337", bg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#121414" })

vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#e3e2e2", bg = "#1f2020" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#464747" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#464747" })

vim.api.nvim_set_hl(0, "Folded", { fg = "#919091", bg = "#1f2020" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#464747", bg = "#121414" })

vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#1f2020", fg = "#4caf50" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1f2020", fg = "#b2cbd3" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#1f2020", fg = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#3a494e", fg = "#243337" })

vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "#ffb4ab" })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = "#b9c9cf" })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = "#bfc8cb" })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = "#b2cbd3" })

vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#e8c766" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#b9c9cf" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#919091" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#e8c766" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#b9c9cf" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#919091" })

vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#292a2a" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#292a2a" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#292a2a" })

vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#e3e2e2", bg = "#121414" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#464747" })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#e8c766" })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#4caf50" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#ffb4ab" })

vim.g.colors_name = "matugen"
