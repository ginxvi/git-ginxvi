alias s="echo 'source' && source"
alias c="echo 'clear' && clear"
alias e="echo 'exit' && exit"
alias r="echo 'rm -rf' && rm -rf"
alias p="echo 'pwd' && pwd"
alias b='bat --color=always --style=plain --line-range=:500 -p'
alias l="echo 'ls -ac' && ls -ac"

alias sr="echo 'sudo rm -rf' && sudo rm -rf"
alias la="echo 'ls -alh' && ls -alh"
alias ea="echo 'eza -alh' && eza -alh"
alias nn='nano note'
alias cn='cat note'
alias bn='bat note'
alias en='echo "$1" >> note'

alias own="echo 'sudo chown $(whoami):$(id -gn)' && sudo chown $(whoami):$(id -gn)"
alias ownall="echo 'sudo chown -R $(whoami):$(id -gn)' && sudo chown -R $(whoami):$(id -gn)" 

lal() {
  defaults read com.apple.HIToolbox AppleEnabledInputSources 2>/dev/null |
  grep -E 'KeyboardLayout Name|Input Mode' |
  sed -E '
    s/.*"KeyboardLayout Name" = "([^"]+)".*/EN  : \1/;
    s/.*"Input Mode" = ".*Telex".*/VI  : Telex/;
    s/.*"Input Mode" = ".*VNI".*/VI  : VNI/;
  ' |
  sort -u
}

VNI() {
  osascript -e '
  tell application "System Events"
    key code 102 using {control down, option down, command down}
  end tell'
}

TELEX() {
  osascript -e '
  tell application "System Events"
    key code 104 using {control down, option down, command down}
  end tell'
}

ENG() {
  osascript -e '
  tell application "System Events"
    key code 49 using {control down}
  end tell'
}