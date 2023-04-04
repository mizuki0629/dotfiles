# dotfiles
dotfiles for unix

## install
The installation can be done in several ways.

### 1. copy
copy dotfiles to your home dirctory
```sh
copy -r /path/to/repository/home/*    ~/
copy -r /path/to/repository/.config/* .config/
```

### 2. rrcm
[rrcm](https://github.com/mizuki0629/rrcm) is simple dotfiles management and deploy tool.

edit your .config/rrcm/config.yaml
```yaml
---
dotfiles:
  windows: "%USERPROFILE%\\dotfiles"
  mac: "${HOME}/.dotfiles"
  linux: "${HOME}/.dotfiles"
repos:
# add config for this repository
  - name: graphical
    url: 'https://github.com/mizuki0629/dotfiles.git'
    deploy:
      home:
        linux: "${HOME}"
      .config:
        linux: "${XDG_CONFIG_HOME}"
```

clone and deploy
```sh
rrcm update
```

## Applications
- fish
- lazygit
- lf
- pistol
- tmux
- starship
- dir_colors (Nord theme)
- git
