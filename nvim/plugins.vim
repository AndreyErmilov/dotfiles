function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })           " Package manager

  call packager#add('hrsh7th/cmp-nvim-lsp')
  call packager#add('hrsh7th/cmp-buffer')
  call packager#add('hrsh7th/cmp-path')
  call packager#add('hrsh7th/cmp-cmdline')
  call packager#add('hrsh7th/nvim-cmp')

  call packager#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})     " Syntax parser and highliter
  call packager#add('neovim/nvim-lspconfig')                                    " LSP configuration defaults
  call packager#add('reasonml-editor/vim-reason-plus')                          " LSP configuration defaults

  call packager#add('vim-airline/vim-airline')                                  " Statusline
  call packager#add('vim-airline/vim-airline-themes')                           " Statusline themes
  call packager#add('ryanoasis/vim-devicons')                                   " Icons

  call packager#add('kyazdani42/nvim-tree.lua')                                 " File explorer

  call packager#add('ntk148v/vim-horizon')                                      " Horizon theme
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! -bang PackagerUpdate call PackagerInit() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

"Load plugins only for specific filetype
"Note that this should not be done for plugins that handle their loading using ftplugin file.
"More info in :help pack-add
augroup packager_filetype
  " autocmd!
  " autocmd FileType javascript packadd vim-js-file-import
  " autocmd FileType go packadd vim-go
augroup END
