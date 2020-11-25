call plug#begin('~/.config/nvim/plugged')

" LSP
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" NERDTree
Plug 'preservim/nerdtree' |
   \ Plug 'Xuyuanp/nerdtree-git-plugin' |
   \ Plug 'ryanoasis/vim-devicons' 

" Completion
Plug 'sebastianmarkow/deoplete-rust'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

" GIT
Plug 'APZelos/blamer.nvim'

" YAML
Plug 'stephpy/vim-yaml'

" Rust
Plug 'rust-lang/rust.vim'

" Theme
Plug 'doums/darcula'

" Multiple cursor
" Plug 'terryma/vim-multiple-cursors'

call plug#end()

set encoding=UTF-8

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['/home/oem/.local/bin/pyls'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
let t:curwin = winnr()
exec "wincmd ".a:key
if (t:curwin == winnr())
     if (match(a:key,'[jk]'))
        wincmd v
    else
        wincmd s
    endif
    exec "wincmd".a:key
    endif
endfunction

" Completion
let g:deoplete#sources#rust#racer_binary='/usr/local/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/oem/rust/library'
let g:deoplete#enable_at_startup = 1

" Python
let g:python3_host_prog = '/home/oem/.pyenv/shims/python'

" GIT
" let g:blamer_enabled = 1

" NVIM Settings
set number

syntax enable
filetype plugin indent on

" Theme
set termguicolors
colorscheme darcula

