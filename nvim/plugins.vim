function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })           " Package manager
  call packager#add('neoclide/coc.nvim', {'branch': 'release'})                 " Coc that can install Coc Lua Language Server
  call packager#add('rafcamlet/nvim-luapad')                                    " Interactive real time neovim scratchpad
  call packager#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})     " Syntax parser and highliter
  call packager#add('mhartington/oceanic-next')                                 " Oceanic Theme
  call packager#add('sainnhe/edge')						" Edge theme
  call packager#add('neovim/nvim-lspconfig')                                    " LSP configuration defaults
  call packager#add('nvim-lua/completion-nvim')                                 " LSP completion
  call packager#add('hrsh7th/vim-vsnip')                                        " Snippets support
  call packager#add('hrsh7th/vim-vsnip-integ')                                  " Snippets interation
  call packager#add('nvim-lua/lsp_extensions.nvim')                             " LSP extensions
  call packager#add('nvim-lua/lsp-status.nvim')                                 " LSP Statusline info
  call packager#add('vim-airline/vim-airline')                                  " Statusline
  call packager#add('vim-airline/vim-airline-themes')                           " Statusline themes
  call packager#add('kyazdani42/nvim-web-devicons')                             " Neovim Icons
  call packager#add('ryanoasis/vim-devicons')                                   " Icons
  call packager#add('kyazdani42/nvim-tree.lua')                                 " File explorer
  call packager#add('liuchengxu/vista.vim')                                     " View and search LSP symbols, tags in Vim/NeoVim.
  call packager#add('tpope/vim-fugitive')                                       " Git
  call packager#add('airblade/vim-gitgutter')                                   " Git sign
  call packager#add('rhysd/git-messenger.vim')                                  " Git history
  call packager#add('akinsho/nvim-bufferline.lua')                              " Buffer line implementation
  call packager#add('jiangmiao/auto-pairs')                                     " Autospell pairs 
  call packager#add('tpope/vim-surround')                                       " Insert or delete brackets, parens, quotes in pair.
  call packager#add('scrooloose/NERDCommenter')                                 " Commenter
  call packager#add('nvim-lua/popup.nvim')                                      " Popup API
  call packager#add('nvim-lua/plenary.nvim')                                    " Neovim helpers
  call packager#add('nvim-telescope/telescope.nvim')                            " Finder
  call packager#add('liuchengxu/vim-clap', { 'do': ':Clap install-binary' })    " Finder and dispatcher
  call packager#add('lotabout/skim')                                            " Rust alternative to fzf
  call packager#add('lotabout/skim.vim')                                        " Skim vim integration
  call packager#add('fatih/vim-go', {'do': ':GoUpdateBinaries'})                " Go integration
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
