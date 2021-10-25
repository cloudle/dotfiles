local C = require("stormone.colors")

return {
  SignAdd = { fg = C.sign_add },
  SignChange = { fg = C.sign_change },
  SignDelete = { fg = C.sign_delete },
  GitSignsAdd = { fg = C.sign_add },
  GitSignsChange = { fg = C.sign_change },
  GitSignsDelete = { fg = C.sign_delete },

  DiffViewNormal = { fg = C.gray, bg = C.alt_bg },
  DiffviewStatusAdded = { fg = C.sign_add },
  DiffviewStatusModified = { fg = C.sign_change },
  DiffviewStatusRenamed = { fg = C.sign_change },
  DiffviewStatusDeleted = { fg = C.sign_delete },
  DiffviewFilePanelInsertion = { fg = C.sign_add },
  DiffviewFilePanelDeletion = { fg = C.sign_delete },
  DiffviewVertSplit = { bg = C.bg },
  DiffAdd = { fg = C.none, bg = C.diff_add },
  DiffDelete = { fg = C.none, bg = C.diff_delete },
  DiffChange = { fg = C.none, bg = C.diff_change, style = "bold" },
  DiffText = { fg = C.none, bg = C.diff_text },
  DiffAdded = { fg = C.green },
  DiffRemoved = { fg = C.red },
  DiffFile = { fg = C.cyan },
  DiffFileId = { fg = C.blue, style = "bold,reverse" },
  DiffNewFile = { fg = C.green },
  DiffOldFile = { fg = C.red },
  DiffIndexLine = { fg = C.gray },
}