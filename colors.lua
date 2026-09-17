--     _   _            _   _ _            
--    | \ | |          | | | (_)           
--    |  \| | ___  ___ | | | |_ _ __ ___   
--    | . ` |/ _ \/ _ \| | | | | '_ ` _ \  
--    | |\  |  __/ (_) \ \_/ / | | | | | | 
--    \_| \_/\___|\___/ \___/|_|_| |_| |_| 

vim.api.nvim_set_hl(0, "Normal", { fg = "#f1dfdb", bg = "#1a110f" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#271d1b" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#271d1b" })
vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#534340" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1a110f" })

vim.api.nvim_set_hl(0, "Visual", { bg = "#733426", fg = "#561f13" })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = "#322825" })

vim.api.nvim_set_hl(0, "Search", { bg = "#ffb4a4", fg = "#561f13" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#dbc58c", fg = "#1a110f" })
vim.api.nvim_set_hl(0, "CurSearch", { bg = "#ffb4a4", fg = "#561f13" })

vim.api.nvim_set_hl(0, "MatchParen", { bg = "#3d3230", fg = "#ffb4a4", bold = true })

vim.api.nvim_set_hl(0, "Comment", { fg = "#a08c88", italic = true })
vim.api.nvim_set_hl(0, "Todo", { fg = "#ffb4a4", bold = true })

vim.api.nvim_set_hl(0, "Constant", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "String", { fg = "#e7bdb4" })
vim.api.nvim_set_hl(0, "Character", { fg = "#e7bdb4" })
vim.api.nvim_set_hl(0, "Number", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "Boolean", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "Float", { fg = "#dbc58c" })

vim.api.nvim_set_hl(0, "Identifier", { fg = "#f1dfdb" })
vim.api.nvim_set_hl(0, "Function", { fg = "#ffb4a4" })

vim.api.nvim_set_hl(0, "Statement", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Repeat", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Label", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#f1dfdb" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Exception", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "PreProc", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "Include", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Define", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "Macro", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "PreCondit", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "Type", { fg = "#e7bdb4" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Structure", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Typedef", { fg = "#e7bdb4" })

vim.api.nvim_set_hl(0, "Special", { fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Tag", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#a08c88" })
vim.api.nvim_set_hl(0, "Debug", { fg = "#ffb4ab" })

vim.api.nvim_set_hl(0, "Underlined", { underline = true, fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "Error", { fg = "#ffb4ab", bg = "#1a110f" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#ffb4ab", bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#dbc58c" })

vim.api.nvim_set_hl(0, "NonText", { fg = "#534340" })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#534340" })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#534340" })

vim.api.nvim_set_hl(0, "Title", { fg = "#ffb4a4", bold = true })
vim.api.nvim_set_hl(0, "Directory", { fg = "#ffb4a4" })

vim.api.nvim_set_hl(0, "Pmenu", { fg = "#f1dfdb", bg = "#271d1b" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#561f13", bg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#322825" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#534340" })

vim.api.nvim_set_hl(0, "StatusLine", { fg = "#f1dfdb", bg = "#322825" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#a08c88", bg = "#271d1b" })
vim.api.nvim_set_hl(0, "TabLine", { fg = "#a08c88", bg = "#271d1b" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#561f13", bg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#1a110f" })

vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#f1dfdb", bg = "#271d1b" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#534340" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#534340" })

vim.api.nvim_set_hl(0, "Folded", { fg = "#a08c88", bg = "#271d1b" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#534340", bg = "#1a110f" })

vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#271d1b", fg = "#4caf50" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#271d1b", fg = "#dbc58c" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#271d1b", fg = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#733426", fg = "#561f13" })

vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = "#ffb4ab" })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = "#ffb4a4" })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = "#e7bdb4" })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = "#dbc58c" })

vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#e8c766" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#ffb4a4" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#a08c88" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ffb4ab" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#e8c766" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#ffb4a4" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#a08c88" })

vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#322825" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#322825" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#322825" })

vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#f1dfdb", bg = "#1a110f" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#534340" })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#e8c766" })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#4caf50" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#ffb4ab" })

vim.g.colors_name = "matugen"
