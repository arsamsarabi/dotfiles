source $HOME/.env_vars
source $HOME/.bashrc

export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.npm-global/bin:$PATH

# bun completions
[ -s "/Users/arsamsarabi/.bun/_bun" ] && source "/Users/arsamsarabi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


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

# ----------------------------------------------------------------
# || ALIASES
# ----------------------------------------------------------------
PLAYGROUND="$HOME/Sandbox/"

# --- AWS
alias awsd="aws --profile fe-dev"

# --- GIT
alias g="git"
alias gin="git init && git add -A && git commit -m '✨ here we go again'"
alias empty="git commit --allow-empty -m \"Empty commit\""

function gcam {
  git commit -am "$1"
}

# --- Rust
alias ca="cargo add"
alias cb="cargo build"
alias cn="cargo new"
alias cr="cargo run -q"

# --- PYTHON
alias python="python3"

# --- General
alias ..="cd .. && la"
alias ...="cd ../.. && la"
alias rmf="rm -rf"
alias clr="clear"
alias play="cd $PLAYGROUND && ls"

# --- ZSH
alias config="code $HOME/.zshrc"
alias reload="source $HOME/.zshrc"

# --- PNPM
alias pn="pnpm"
alias pni="pn install"
alias pnid="pni --dev"
alias pnip="pni --peer"
alias pnu="pn uninstall"
alias pnd="pn dev"
alias pns="pn start"
alias pntt="pn t:test"
alias pntd="pn t:dev"
alias pntl="pn t:lint"
alias pntts="pn t:tsc"

# --- lsd
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# --- dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dtf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dtfa="dtf add"
alias dtfc="dtf commit -m"
alias dtfp="dtf push"

# --- TERRAFORM
alias tr="terraform"
alias trp="tr plan"
alias tra="tr apply"
alias trf="tr fmt"

# --- TLDR
alias tldrf="tldr --list | fzf --preview 'tldr {1} --color=always' --preview-window=right,70% | xargs tldr"

# --- cmatrix
alias hack="cmatrix -bsC blue"

# --- turbo
alias tu="turbo"
alias tur="turbo run"
alias tud="turbo run dev"

# ----------------------------------------------------------------
# || etc.
# ----------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /Users/arsamsarabi/.config/broot/launcher/bash/br

# pnpm
export PNPM_HOME="/Users/arsamsarabi/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# -------------------------
# GOT ---------------------
alias got='~/.got/got.sh'
# -------------------------

# -------------------------
# MOO ---------------------
# Variables
MOO="$HOME/MOO/"
MONOREPO=$MOO/moo-fe-monorepo/

# Aliases
alias work="cd $MOO && ls"

# Functions
function moo {
  # variables
  local project="${1:-products}"
  local command="${2:-dev}"

  # go to monorepo
  cd $MONOREPO

  # run command
  pnpm $project run $command
}
# -------------------------
