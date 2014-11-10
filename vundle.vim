set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
let path='$HOME/vimfiles/bundle'

call vundle#begin(path)
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/taglist.vim'
"GoInstallBinaries to install the required binaries.
"set GOPATH to get the source and GOBIN to store compiled binaries (go env)
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
