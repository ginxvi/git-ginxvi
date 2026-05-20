# OH MY ZSH
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# DEBIAN
PATH="$PATH:/usr/sbin:/sbin"
export PATH

# GIN
alias c='clear'
alias e='exit'
alias r='rm -rf'
alias b='batcat'
alias s='source'
alias la='ls -la'
alias ea='eza -la'
alias sa='sudo apt'
alias sn='sudo nala'
alias nz='nano /home/gc-thaitoan.guest/.zshrc'
alias sz='source /home/gc-thaitoan.guest/.zshrc'
alias bt='btop -u 100'

alias cdg='cd /Users/gc-thaitoan'
alias main='cd /Users/gc-thaitoan/GINETSOPHIE'
alias core='nano /home/gc-thaitoan.guest/coretech'

alias gpt='open https://chatgpt.com/'
alias ge='open https://gemini.google.com/app'

alias ru='rustup'

# CARGO
alias cg='cargo'
alias cgr='cargo run'
alias cgrr='cargo run --release'
alias cgb='cargo build'
alias cgbr='cargo build --release'
alias cgf='cargo fmt'
alias cgc='cargo clippy'
alias cgt='cargo test'

# GIT
alias gacp='git add . && git commit -m "ginxvi" && git push'

# Lima BEGIN
# Make sure iptables and mount.fuse3 are available
PATH="$PATH:/usr/sbin:/sbin"
export PATH
# Lima END
