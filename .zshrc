# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# go bin
export PATH=$HOME/go/bin:$PATH

# Setup fnm
eval "$(fnm env --use-on-cd)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  copyfile
  zsh-autosuggestions
  z
)

source $ZSH/oh-my-zsh.sh

alias git="/opt/homebrew/bin/git"
alias nv="nvim"
alias l="exa -a --long --icons"
alias tree="exa -a -T -L 2  --icons"
alias b="bat"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
