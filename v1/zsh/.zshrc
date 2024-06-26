# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"


# starship
eval "$(starship init zsh)"

# alias
alias reload='source $HOME/.zshrc'
alias ll='ls -la'

# neovim
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

# brewfile
alias bbu="brew bundle dump --global --force"
alias bbi="brew bundle --global"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlihting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# peco setting
function peco-select-history() {
    =$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# volta setting
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh
