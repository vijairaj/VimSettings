syntax on

set hidden
set nocompatible
set backspace=indent,eol,start
set formatoptions=croql
set cino=:0
set ch=1
set hlsearch
set nowb
set si
set ai
set ic
set nowrap
set incsearch
set showmatch
set matchtime=3
set textwidth=80
set noruler
set nobackup
set nowritebackup
set tabstop=4			
set softtabstop=4
set mouse=a
set shiftwidth=4
set clipboard=unnamed
set wildmenu
set complete-=i
set nowrapscan
"set scrolloff=3
"set nows
"set colorcolumn=81

let mapleader=","
let c_no_curly_error=1
" let c_space_errors=1

if has("win32")
	set tags=tags,tags;.,C:/QNX650/target/qnx6/usr/include/tags
else
	set tags=./tags,./TAGS,tags,TAGS,tags;.,/usr/src/linux/tags,/usr/include/tags,tags,/usr/src/linux/tags,/usr/include/tags
endif

set path+=include;.,.,C:/QNX650/target/qnx6/usr/include

map <C-w><C-e>	:Vex!<cr>
let g:netrw_browse_split=0
let g:netrw_altv=1
let g:EasyMotion_leader_key = '\\'

nnoremap<silent> <S-F3>	:botright copen<cr>k<cr>
nnoremap<silent> <F3>	:botright copen<cr>j<cr>
nnoremap<silent> <F4>	:close<cr>
nnoremap<silent> <F5> 	:silent! TlistHighlightTag<cr>:let @/=""<CR><C-l>" Clear the search strings
nnoremap<silent> <F6> 	<c-w>w
nnoremap<silent> <F7>	:Explore<CR>
nnoremap<silent> <F8>	:TlistToggle<CR>
nnoremap<silent> <F9>	:w<cr>:execute "!" . "\"". fnamemodify(expand("%"), ":p") . "\""<cr>
nnoremap<silent> <F10>	:sil !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr>
set pastetoggle=<F11><cr>
nnoremap<silent> <F12>	:cclose<cr>

map ]i	<c-]>"pyy<c-t>:echo @p<CR>

map ,gr :vimgrep /\<\>/gj **/*\|botright copen<cr>
map ,gp :vimgrep /\<\>/gj *\|botright copen<cr>
map ,gc :vimgrep /\<\>/gj **/*.{c,cpp,cc}\|botright copen<cr>
map ,gy :vimgrep /\<\>/gj **/*.{py,pyw}\|botright copen<cr>
map ,gh :vimgrep /\<\>/gj **/*.h\|botright copen<cr>

vmap ,gr "xy:vimgrep /x/gj **/*\|botright copen<cr>
vmap ,gp "xy:vimgrep /x/gj *\|botright copen<cr>
vmap ,gc "xy:vimgrep /x/gj **/*.{c,cpp,cc}\|botright copen<cr>
vmap ,gy "xy:vimgrep /x/gj **/*.{py,pyw}\|botright copen<cr>
vmap ,gh "xy:vimgrep /x/gj **/*.h\|botright copen<cr>

nmap <space>r :grep -inI <C-r><C-w> *<CR>
nmap <Space>n :tnext<CR>
nmap <Space>p :tprevious<CR>

set foldmethod=manual
set showcmd
set showmode
set nopaste
set autoindent

filetype plugin indent on

augroup FileFormatsau BufNewFile,BufRead svn-commit*.tmp setlocal textwidth=72 expandtab smarttab ts=4 sw=4au BufNewFile,BufRead *.py,*.pyw,*.cgi setlocal textwidth=80 expandtab smarttab ts=4 sw=4 tags+=C:/Python32/Lib/site-packages/PyQt4/tagsau BufNewFile,BufRead *.xml,*.xsl setlocal textwidth=0 noic ts=2 sw=2 expandtabau BufNewFile,BufRead *.htm* setlocal textwidth=0 ts=2 sw=2 expandtabau BufNewFile,BufRead *.kid setlocal noic ts=2 sw=2 expandtab smarttab filetype=xmlau BufNewFile,BufRead *.java setlocal ts=4 sw=4
augroup END

augroup TagListTweaksau CursorMovedI,CursorMoved *.c,*.cpp,*.cc,*.cs if "n\|i" =~ mode() | silent! TlistHighlightTag | endifau VimEnter *.c,*.cpp,*.cc,*.cs silent! TlistOpen | wincmd wau BufWritePost *.c,*.cpp,*.cc,*.cs silent! TlistUpdate
augroup END

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"nmap ,d	<Plug>VCSVimDiff
map <Space><Space> :echo str2nr('', 16)<cr>
map <Space>, :echo nr2char(0x)<cr>

nmap ,e :BufExplorer<cr>

set laststatus=2
set statusline=%<%f%m\ %([%{Tlist_Get_Tagname_By_Line()}]%)%=%2v,%4l\ (%P/%L)
"set statusline=%<%f%m%=%2v,%4l\ (%P/%L)

if &term == "screen"
	set term=xtermset t_ts=kset t_fs=\
endif

let Tlist_Enable_Fold_Column = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let Tlist_Inc_Winwidth = 0
"let Tlist_Process_File_Always = 1
"highlight MyTagListTagName ctermbg=green guibg=green

map ,f :vimgrep //gj *
imap jj <ESC>
"cmap jj <ESC>
nmap ,j3 :%s/\n^\s\+//g<ESC>:%s/\(..\) \n/\1 /g<ESC>:%g/^$/d<ESC>

"match Ignore //

let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

map ,c4 :ccl<cr>
