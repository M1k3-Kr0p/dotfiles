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
alias src="source ~/.zshrc"
alias k="kubectl"
alias vi="nvim"
alias tf="terraform"
alias awsshell="aws-vault exec"
alias gst="git status"

export KUBECONFIG=~/.kube/config
export EDITOR="nvim"
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export AWS_VAULT_BACKEND="pass"
  export AWS_VAULT_PASS_PASSWORD_STORE_DIR="$HOME/.password-store/aws-vault"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

source <(fzf --zsh)
eval "$(starship init zsh)"
