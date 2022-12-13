# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
if test -f "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"; then
  source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
fi
