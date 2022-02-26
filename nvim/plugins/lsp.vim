lua << EOF
    local lsp_neovim = require'lspconfig'
    lsp_neovim.ocamllsp.setup{
        cmd = { "ocamllsp" },
    }
EOF

