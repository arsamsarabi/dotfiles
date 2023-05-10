source $HOME/.config/.env_vars

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.npm-global/bin:$PATH

# ----------------------------------------------------------------
# || ZSH AUTOSUGGESTIONS
# ----------------------------------------------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#57a177,bg=#e2f4ea,underline"

plugins=(
  git
  zsh-autosuggestions
  poetry
  z
  brew
)

MOO="$HOME/N25/"
PLAYGROUND="$HOME/Playground/"

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

# ----------------------------------------------------------------
# || etc.
# ----------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
