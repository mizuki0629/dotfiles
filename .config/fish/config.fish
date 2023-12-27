set fish_greeting
set -x EDITOR nvim

fish_vi_key_bindings

fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin

starship init fish | source
zoxide init fish | source
bass (dircolors -b ~/.dir_colors)

alias ls 'eza --color=auto --icons=auto'

alias dco 'docker compose'
alias dcb 'docker compose build'
alias dcr 'docker compose run --rm'

# fzf
set -x FZF_DEFAULT_OPTS \
       --no-unicode \
       --cycle \
       --layout=reverse \
       --height=80% \
       --border=sharp \
       --marker="*" \
       --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1 \
       --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1 \
       --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac \
       --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b \

# fzf.fish 
set -x fzf_preview_file_cmd pistol
set -x fzf_preview_dir_cmd pistol
set -x fzf_fd_opts --hidden
fzf_configure_bindings --directory=\co

[ -f "$__fish_config_dir/local.fish" ] && source "$__fish_config_dir/local.fish"
