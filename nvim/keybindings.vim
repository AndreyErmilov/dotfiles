" Neovim Tree
nnoremap <F1> :NvimTreeToggle<CR>
nnoremap <Tab> :NvimTreeFocus<CR>

" Change tabs
nnoremap <A-Left> :tabp<CR>

" Change buffers
nnoremap <A-h> :bp!<CR>

" LSP key bindings
nnoremap <silent> gd         <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K          <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>f  <cmd>lua vim.lsp.buf.formatting()<Cr>
