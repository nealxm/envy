#!/usr/bin/env zsh

set -e

source=$HOME/dev/envy/configs
target=$HOME/.config

dry_run=false
if [[ "$1" == "--dry-run" ]]; then
  dry_run=true
fi

run() {
  if $dry_run; then
    echo "[dry run]" "$@"
  else
    "$@"
  fi
}

find "$source" -mindepth 1 | while IFS= read -r item; do
    link_path="$target/${item#$source/}"

    if [[ "$link_path" ==  *(.DS_Store|/zsh) ]]; then
        continue
    fi

    if [[ "$item" == */zsh/zshrc ]]; then
        run ln -sfn "$item" "$HOME/.zshrc" && echo "created symlink: $HOME/.zshrc" || { echo "failed to create symlink: $HOME/.zshrc"; exit 1; }
        continue
    fi

    if [ -d "$item" ]; then
        run mkdir -p "$link_path" && echo "created directory: $link_path" || { echo "failed to create directory: $link_path"; exit 1; }
    else
        run ln -sfn "$item" "$link_path" && echo "created symlink: $link_path" || { echo "failed to create symlink: $link_path"; exit 1; }
    fi
done