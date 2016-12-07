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

" 検索のハイライト
set hlsearch
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

" 行頭、行末への移動
nnoremap <Space>h  ^ 
nnoremap <Space>l  $


"危険なZZ,ZQを無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>


" カーソル行を強調表示しない
set nocursorline
" 挿入モードの時のみ、カーソル行をハイライトする
autocmd InsertEnter,InsertLeave * set cursorline!
