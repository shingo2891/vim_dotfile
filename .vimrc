"==============================
"  vimrc
"  2015/08/22 UTF-8 version
"==============================
"vi互換OFF
set nocompatible


"------------------------------
" NeoBundle setting
"------------------------------
" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
"NeoBundle 'itchyny/lightline.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'grep.vim'

call neobundle#end()

" 読み込んだプラグインも含め、ファイルタイプの検出、
" ファイルタイプ別プラグイン/インデントを有効化する
"
filetype plugin indent on

" インストールのチェック
NeoBundleCheck




"------------------------------
" 基本設定
"------------------------------
"バックアップの作成を行わない
set nobackup

"クリップボードを共有
set clipboard+=unnamed

"コマンドライン補完するときに強化されたものを使う
set wildmenu wildmode=list,full

"変更中のファイルでも、保存しないで他のファイルを表示
set hidden


"------------------------------
" 表示
"------------------------------
"シンタックスを有効にする
syntax enable

"カラースキーマを設定
colorscheme darkblue
"colorscheme delek

"□や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

"行番号表示
set number

"タイトル表示
set title

"タブ文字、行末など不可視文字を表示する
set list

"listで表示される文字のフォーマットを指定する
set listchars=eol:<,tab:>\ ,trail:~,extends:>,precedes:<
"trail: 行末の半角スペース

"入力中のコマンドを表示する
set showcmd

"括弧にカーソルが移動した時、対応する括弧を強調表示
set showmatch

"強調表示する時間
set matchtime=2

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

"アンダーライン設定
set cursorline

"------------------------------
" タブ
"------------------------------
"新しい行を作ったときに高度な自動インデントを行う
"set smartindent

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

"タブ文字入力を半角スペースにする
set expandtab

"シフト移動幅
set shiftwidth=4

"tabが対応する空白の数
set tabstop=4

"------------------------------
" 操作
"------------------------------
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=4

"バックスペースでインデントや改行を削除
set backspace=indent,eol,start

"マウスを有効にする
if has('mouse')
  set mouse=a
endif


"------------------------------
" 検索
"------------------------------
"検索時に大文字を含んでいたら大/小を区別
set smartcase

"検索文字の強調表示
set hlsearch

"検索をファイルの先頭へループしない
set nowrapscan

"インクリメンタルサーチ
set incsearch

"大文字と小文字を区別しない
set ignorecase 


"------------------------------
"キーマップ変更
"------------------------------
"noremap  ノーマルモード＋ビジュアルモード
"noremap! コマンドラインモード＋インサートモード
inoremap <C-j> <Esc>
noremap! <C-j> <Esc>




