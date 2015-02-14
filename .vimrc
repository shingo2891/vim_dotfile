"==============================
"  vimrc
"  2014/04/30 UTF-8 version
"==============================


"vi互換OFF
set nocompatible

"バックアップの作成を行わない
set nobackup

"クリップボードを共有
set clipboard+=unnamed

"バックスペースでインデントや改行を削除
set backspace=indent,eol,start

"□や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

"コマンドライン補完するときに強化されたものを使う
set wildmenu

"変更中のファイルでも、保存しないで他のファイルを表示
set hidden

"シンタックスを有効にする
syntax enable

"カラースキーマを設定
"colorscheme dw_blue
colorscheme delek

"マウスを有効にする
if has('mouse')
  set mouse=a
endif

"行番号表示
set number

"タイトル表示
set title

"タブ文字、行末など不可視文字を表示する
set list

"listで表示される文字のフォーマットを指定する
set listchars=eol:\ ,tab:>\ ,trail:~
"set listchars=eol:\ ,tab:^\ ,trail:~

"tabが対応する空白の数
set tabstop=4

"入力中のコマンドを表示する
set showcmd

"括弧にカーソルが移動した時、対応する括弧を強調表示
set showmatch

"強調表示する時間
set matchtime=2

"インクリメンタルサーチ
set incsearch

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=4

"検索時に大文字を含んでいたら大/小を区別
set smartcase

"検索文字の強調表示
set hlsearch

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

"コマンドラインの高さ (gvimはgvimrcで指定)
set cmdheight=2
set laststatus=2
set statusline=%f%m%=%l,%c\ %{'['.(&fenc!=''?&fenc:&enc).']\ ['.&fileformat.']'}

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"キーマップ変更
inoremap <c-j> <Esc>


