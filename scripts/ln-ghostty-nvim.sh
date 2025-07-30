#!/usr/bin/env zsh
set -e

ghostty_nvim=/Applications/Ghostty.app/Contents/Resources/nvim/site
nvim_config=$HOME/.config/nvim/after

mkdir -p $nvim_config/{ftdetect,syntax,ftplugin,compiler}

ln -sf $ghostty_nvim/ftdetect/ghostty.vim $nvim_config/ftdetect/ghostty.vim
ln -sf $ghostty_nvim/syntax/ghostty.vim $nvim_config/syntax/ghostty.vim
ln -sf $ghostty_nvim/ftplugin/ghostty.vim $nvim_config/ftplugin/ghostty.vim
ln -sf $ghostty_nvim/compiler/ghostty.vim $nvim_config/compiler/ghostty.vim