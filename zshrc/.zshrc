export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="Eastwood"

zstyle ':omz:update' mode reminder

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# Terminal autocomplete fix
autoload -Uz compinit && compinit

plugins=(
    git
)

alias dsync="git -C ~/dotfiles pull"
alias dpush="brew bundle dump --file ${HOME}/Brewfile --force && git -C ~/dotfiles add . && git -C ~/dotfiles commit -m 'Update Brewfile' && git -C ~/dotfiles push"
alias src="source ~/.zshrc"
alias k="kubectl"
alias vi="nvim"
alias vim="nvim"
alias tf="terraform"
alias awsshell="aws-vault exec"
alias gst="git status"
alias note="nvim ~/notes.md"
alias unfuck="git reset --soft HEAD~1"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
export NVM_DIR="$(brew --prefix nvm)"
export AWS_PAGER=""

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source <(fzf --zsh)
eval "$(starship init zsh)"
