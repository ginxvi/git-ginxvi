# =========================================================
# GIN SIGNATURE : gin.w.xvi.e.s
# =========================================================

# ---------------------------------------------------------
# POWERLEVEL10K INSTANT PROMPT
# MUST STAY AT TOP
# ---------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# =========================================================
# CORE ENV
# =========================================================

export OS_TYPE="$(uname -s)"
export ARCH_TYPE="$(uname -m)"

export MAIN_PATH="$HOME/GINETSOPHIE"
export GITGINXVI_PATH="$MAIN_PATH/git-ginxvi"
export GINZSH_PATH="$GITGINXVI_PATH/ginzsh"

export CONFIG_PATH="$HOME/.config"
export ZSHRC_PATH="$HOME/.zshrc"

export GIN_SIGNATURE="gin-w-xvi-e-s"

export PATH="$HOME/.local/bin:$PATH"

# =========================================================
# ALIASES
# =========================================================

# local cd
alias main="cd $MAIN_PATH"
alias gingit="cd $GITGINXVI_PATH"
alias ginzsh="cd $GINZSH_PATH"
alias cf="cd $CONFIG_PATH"

# app aliases
alias m='mpv --no-video --loop-playlist=inf'

alias logx='python ~/Desktop/NF/LOGTOOL/main.py'
alias oplogx='code ~/Desktop/NF/LOGTOOL'

# global aliases
source "$GINZSH_PATH/global-aliases.zshrc"
source "$GINZSH_PATH/global-functions.zshrc"

# local aliases
source "$GINZSH_PATH/local-aliases.zshrc"

# =========================================================
# TOOLCHAINS / PACKAGE MANAGERS
# =========================================================

source "$GINZSH_PATH/brew.zshrc"
source "$GINZSH_PATH/bun.zshrc"
source "$GINZSH_PATH/cargo.zshrc"
source "$GINZSH_PATH/conda.zshrc"

# =========================================================
# DEV / UTILITIES
# =========================================================

source "$GINZSH_PATH/git.zshrc"
source "$GINZSH_PATH/web.zshrc"
source "$GINZSH_PATH/cleanup.zshrc"
source "$GINZSH_PATH/btop.zshrc"
source "$GINZSH_PATH/ollama.zshrc"
source "$GINZSH_PATH/bluetooth.zshrc"
source "$GINZSH_PATH/ghostty.zshrc"
source "$GINZSH_PATH/lich.zshrc"
source "$GINZSH_PATH/im-select.zshrc"
# =========================================================
# FZF
# =========================================================

# eval "$(/opt/homebrew/bin/fzf --zsh)"

# =========================================================
# EXTRA ZSH CONFIG
# =========================================================

source "$GINZSH_PATH/zshrc.zshrc"

# =========================================================
# POWERLEVEL10K
# =========================================================
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh