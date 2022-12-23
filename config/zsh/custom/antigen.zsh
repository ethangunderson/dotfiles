source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle history
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply
