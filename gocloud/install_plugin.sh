#!/bin/zsh

ohmyfolder="${HOME}/.oh-my-zsh"
pluginfolder="$ohmyfolder/custom/plugins/gocloud" 

if [ ! -d $ohmyfolder ] ; then
    echo "Can't find .oh-my-zsh"
    return 0
fi

if [ ! -d $pluginfolder ] ; then
    echo "Creating $pluginfolder"
    mkdir -p "$pluginfolder"
fi 

if [ -d $pluginfolder ] ; then
    cp _gocloud $pluginfolder
    cp gocloud.plugin.zsh $pluginfolder
    echo "Plugin installed."
    echo
    echo "Make sure you add the following line to your .zshrc file:"
    echo "  plugins+=(gocloud)"
    echo
    echo "Also add this to the end of your .zshrc file:"
    echo "  autoload -U compinit && compinit"  
fi 
