# envy
###### a simple environment configurations manager

things i like:
- keep defaults as much as possible. sensible defaults are part of good software.
- use the included batteries. extensibility is great but having less to maintain is better.

## references
- [terminal](https://ghostty.org/)
- [editor](https://zed.dev/)
- [window manager](https://nikitabobko.github.io/AeroSpace/guide)
- [app launcher](https://github.com/mikker/LeaderKey.app)
- other tools
  - [fzf](https://github.com/junegunn/fzf)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [btop](https://github.com/aristocratos/btop)
  - [starship (prompt customization)](https://starship.rs/)
  - [borders (active window feedback)](https://github.com/FelixKratz/JankyBorders)
  - [sound source (audio mixer)](https://www.rogueamoeba.com/soundsource/)
  - [tmux (last resort)](https://github.com/tmux/tmux)
  - [neovim](https://neovim.io/)

## usage
edit `source` and `target` dirs. running script will create symlinks between the two:
```sh
./scripts/init.sh
```