set shell=/bin/zsh "コマンド実行時のシェル設定
set shiftwidth=4 "インテンドの幅
set tabstop=4 "タブのサイズ
set expandtab "タブ入力時にスペースに変換する
set textwidth=0 "テキストの折り返しサイズ 0は折り返さない
set autoindent "自動インテンド コピペでタブサイズがおかしくなる時は:set pasteで解除する
set hlsearch "検索時のハイライト
set clipboard=unnamed "クリップボードへの登録
set number "行番号の表示
syntax on "シンタックスハイライト

call plug#begin()
Plug 'ntk148v/vim-horizon' "color theme
Plug 'preservim/nerdtree' "vim上でフォルダ表示を行う
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "ファイル検索
Plug 'neoclide/coc.nvim', {'branch': 'release'} "コード補完
call plug#end()

"vim-horizon
" if you don't set this option, this color might not correct
set termguicolors
colorscheme horizon
" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

"NERDTree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
