# alias
alias reload='source $HOME/.zshrc'
alias ll='ls -la'

# brewfile
alias bbu="brew bundle dump --global --force"
alias bbi="brew bundle --global"

# starship
eval "$(starship init zsh)"

# volta setting
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
