source ~/.config/.env_vars

# ----------------------------------------------------------------
# || ZSH AUTOSUGGESTIONS
# ----------------------------------------------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#247c5c,bg=#ade0cd,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

plugins=(
  git
  zsh-autosuggestions
  poetry
  z
  brew
)

# ----------------------------------------------------------------
# || ALIASES
# ----------------------------------------------------------------
MOO="${HOME}/moo/"
PLAYGROUND="${HOME}/Playground/"

alias config="nvim $HOME/.zshrc"
alias reload="source $HOME/.zshrc"

alias ..="cd .."
alias ...="cd ../.."
alias rmf="rm -rf"
alias g=git
alias python=python3
alias nv=nvim
alias clr="clear"

# ---------
# || MOO
# ---------
alias moo="cd ${MOO} && ls"
alias moono="cd ${MOO}/ecommerce-website-merch"

# ---------
# || Play
# ---------
alias play="cd ${PLAYGROUND} && ls"

# ---------
# || pnpm
# ---------
alias pn="pnpm"
alias pni="pn install"
alias pnid="pni --dev"
alias pnip="pni --peer"
alias pnu="pn uninstall"
alias pnd="pn dev"
alias pns="pn start"

# ---------
# || Init
# ---------
alias nxt="yarn create next-app --typescript"

# ---------
# || Tmux
# ---------
alias tx="tmux"

# ---------
# || LSD
# ---------
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# ---------
# || ZELLIJ
# ---------
alias ze="zellij"
alias zel='ze list-sessions'
alias zea='ze attach'

# ---------
# || LazyGit
# ---------
alias lg="lazygit"

# ---------
# || Misc
# ---------
alias z="zoxide"
alias empty="git commit --allow-empty -m \"Empty-Commit\""
alias got="got.sh" 

# ----------------------------------------------------------------
# || TERRAFORM
# ----------------------------------------------------------------
alias tr="terraform"
alias trp="tr plan"
alias tra="tr apply"
alias trf="tr fmt"

# ----------------------------------------------------------------
# || DOTFILE
# ----------------------------------------------------------------
alias dtf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dtfa="dtf add"
alias dtfc="dtf commit -m"
alias dtfp="dtf push"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# ----------------------------------------------------------------
# || FUNCTIONS
# ----------------------------------------------------------------
function mktw {
  yad tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p
}

# ----------------------------------------------------------------
# || etc.
# ----------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ----------------------------------------------------------------
# || NVM
# ----------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----------------------------------------------------------------
# PNPM 
# ----------------------------------------------------------------
export PNPM_HOME="/Users/arsamsarabi/Library/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
