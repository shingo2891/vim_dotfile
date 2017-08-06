
README.txt
2017/08/06

"==============================
" ディレクトリ構成
"==============================
~/
 　.vimrc
 　.vim
  　　vim_dotfile
  　　colors
　　　　bundle

"==============================
" ディレクトリ作成
"==============================
$ mkdir -p ~/.vim


"==============================
" vimrc dowonload
"==============================
$　cd ~/.vim
$ mkdir -p vim_dotfile
$ git clone git://github.com/shingo2891/vim_dotfile 
$ cp ~/.vim/vim_dotfile/.vimrc_nopulugin ~/.vimrc


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
$ cd ~/.vim
$ mkdir -p colors
$ git clone https://github.com/tomasr/molokai
$ mv molokai/colors/molokai.vim ~/.vim/colors/
$ vi ~/.vimrc



