syntax enable

set nobackup
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,sjis
set autoindent
set number
set incsearch
set ignorecase
set showmatch
set showmode
set title
set ruler
set tabstop=4
set background=dark

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=barkgray
match ZenkakuSpace /　/
