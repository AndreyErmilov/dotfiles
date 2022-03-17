" Neovim Tree
nnoremap <F1> :NvimTreeToggle<CR>
nnoremap <Tab> :NvimTreeFocus<CR>

" Change tabs
nnoremap <A-Left> :tabp<CR>

" Change buffers
nnoremap <A-h> :bp!<CR>
nnoremap <A-l> :bn!<CR>

" Delete buffer
nnoremap <A-k> :bdelete<CR>

" LSP key bindings
nnoremap <silent> gd         <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K          <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>f  <cmd>lua vim.lsp.buf.formatting()<Cr>

" Git

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" Errors
nnoremap <silent> he         <cmd>lua vim.diagnostic.hide()<CR>
nnoremap <silent> se         <cmd>lua vim.diagnostic.show()<CR>
nnoremap <silent> qq         <cmd>TroubleToggle<CR>
