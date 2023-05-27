# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.config/.env_vars

eval "$(zoxide init zsh)"

export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.npm-global/bin:$PATH

ZSH_THEME="powerlevel10k/powerlevel10k"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# ----------------------------------------------------------------
# || ZSH AUTOSUGGESTIONS
# ----------------------------------------------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#57a177,bg=#e2f4ea,underline"

plugins=(
  zsh-syntax-highlighting
  git
  zsh-autosuggestions
  z
)

MOO="$HOME/MOO/"
PLAYGROUND="$HOME/Sandbox/"

# ----------------------------------------------------------------
# || ALIASES
# ----------------------------------------------------------------

# --- General
alias ..="cd .."
alias ...="cd ../.."
alias rmf="rm -rf"
alias clr="clear"
alias play="cd $PLAYGROUND && ls"
alias work="cd $MOO && ls"
alias empty="git commit --allow-empty -m \"Empty-Commit\""
alias got="got.sh" 

# --- Lazygit
alias lg="lazygit"

# --- Neovim
alias nv="nvim"
function vim_config {
 cd $HOME/.config/nvim
 nv
}

# --- tmux
alias tm="tmux"
alias tma="tm attach"
alias tms="tm source $HOME/config/tmux/tmux.conf"
function tmux_config {
  cd $HOME/.config/tmux
  lv
}

# --- ZSH
alias config="nv $HOME/.zshrc"
alias reload="source $HOME/.zshrc"

# --- PNPM
alias pn="pnpm"
alias pni="pn install"
alias pnid="pni --dev"
alias pnip="pni --peer"
alias pnu="pn uninstall"
alias pnd="pn dev"
alias pns="pn start"

# --- YouTube
alias ytd="youtube-dl"

# --- Python
alias py="python3"
alias pi="pip3"

# --- movies-cli
alias mvi="movie"

# --- dNote
alias nb="dnote"

# --- howdoi
alias how="howdoi"

# --- lsd
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# --- Turborepo
alias trepo="pnpm dlx create-turbo@latest" 

# --- dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dtf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dtfa="dtf add"
alias dtfc="dtf commit -m"
alias dtfp="dtf push"

# --- ZELLIJ
alias ze="zellij"
alias zel="ze list-sessions"
alias zea="ze attach"

# --- ZOXIDE
alias z="zoxide"

# --- GIT
alias g="git"

# --- PYTHON
alias python="python3"

# --- TERRAFORM
alias tr="terraform"
alias trp="tr plan"
alias tra="tr apply"
alias trf="tr fmt"

# --- TLDR
alias tldrf="tldr --list | fzf --preview 'tldr {1} --color=always' --preview-window=right,70% | xargs tldr"

# ----------------------------------------------------------------
# || etc.
# ----------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
