syntax enable
set number
set ruler
set cursorline
set showmatch
set nowrap
set autoindent
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set tabstop=3

"行頭行末移動で行をまたぐ
set whichwrap=b,s,h,l,<,>,[,]


" 検索のハイライト
set hlsearch
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

" 行頭、行末への移動
nnoremap <Space>h  0 
nnoremap <Space>l  $


"危険なZZ,ZQを無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>


" カーソル行を強調表示しない
set nocursorline
" 挿入モードの時のみ、カーソル行をハイライトする
autocmd InsertEnter,InsertLeave * set cursorline!

"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" NERDTree
NeoBundle 'scrooloose/nerdtree'
" autoclose ()閉じるやつ
NeoBundle 'Townk/vim-autoclose'

call neobundle#end()
  
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck
 
 "-------------------------


