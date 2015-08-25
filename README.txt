
README.txt
2015/02/13

Git hubテスト用ファイル

"==============================
" NeoBundleインストール
"==============================
# 配置先のディレクトリを作成
$ mkdir -p ~/.vim/bundle
# NeoBundleをリポジトリから取得
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim



"==============================
" Colorscheme
"==============================
$ mkdir ~/.vim
$ cd ~/.vim
$ mkdir colors
$ git clone https://github.com/tomasr/molokai
$ mv molokai/colors/molokai.vim ~/.vim/colors/
$ vi ~/.vimrc



