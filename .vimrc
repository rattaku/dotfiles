if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle.vim自身をneobundle.vimで管理する
NeoBundleFetch 'Shougo/neobundle.vim'
"""""""""""""""""""""""""""""""""""""""""""
"インストールしたいプラグインの設定を書く
"""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'vim-jp/vimdoc-ja'
set helplang=ja,en

"現在開いているファイル内でプログラム実行
"ex)
":QuickRun ruby
NeoBundle 'thinca/vim-quickrun'

call neobundle#end()
filetype indent on

" プラグインがインストールされているかチェック
NeoBundleCheck

if !has('vim_starting')
    ".vimrcを読み込みなおした時の為の設定
    "call neobundle#call_hook('on_source')
endif

"""""""""""""""""""""""""""""""""""""""""""

set number
syntax on
filetype on
filetype plugin on
set ignorecase
set smartcase
set incsearch
set hlsearch
set clipboard=unnamedplus

"インデント設定
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType c setlocal shiftwidth=4 tabstop=4 softtabstop=4

set expandtab
set backspace=indent,eol,start
set wrapscan
set showmatch
set wildmenu
set formatoptions+=mM
colorscheme torte
