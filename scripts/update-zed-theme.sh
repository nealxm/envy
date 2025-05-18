#!/usr/bin/env zsh

set -e

source="https://raw.githubusercontent.com/rose-pine/zed/refs/heads/main/themes/rose-pine.json"
out="$HOME/.config/zed/themes/rose-pine.json"

curl -fL -o "$out" "$source"
# sed -i'' 's/"italic"/null/g'