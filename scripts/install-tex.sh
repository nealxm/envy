#!/usr/bin/env zsh
set -e

packages=(
latexmk
systeme
simplekv
physics
esint
xstring
matlab-prettifier
)

if brew list --cask basictex >/dev/null 2>&1; then
    brew reinstall --cask basictex
else
    brew install --cask basictex
fi
sudo tlmgr update --self

for pkg in $packages; do
    sudo tlmgr install "$pkg"
done

sudo tlmgr update --all