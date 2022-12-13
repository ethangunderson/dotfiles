export PATH=~/scripts:/opt/homebrew/bin:$PATH

. /opt/homebrew/opt/asdf/libexec/asdf.sh

source <(cat $HOME/.config/zsh/custom/*)

eval "$(direnv hook zsh)"

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

