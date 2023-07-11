# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

### Zinit Config (Defined by tako)

# ---------------------------------------------------------
# basic
# ---------------------------------------------------------
# Manage command history
HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
## Share history with other zsh
setopt inc_append_history
setopt share_history
## Completing environment variables
setopt AUTO_PARAM_KEYS

# ---------------------------------------------------------
# Zinit plugins
# ---------------------------------------------------------
zinit ice depth=1; zinit light romkatv/powerlevel10k

# syntax highlighting
zinit ice wait'!0'; zinit light zsh-users/zsh-syntax-highlighting
zinit ice wait'!0'; zinit light zdharma/fast-syntax-highlighting

# input completion
zinit ice wait'!0'; zinit light zsh-users/zsh-autosuggestions
zinit ice wait'!0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit
## Completion matches lowercase and uppercase letters
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## When displaying a list of completion candidates, select with Tab or arrow
zstyle ':completion:*:default' menu select=1

# Search Command History
zinit ice wait'!0'; zinit light zdharma/history-search-multi-word

# ---------------------------------------------------------
# alias
# ---------------------------------------------------------
alias python="python3"
alias pip="pip3"
alias ls='ls --color=auto -G'
alias la='ls -lAG'
alias ll='ls -lG'

# ---------------------------------------------------------
# Node
# ---------------------------------------------------------
export PATH=$HOME/.nodebrew/current/bin:$PATH

# ---------------------------------------------------------
# Peco
# ---------------------------------------------------------
## コマンド履歴検索
function peco-history-selection() {
  BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

### End of Zinit Config

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---------------------------------------------------------
# xxenv
# ---------------------------------------------------------
eval "$(rbenv init - zsh)"
