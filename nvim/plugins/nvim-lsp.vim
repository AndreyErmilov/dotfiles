" LSP key bindings
nnoremap <silent> <leader>g  <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>d  <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> K          <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>I  <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>s  <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>G  <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr         <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>r  <cmd>lua vim.lsp.buf.rename()<Cr>
nnoremap <silent> <leader>f  <cmd>lua vim.lsp.buf.formatting()<Cr>

" Diagnostic
nnoremap <leader>[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.set_loclist()<Cr>

" Inline type hints
nnoremap <Leader>t :lua require'lsp_extensions'.inlay_hints()<CR>
nnoremap <Leader>h :lua require'lsp_extensions'.inlay_hints{ only_current_line = true }<CR>
