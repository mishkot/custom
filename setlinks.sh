#!/bin/bash
# ~/.custom/setlinks.sh 20130301 18:02:18

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

if [ ! ~/.profile ]; then
    add_link .custom/_bashrc ~/.bash_profile
else
    # ~/.profile is executed by the command interpreter for login shells.
    # ~/.profile is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
    echo  "~/.profile exists, ~/.bash_profile not created !!!"
    echo "make sure ~/.profile includes:"
    echo '# if running bash, include .bashrc if it exists'
    echo 'if [ -n "$BASH_VERSION" -a -f "$HOME/.bashrc" ]; then . "$HOME/.bashrc"; fi'
    echo
fi
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

# ln -s /bin/bash /usr/local/bin/bash
# ln -s /home /Users
# sudoers
