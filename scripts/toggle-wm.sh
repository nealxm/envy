#!/usr/bin/env zsh
set -e

if /usr/bin/pgrep -x AeroSpace; then
    /opt/homebrew/bin/aerospace enable toggle
else
    /usr/bin/open -a AeroSpace
fi