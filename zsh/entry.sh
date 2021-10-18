export LANG=en_US.UTF-8
export ZSH="/Users/le/.oh-my-zsh"
# export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

plugins=(
	git
	zsh-nvm
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh/nvmrc.sh
source ~/dotfiles/zsh/keybindings.sh

bindkey -v
alias vim="nvim"
# chpwd() ls

export STARSHIP_CONFIG=~/dotfiles/conf/starship.toml
eval "$(starship init zsh)" # load starship theme

