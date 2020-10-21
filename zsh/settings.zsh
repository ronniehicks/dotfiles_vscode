# your project folder that we can `c [tab]` to
export PROJECTS=$HOME/src

export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=`whoami`
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export NVM_COMPLETION=true

export TERM="xterm-256color"
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(colored-man-pages dotenv encode64 extract git sudo transfer zsh-autosuggestions zsh-completions zsh-syntax-highlighting zsh-nvm)
source $ZSH/oh-my-zsh.sh

# initialize autocomplete here, otherwise functions won't be loaded
fpath+=~/.zfunc
autoload -U compinit && compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

fpath=($HOME/.dotfiles/functions $fpath)

autoload -U $HOME/.dotfiles/functions/*(:t)

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
