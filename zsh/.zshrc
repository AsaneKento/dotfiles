# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"


# starship
eval "$(starship init zsh)"

# alias
alias reload='source $HOME/.zshrc'

# neovim
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
