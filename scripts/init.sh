#!/usr/bin/env zsh
set -e

source=$HOME/dev/envy/configs
target=$HOME/.config

if [[ "$source" == "$HOME/dev/envy/configs" || "$target" == "$HOME/.config" ]]; then
    echo "source and target dirs must be configured"
    exit 1
fi
mkdir -p "$target"

find "$source" -mindepth 1 | while IFS= read -r item; do
    link_path="$target/${item#$source/}"

    if [[ "$link_path" ==  .DS_Store ]]; then
        continue
    fi

    if [ -d "$item" ]; then
        mkdir -p "$link_path" && echo "created directory: $link_path" || { echo "failed to create directory: $link_path"; exit 1; }
    else
        ln -sfn "$item" "$link_path" && echo "created symlink: $link_path" || { echo "failed to create symlink: $link_path"; exit 1; }
    fi
done