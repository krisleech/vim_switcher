# Vim switcher

Allows you to switch between multiple vimfiles using symlinks

## Install

    mkdir ~/Applications
    cd ~/Applications
    git clone git://github.com/krisleech/vim_switcher.git vimfiles
    cd vim

## Usage

*clone vimfile repositories to the same directory as switch_vim.rb* 

    cd ~/Applications/vimfiles
    git clone https://github.com/scrooloose/vimfiles.git scrooloose
    git clone https://github.com/codegram/vimfiles.git codegram
    git clone https://github.com/krisleech/vimfiles.git krisleech

*And switch between them*

`./switch_vim.rb codegram`

`./switch_vim.rb scrooloose`

`./switch_vim.rb krisleech`

Note: If you already have vim open you will have to source the new `.vimrc` by
`:source ~/.vimrc`
