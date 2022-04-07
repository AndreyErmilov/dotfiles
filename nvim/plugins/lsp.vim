lua << EOF
local lsp_neovim = require'lspconfig'

lsp_neovim.ocamllsp.setup{
  cmd = { "ocamllsp" },
}

lsp_neovim.rust_analyzer.setup{
  assist = {
    importGranularity = "module",
    importPrefix = "by_self",
  },
  cargo = {
    loadOutDirsFromCheck = true
  },
  procMacro = {
    enable = true
  },
}

EOF

