lua require('plugins.completion-nvim')

" Completion stype
set completeopt=noinsert,menuone,noselect
set completeopt-=preview

" Enable snippets support
let g:completion_enable_snippet = 'vim-vsnip'

" Setup completion chars
let g:completion_trigger_character = ['.', '::']

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

" Avoid showing extra message when using completion
set shortmess+=c
