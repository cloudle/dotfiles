local C = require("stormone.colors")

return {
  NvimTreeFolderIcon = { fg = C.blue },
  NvimTreeIndentMarker = { fg = C.gray },
  NvimTreeNormal = { fg = C.light_gray, bg = C.darker_bg },
  NvimTreeVertSplit = { fg = C.darker_bg, bg = C.darker_bg },
  NvimTreeFolderName = { fg = C.light_gray },
  NvimTreeOpenedFolderName = { fg = C.light_gray },
  NvimTreeImageFile = { fg = C.purple },
  NvimTreeSpecialFile = { fg = C.orange },
  NvimTreeGitStaged = { fg = C.green },
  NvimTreeCursorLine = { bg = C.bg },
  NvimTreeGitNew = { fg = C.green },
  NvimTreeGitDirty = { fg = C.blue },
  NvimTreeGitDeleted = { fg = C.gray },
  NvimTreeGitMerge = { fg = C.blue },
  NvimTreeGitRenamed = { fg = C.blue },
  NvimTreeSymlink = { fg = C.cyan },
  NvimTreeRootFolder = { fg = C.red, style = "underline" },
  NvimTreeExecFile = { fg = C.green },
  LirFloatNormal = { fg = C.light_gray, bg = C.alt_bg },
  LirDir = { fg = C.blue },
  LirSymLink = { fg = C.cyan },
  LirEmptyDirText = { fg = C.blue },
  BufferCurrent = { fg = C.fg, bg = C.bg },
  BufferCurrentIndex = { fg = C.fg, bg = C.bg },
  BufferCurrentMod = { fg = C.info_yellow, bg = C.bg },
  BufferCurrentSign = { fg = C.hint_blue, bg = C.bg },
  BufferCurrentTarget = { fg = C.red, bg = C.bg, style = "bold" },
  BufferVisible = { fg = C.fg, bg = C.bg },
  BufferVisibleIndex = { fg = C.fg, bg = C.bg },
  BufferVisibleMod = { fg = C.info_yellow, bg = C.bg },
  BufferVisibleSign = { fg = C.gray, bg = C.bg },
  BufferVisibleTarget = { fg = C.red, bg = C.bg, style = "bold" },
  BufferInactive = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveIndex = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveMod = { fg = C.info_yellow, bg = C.alt_bg },
  BufferInactiveSign = { fg = C.gray, bg = C.alt_bg },
  BufferInactiveTarget = { fg = C.red, bg = C.alt_bg, style = "bold" },
  StatusLine = { fg = C.alt_bg },
  StatusLineNC = { fg = C.alt_bg },
  StatusLineSeparator = { fg = C.alt_bg },
  StatusLineTerm = { fg = C.alt_bg },
  StatusLineTermNC = { fg = C.alt_bg },
  CodiVirtualText = { fg = C.hint_blue },
  IndentBlanklineContextChar = { fg = C.context },
  IndentBlanklineChar = { fg = C.dark_gray },
  IndentBlanklineSpaceChar = { fg = C.cyan_test },
  IndentBlanklineSpaceCharBlankline = { fg = C.info_yellow },
  DashboardHeader = { fg = C.blue },
  DashboardCenter = { fg = C.purple },
  DashboardFooter = { fg = C.cyan },
  xmlTag = { fg = C.blue },
  xmlTagName = { fg = C.blue },
  xmlEndTag = { fg = C.blue },
  debugPc = { bg = C.cyan },
  debugBreakpoint = { fg = C.red, style = "reverse" },
  FocusedSymbol = { fg = C.purple, style = "bold" },
  SymbolsOutlineConnector = { fg = C.context },
  QuickScopePrimary = { fg = C.purple_test, style = "underline" },
  QuickScopeSecondary = { fg = C.cyan_test, style = "underline" },
  TelescopeSelection = { fg = C.hint_blue },
  TelescopeMatching = { fg = C.info_yellow, style = "bold" },
  TelescopeBorder = { fg = C.cyan, bg = C.bg },
  TelescopePromptPrefix = { fg = C.purple },

  WhichKey = { fg = C.hint_blue },
  WhichKeySeperator = { fg = C.gray },
  WhichKeyGroup = { fg = C.light_red },
  WhichKeyDesc = { fg = C.red },
  WhichKeyFloat = { bg = C.dark },
 }
