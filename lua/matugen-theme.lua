local function load_colors()
  local f = io.open(os.getenv("HOME") .. "/.config/matugen/colors.json", "r")
  if not f then return nil end
  local ok, data = pcall(vim.json.decode, f:read("*a"))
  f:close()
  if not ok or type(data) ~= "table" then return nil end
  return data
end

local M = {}

function M.apply()
  local c = load_colors()
  if not c then
    vim.cmd("colorscheme habamax")
    return
  end

  local hl = vim.api.nvim_set_hl

  local bg = c.surface_dim or c.surface or "#1c1b1f"
  local fg = c.on_surface or "#e6e1e5"
  local surface = c.surface or "#1c1b1f"
  local surface_container = c.surface_container or "#211f26"
  local surface_container_high = c.surface_container_high or "#2b2930"
  local surface_container_highest = c.surface_container_highest or "#36343b"
  local primary = c.primary or "#d0bcff"
  local on_primary = c.on_primary or "#381e72"
  local primary_container = c.primary_container or "#4f378b"
  local secondary = c.secondary or "#ccc2dc"
  local on_secondary = c.on_secondary or "#332d41"
  local tertiary = c.tertiary or "#efb8c8"
  local error = c.error or "#f2b8b5"
  local on_error = c.on_error or "#601410"
  local outline = c.outline or "#938f99"
  local outline_variant = c.outline_variant or "#49454f"

  hl(0, "Normal", { fg = fg, bg = bg })

  hl(0, "Cursor", { bg = primary })
  hl(0, "CursorLine", { bg = surface_container })
  hl(0, "CursorColumn", { bg = surface_container })
  hl(0, "CursorLineNR", { fg = primary })
  hl(0, "LineNr", { fg = outline_variant })
  hl(0, "SignColumn", { bg = bg })

  hl(0, "Visual", { bg = primary_container, fg = on_primary })
  hl(0, "VisualNOS", { bg = surface_container_high })

  hl(0, "Search", { bg = primary, fg = on_primary })
  hl(0, "IncSearch", { bg = tertiary, fg = surface })
  hl(0, "CurSearch", { bg = primary, fg = on_primary })

  hl(0, "MatchParen", { bg = surface_container_highest, fg = primary, bold = true })

  hl(0, "Comment", { fg = outline, italic = true })
  hl(0, "Todo", { fg = primary, bold = true })

  hl(0, "Constant", { fg = tertiary })
  hl(0, "String", { fg = secondary })
  hl(0, "Character", { fg = secondary })
  hl(0, "Number", { fg = tertiary })
  hl(0, "Boolean", { fg = tertiary })
  hl(0, "Float", { fg = tertiary })

  hl(0, "Identifier", { fg = fg })
  hl(0, "Function", { fg = primary })

  hl(0, "Statement", { fg = primary })
  hl(0, "Conditional", { fg = primary })
  hl(0, "Repeat", { fg = primary })
  hl(0, "Label", { fg = primary })
  hl(0, "Operator", { fg = fg })
  hl(0, "Keyword", { fg = primary })
  hl(0, "Exception", { fg = error })

  hl(0, "PreProc", { fg = tertiary })
  hl(0, "Include", { fg = primary })
  hl(0, "Define", { fg = tertiary })
  hl(0, "Macro", { fg = tertiary })
  hl(0, "PreCondit", { fg = error })

  hl(0, "Type", { fg = secondary })
  hl(0, "StorageClass", { fg = primary })
  hl(0, "Structure", { fg = primary })
  hl(0, "Typedef", { fg = secondary })

  hl(0, "Special", { fg = tertiary })
  hl(0, "SpecialChar", { fg = primary })
  hl(0, "Tag", { fg = primary })
  hl(0, "Delimiter", { fg = outline })
  hl(0, "Debug", { fg = error })

  hl(0, "Underlined", { underline = true, fg = primary })
  hl(0, "Error", { fg = error, bg = surface })
  hl(0, "ErrorMsg", { fg = error, bold = true })
  hl(0, "WarningMsg", { fg = tertiary })

  hl(0, "NonText", { fg = outline_variant })
  hl(0, "Whitespace", { fg = outline_variant })
  hl(0, "SpecialKey", { fg = outline_variant })

  hl(0, "Title", { fg = primary, bold = true })
  hl(0, "Directory", { fg = primary })

  hl(0, "Pmenu", { fg = fg, bg = surface_container })
  hl(0, "PmenuSel", { fg = on_primary, bg = primary })
  hl(0, "PmenuSbar", { bg = surface_container_high })
  hl(0, "PmenuThumb", { bg = outline_variant })

  hl(0, "StatusLine", { fg = fg, bg = surface_container_high })
  hl(0, "StatusLineNC", { fg = outline, bg = surface_container })
  hl(0, "TabLine", { fg = outline, bg = surface_container })
  hl(0, "TabLineSel", { fg = on_primary, bg = primary })
  hl(0, "TabLineFill", { bg = bg })

  hl(0, "NormalFloat", { fg = fg, bg = surface_container })

  hl(0, "WinSeparator", { fg = outline_variant })
  hl(0, "VertSplit", { fg = outline_variant })

  hl(0, "Folded", { fg = outline, bg = surface_container })
  hl(0, "FoldColumn", { fg = outline_variant, bg = bg })

  hl(0, "DiffAdd", { bg = surface_container, fg = "#4caf50" })
  hl(0, "DiffChange", { bg = surface_container, fg = tertiary })
  hl(0, "DiffDelete", { bg = surface_container, fg = error })
  hl(0, "DiffText", { bg = primary_container, fg = on_primary })

  hl(0, "SpellBad", { undercurl = true, sp = error })
  hl(0, "SpellCap", { undercurl = true, sp = primary })
  hl(0, "SpellLocal", { undercurl = true, sp = secondary })
  hl(0, "SpellRare", { undercurl = true, sp = tertiary })

  hl(0, "DiagnosticError", { fg = error })
  hl(0, "DiagnosticWarn", { fg = "#e8c766" })
  hl(0, "DiagnosticInfo", { fg = primary })
  hl(0, "DiagnosticHint", { fg = outline })
  hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = error })
  hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#e8c766" })
  hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = primary })
  hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = outline })

  hl(0, "LspReferenceText", { bg = surface_container_high })
  hl(0, "LspReferenceRead", { bg = surface_container_high })
  hl(0, "LspReferenceWrite", { bg = surface_container_high })

  hl(0, "NvimTreeNormal", { fg = fg, bg = bg })
  hl(0, "NvimTreeIndentMarker", { fg = outline_variant })
  hl(0, "NvimTreeGitDirty", { fg = "#e8c766" })
  hl(0, "NvimTreeGitNew", { fg = "#4caf50" })
  hl(0, "NvimTreeGitDeleted", { fg = error })

  vim.g.colors_name = "matugen"
end

M.apply()

return M
