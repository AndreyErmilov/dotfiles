function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })           " Package manager

  call packager#add('hrsh7th/cmp-nvim-lsp')                                     " All for Completion
  call packager#add('hrsh7th/cmp-buffer')
  call packager#add('hrsh7th/cmp-path')
  call packager#add('hrsh7th/cmp-cmdline')
  call packager#add('hrsh7th/nvim-cmp')

  call packager#add('hrsh7th/cmp-vsnip')                                        " Snippets
  call packager#add('hrsh7th/vim-vsnip')

  call packager#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})     " Syntax parser and highliter
  call packager#add('neovim/nvim-lspconfig')                                    " LSP configuration defaults
  call packager#add('williamboman/nvim-lsp-installer')                          " LSP instances 
  call packager#add('reasonml-editor/vim-reason-plus')                          " LSP configuration defaults
	call packager#add('folke/lsp-colors.nvim')																		" A pretty diagnostics

  call packager#add('vim-airline/vim-airline')                                  " Statusline
  call packager#add('vim-airline/vim-airline-themes')                           " Statusline themes
  call packager#add('ryanoasis/vim-devicons')                                   " Icons
  call packager#add('kyazdani42/nvim-web-devicons')                             " Icons
  call packager#add('akinsho/bufferline.nvim')                                  " Tabs

  call packager#add('kyazdani42/nvim-tree.lua')                                 " File explorer

  call packager#add('sainnhe/edge')                                             " Color scheme

  call packager#add('tpope/vim-surround')                                       " Insert or delete brackets
  call packager#add('scrooloose/NERDCommenter')                                 " Commenter

	call packager#add('airblade/vim-gitgutter.git')                               " Show changes
	call packager#add('tpope/vim-fugitive')                                       " Git wrapper

  call packager#add('nvim-telescope/telescope.nvim')                            " Find, filter, preview etc.
	call packager#add('nvim-lua/plenary.nvim')
  call packager#add('lotabout/skim', { 'dir': '~/.skim', 'do': './install' })

  call packager#add('weirongxu/plantuml-previewer.vim') 										    " PlantUML
  call packager#add('tyru/open-browser.vim')
  call packager#add('aklt/plantuml-syntax')
  call packager#add('iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']})
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
