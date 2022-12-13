if test -f "/opt/homebrew/share/antigen/antigen.zsh"; then
  source /opt/homebrew/share/antigen/antigen.zsh
else
  source /usr/local/share/antigen/antigen.zsh
fi

antigen bundle git
antigen bundle history
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme denysdovhan/spaceship-prompt

antigen apply
