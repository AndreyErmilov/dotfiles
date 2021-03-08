nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ft <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>

:lua << EOF
require('telescope').setup{
  winblend = 20,
}
EOF
