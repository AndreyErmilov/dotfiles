map <F3> :NvimTreeToggle<CR>
map <F2> :Vista!!<CR>
map <F7> :<C-U>call MySpellLang()<CR>
" nnoremap <C-p> :Files<Cr>
"
nnoremap <leader>q :bp<cr>:bd #<cr>
set pastetoggle=<F5>

nnoremap <A-Left> :tabp<CR>
nnoremap <A-Right> :tabn<CR>
inoremap <A-Left> <Esc>:tabp<CR>
inoremap <A-Right> <Esc>:tabn<CR>
nnoremap <A-Up> :bp<CR>
nnoremap <A-Down> :bn<CR>
inoremap <A-Left> <Esc>:bp<CR>
inoremap <A-Right> <Esc>:bn<CR>

nnoremap <A-C-Right> :wincmd l<CR>
nnoremap <A-C-Left> :wincmd h<CR>
nnoremap <A-C-Up> :wincmd k<CR>
nnoremap <A-C-Down> :wincmd j<CR>
inoremap <A-C-Right> <Esc>:wincmd l<CR>
inoremap <A-C-Left> <Esc>:wincmd h<CR>
inoremap <A-C-Up> <Esc>:wincmd k<CR>
inoremap <A-C-Down> <Esc>:wincmd j<CR>

nnoremap <A-h> :bp!<CR>
nnoremap <A-l> :bn!<CR>
inoremap <A-h> <Esc>:bp!<CR>
inoremap <A-l> <Esc>:bn!<CR>
nnoremap <A-k> :bp<CR>
nnoremap <A-j> :bn<CR>
inoremap <A-k> <Esc>:bp<CR>
inoremap <A-j> <Esc>:bn<CR>

nnoremap <C-l> :wincmd l<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
inoremap <C-l> <Esc>:wincmd l<CR>
inoremap <C-h> <Esc>:wincmd h<CR>
inoremap <C-k> <Esc>:wincmd k<CR>
inoremap <C-j> <Esc>:wincmd j<CR>
