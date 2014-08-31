#!/bin/bash
# ~/.custom/setlinks.sh 20140728 11:56
# 20140728: stopped using _bash_profile

wrap()
{
  echo "$@"
  "$@"
}

add_link()
{
    if [ -L $2 ]; then wrap rm $2; fi

    dir=`dirname $2`
    if [ ! -d $dir ]; then wrap mkdir -p $dir; fi

    wrap ln -s $1 $2 
}

add_link .custom/_bashrc ~/.bashrc
add_link .custom/_exrc ~/.exrc
add_link .custom/_screenrc ~/.screenrc
add_link .custom/_vimrc ~/.vimrc
add_link .custom/_Xresources ~/.Xresources
add_link ~/.custom/syncolor.vim ~/.vim/after/syntax/syncolor.vim
add_link ~/.custom/c.vim ~/.vim/after/syntax/c.vim
add_link ~/.custom/gnupg.vim  ~/.vim/plugin/gnupg.vim
add_link ~/.custom/_python ~/.python
add_link ~/.custom/etc ~/etc
add_link ~/.custom/_ssh ~/.ssh
add_link ~/.custom/_xkeyboard ~/.xkeyboard
