# ==============================================================================
#                      ZSH CONFIGURATION FILE (BY GIN)
#                      Optimized Edition
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. MÔI TRƯỜNG & ĐƯỜNG DẪN (ENV & PATHS)
# ------------------------------------------------------------------------------
export PYTHONPATH="$HOME/Desktop/RAPHAEL/2_USUALLIBS"
export PYTHONSTARTUP="$HOME/.pythonrc"

# API Keys
export OLLAMA_API_KEY="ollama-local"
# Lệnh dưới chỉ cần gõ 1 lần trên terminal, không nên để file config chạy lại mỗi lần mở tab:
# openclaw config set models.providers.ollama.apiKey "ollama-local"

# Cấu hình PATH tập trung
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH" 
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@25/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/var/root/.openfang/bin:$PATH"

# ------------------------------------------------------------------------------
# 2. GIAO DIỆN & MÀU SẮC TERMINAL (UI & PROMPT)
# ------------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
REPORTTIME=1

autoload -U colors && colors

# Lời chào
echo -e "\033[1m\033[38;5;82mBonjour my Lord!\033[0m"

# Prompt
export PS1='%B%F{white}[%F{red}%D{%L:%M:%S}%F{white}|%F{green}mn:%m%F{white}|%F{cyan}un:%n%F{white}|%F{magenta}%~%F{white}]%f%b
%K{red}          %k
%K{red}    ⭐    %k
%K{red}          %k
$ '

# ------------------------------------------------------------------------------
# 3. ALIAS CƠ BẢN & ĐIỀU HƯỚNG
# ------------------------------------------------------------------------------
alias oz='code ~/.zshrc'
alias sz='source ~/.zshrc'
alias nz='nano ~/.zshrc'
alias z='echo s~/.zshrc'
alias ch='cuuho'
alias own='sudo chown $(whoami):staff'

alias c='clear'
alias l='ls'
alias la='ls -la'
alias opd='open ~/Desktop'
alias cdde='cd ~/Desktop'
alias cddo='cd ~/Downloads'
alias ff='find . -name'
fn cds() { cd "$1" && la }
alias s..='sudo cd ..'
alias ..='cd ..'
alias e='exit'

# Everyday & Workspace
alias updatebrew='brew update && brew upgrade && brew cleanup'
alias everyday='source ~/POLARIS_CONQUERSTELLAR/EVERYDAY_RUNNING.sh'
alias g="~/grokcli"
alias b='bun run start'
alias conquer='ssh tt@10.3.0.5'
alias main='cd ~/GINETSOPHIE'

alias opt1='source ~/POLARIS_CONQUERSTELLAR/run-opt-1.sh'
alias opt2='source ~/POLARIS_CONQUERSTELLAR/run-opt-2.sh'
alias opt3='source ~/POLARIS_CONQUERSTELLAR/run-opt-3.sh'
alias opt4='source ~/POLARIS_CONQUERSTELLAR/run-opt-4.sh'
alias opt5='source ~/POLARIS_CONQUERSTELLAR/run-opt-5.sh'

alias m='mpv --no-video --loop-playlist=inf'

alias music='ncmpcpp'
alias re-music='mpd --kill && mpd && ncmpcpp' # Dùng để khởi động lại nếu bị kẹt

alias gpt='open https://chatgpt.com/'
alias ge='open https://gemini.google.com/app'

alias ducli='du -sh /opt/homebrew/Cellar/* 2>/dev/null | sort -hr | head -30'
alias ducask='du -sh /opt/homebrew/Caskroom/* 2>/dev/null | sort -hr | head -30'
alias duapp='du -sh /Applications/* 2>/dev/null | sort -hr | head -30'

# ------------------------------------------------------------------------------
# 4. HỆ THỐNG & PHẦN CỨNG (MAC, DISPLAY, TRASH)
# ------------------------------------------------------------------------------
alias rmtrash='rm -rf ~/.Trash/*'
alias cleantrash='[ -n "$(ls -A ~/.Trash 2>/dev/null)" ] && sudo rm -rf /Volumes/Macintosh\ HD/.Trashes/$(id -u)/* && echo "🧹 Đã dọn sạch Thùng Rác" || echo "✅ Không có gì trong Thùng Rác"'
alias scrs='screencapture -i ~/Desktop/screenshot_$(date "+%Y%m%d-%H%M%S").png'
alias n1='uname -m'
alias macinfo='system_profiler SPHardwareDataType && df -h && vm_stat'
alias maccores='echo Physical-nhan:&&sysctl -n hw.physicalcpu&& echo Logical-luong:&&sysctl -n hw.logicalcpu&& echo GPU:&&system_profiler SPDisplaysDataType | grep "Total"'
alias bt='btop -u 300 -p'

# Màn hình
alias killbd='killall BetterDisplay'
alias dpl='displayplacer list'
alias setres='displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:2336x1510 hz:120 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0"'
alias setdell='displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:2336x1510 hz:120 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0" "id:F07DD380-693E-420E-AAF8-70465CA6A4F2 res:1920x1080 hz:120 color_depth:8 enabled:true scaling:off origin:(2336,-839) degree:0"'

# Android / Oppo
alias oppo-set='brew install scrcpy android-platform-tools --cask android-platform-tools; adb devices; adb tcpip 5555; adb connect 172.16.1.219:5555; adb devices'
alias oppo='scrcpy -S -w --max-fps 30 --always-on-top -b 2M -m 1024'

# ------------------------------------------------------------------------------
# 5. MÔI TRƯỜNG PHÁT TRIỂN (CONDA, PYTHON, NODE, AI)
# ------------------------------------------------------------------------------
alias condau='conda update -n base -c defaults conda -y'
alias condaup='conda update --all -y'
alias condar='conda remove'
alias condf='conda deactivate; conda activate Con-Default-14'

# Python Scripts (Đã đổi thành Hàm thực thụ)
function clrall() { find ~/Desktop -type f -name "tempCodeRunnerFile.py" -delete && find ~/Desktop -type d -name "__pycache__" -exec rm -rf {} + && find ~/Desktop -type f -name ".DS_Store" -delete; }
function importice() { find ~/Desktop/RAPHAEL/2_USUALLIBS -type d -name "__pycache__" -exec rm -rf {} + && cp -R ~/Desktop/RAPHAEL/2_USUALLIBS/* "$1" && find ~/Desktop/RAPHAEL/2_USUALLIBS -type f -name "*.py" | while read file; do filename=$(basename "$file" .py); echo "\033[1mimport $filename\033[0m"; done; }
function importicel_cmd() { clrall && find "$1" -type f -name "*icel*" -delete && cp -R ~/Desktop/ICEBEAR_GENERALLIB/* "$1" && find ~/Desktop/ICEBEAR_GENERALLIB -type f -name "*.py" | while read file; do filename=$(basename "$file" .py); echo "\033[1mimport $filename\033[0m"; done; }

# Ollama AI
alias ols='ollama list'
alias ol='ollama run'
alias olp='ollama pull'
alias olr='ollama rm'
alias o='ollama' 

# OpenClaw & Bots (Chuyển thành hàm để gọn gàng)
function checkopenclaw() { find ~ -iname "*openclaw*" 2>/dev/null; }

function re-ol() {
    pkill -f ollama
    sudo rm -rf /Applications/Ollama.app /usr/local/bin/ollama
    rm -rf ~/Library/Application\ Support/Ollama ~/Library/Caches/ollama ~/Library/Caches/com.electron.ollama ~/.ollama
    echo -e "\nINSTALL\n"
    brew install ollama
}

function re-op() {
    pkill -f openclaw || true
    pkill -f moltbot || true
    pkill -f clawdbot || true
    launchctl bootout gui/$UID/bot.molt.gateway 2>/dev/null
    rm -f ~/Library/LaunchAgents/{bot.molt.gateway.plist,com.clawdbot.gateway.plist,com.openclaw.gateway.plist,ai.openclaw.gateway.plist}
    rm -rf /Applications/OpenClaw.app ~/.openclaw ~/.clawdbot ~/.moltbot ~/Library/Application\ Support/OpenClaw
    npm uninstall -g openclaw
    brew uninstall openclaw
    echo -e "\nINSTALL\n"
    npm install -g openclaw
}

function superuninstallopenclaw() {
    openclaw gateway stop
    openclaw uninstall --all --yes --non-interactive
    npm uninstall -g openclaw
    npm uninstall openclaw
    brew uninstall openclaw
    rm -rf ~/.openclaw ~/.clawdbot ~/.moltbot ~/.config/openclaw ~/.local/share/openclaw ~/.local/state/openclaw ~/.cache/openclaw
    rm -f ~/Library/LaunchAgents/ai.openclaw.gateway.plist
    rm -rf ~/.local/share/fnm ~/.fnm
    brew uninstall fnm
}

# ------------------------------------------------------------------------------
# 6. APP SHORTCUTS CÁ NHÂN (LOG, BOT, TOOLS)
# ------------------------------------------------------------------------------
alias logx='python ~/Desktop/NF/LOGTOOL/main.py'
alias oplogx='code ~/Desktop/NF/LOGTOOL'
alias dia='python ~/Desktop/DIARY/main.py'
alias runitui='conda deactivate && conda activate conpy313 && python "~/Desktop/ICEBEAR_GENERALLIB/______icel_tools/RUNIT_UI/RUNIT_UI.py"'
alias oprunitui='python "~/Desktop/ICEBEAR_GENERALLIB/______icel_tools/RUNIT_UI/OPENCODE.py"'
alias stat='swift ~/Desktop/STAT.swift'
alias gin='conda deactivate && conda activate conpy311 && python "~/Desktop/ICEBEAR_GENERALLIB/______icel_tools/TELEBOT/GIN.py"'
alias gindis='conda deactivate && conda activate conpy311 && python "~/Desktop/ICEBEAR_GENERALLIB/______icel_tools/DISCORDBOT/main.py"'
alias gg='python -u "~/Desktop/ICEBEAR_GENERALLIB/______icel_tools/GG/main.py"'

# ------------------------------------------------------------------------------
# 7. CHỨC NĂNG HỖ TRỢ (NODE.JS, TYPESCRIPT, FONTS)
# ------------------------------------------------------------------------------

# ĐÃ TẮT NVM VÌ XUNG ĐỘT VỚI FNM GÂY CHẬM TERMINAL
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

function upfnm() {
  if [[ "$1" == "-p" || "$1" == "--pass" ]]; then
    echo "\n>>> Skip update/upgrade, just check versions"
  else
    echo "\n>>> Remove nvm"; brew uninstall nvm 2>/dev/null
    echo "\n>>> Brew update & upgrade"; brew update && brew upgrade && brew cleanup
    echo "\n>>> Install/Upgrade fnm"; brew install fnm || brew upgrade fnm
    echo "\n>>> Install Node LTS"; fnm install --lts
    echo "\n>>> Install lastest pnpm"; npm install -g pnpm@latest
  fi
  echo "\n>>> Tool Versions:"; fnm list; node -v; fnm -V; npm -v; pnpm -v; brew -v
}

function newts() {
  dirname=$1
  mkdir "$dirname" && cd "$dirname" || exit
  echo "📦 Init project with pnpm..."; pnpm init
  echo "🛠️ Install TypeScript + ts-node..."; pnpm add -D typescript ts-node @types/node
  echo "⚙️ Create tsconfig.json..."; npx tsc --init
  echo "✅ Done! Project created at $dirname"
}

alias ineslint='pnpm add -D eslint; pnpm dlx @eslint/create-config'
alias ints='pnpm init; pnpm add -D typescript ts-node @types/node; npx tsc --init;'

function unzipfont() {
  fontzip="$1"
  if [ -f "$fontzip" ]; then
    echo "Unzipping font file: $fontzip"
    unzip "$fontzip" -d fonts_temp
    find fonts_temp -type f \( -iname "*.ttf" -o -iname "*.otf" -o -iname "*.dfont" \) -exec cp {} ~/Library/Fonts/ \;
    echo "Font unzipped to ~/Library/Fonts/"; rm -rf fonts_temp
  else
    echo "File not found: $fontzip"
  fi
}

# ------------------------------------------------------------------------------
# 8. HỆ THỐNG GHI CHÚ NHANH (NOTES)
# ------------------------------------------------------------------------------
function note() {
  logfile="$HOME/.notes.log"
  chflags nouchg "$logfile" 2>/dev/null || true
  block_id=$(grep -c "^┌" "$logfile" 2>/dev/null || echo 0)
  block_id=$((block_id + 1))
  now=$(date "+%Y-%m-%d %H:%M:%S")
  weekday=$(LC_TIME=vi_VN.UTF-8 date +%A)
  weeknum=$(date +%U)
  day=$(date +%-d)
  monthweek=$(( (day - 1) / 7 + 1 ))
  hour=$(date +%H)

  if   [ $hour -ge 0  ] && [ $hour -lt 5 ];  then buoi="Khuya"
  elif [ $hour -ge 5  ] && [ $hour -lt 11 ]; then buoi="Sáng"
  elif [ $hour -ge 11 ] && [ $hour -lt 13 ]; then buoi="Trưa"
  elif [ $hour -ge 13 ] && [ $hour -lt 18 ]; then buoi="Chiều"
  else buoi="Tối"; fi

  case $(date +%m) in
    12|01|02) season="Đông" ;;
    03|04|05) season="Xuân" ;;
    06|07|08) season="Hạ" ;;
    09|10|11) season="Thu" ;;
  esac

  {
    echo "┌───────────────────────────────"
    echo "│ ID: $block_id"
    echo "│ Time: $now"
    echo "│ Thứ: $weekday | Tuần $monthweek của tháng | Tuần $weeknum của năm"
    echo "│ Buổi: $buoi | Mùa: $season"
    echo "├───────────────────────────────"
    echo "$*"
    echo "└───────────────────────────────\n"
  } >> "$logfile"
  chflags uchg "$logfile"
}

function n() {
  local file="$HOME/note.note"
  local msg=$(printf "%b" "$*")
  touch "$file"
  printf "\n\n[%s]\n%s\n" "$(date '+%Y-%m-%d %H:%M:%S')" "$msg" >> "$file"
}

alias vnote='open $HOME/.notes.log'
alias nnote='nano $HOME/.notes.log'
alias cnote='chflags nouchg $HOME/.notes.log 2>/dev/null && rm -f $HOME/.notes.log && echo "Notes cleared."'
alias opn='cat $HOME/note.note'

function dnote() {
  logfile="$HOME/.notes.log"
  id="$1"
  chflags nouchg "$logfile" 2>/dev/null || true
  awk -v id="$id" '
    BEGIN {inblock=0; target=0; skip=0}
    /^┌/ {inblock=1; target=0; skip=0}
    /^│ ID: / { if ($3 == id) target=1 }
    /^├/ { if (inblock && target) { print; print "[ĐÃ XOÁ]"; skip=1; next } }
    /^└/ { skip=0; inblock=0; target=0; print; next }
    { if (!skip) print }
  ' "$logfile" > "${logfile}.tmp" && mv "${logfile}.tmp" "$logfile"
  chflags uchg "$logfile"
}

# ------------------------------------------------------------------------------
# 9. LỊCH & DASHBOARD (BY GIN CLAVEND)
# ------------------------------------------------------------------------------
function showlich() {
    RED="\033[31m"; GREEN="\033[32m"; CYAN="\033[36m"; YELLOW="\033[33m"; RESET="\033[0m"
    TODAY=$(date +%d); MONTH=${1:-$(date +%m)}; YEAR=${2:-$(date +%Y)}
    echo -e "\n${CYAN}====== LỊCH THÁNG $MONTH / $YEAR ======${RESET}\n"
    RAW=$(cal $MONTH $YEAR)
    if [[ "$MONTH" == "$(date +%m)" && "$YEAR" == "$(date +%Y)" ]]; then
        RAW=$(echo "$RAW" | sed "s/ \( $TODAY \)\|^$TODAY / ${YELLOW}[${TODAY}]${RESET}/g")
    fi
    echo -e "$RAW\n\n${GREEN}====== FULL YEAR $YEAR ======${RESET}\n"; cal -y $YEAR; echo ""
}

function showfull() {
    showlich "$@"
    LUNAR=$(date +"%Y-%m-%d" | xargs -I{} python3 -c 'import sys; from lunardate import LunarDate; y,m,d=map(int,"{}".split("-")); l=LunarDate.fromSolarDate(y,m,d); print(f"{l.day}/{l.month}/{l.year}")' 2>/dev/null || echo "Require: pip install lunardate")
    echo -e "${GREEN}Ngày âm lịch hôm nay: \033[35m$LUNAR\033[0m\n"
    
    echo -e "\033[36m========== GIỜ THEO MÚI ==========\033[0m"
    echo -e "\033[33m🇻🇳 Việt Nam:      \033[0m$(TZ='Asia/Ho_Chi_Minh' date '+%H:%M')"
    echo -e "\033[33m🇺🇸 New York:      \033[0m$(TZ='America/New_York' date '+%H:%M')\n"

    WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=10.82&longitude=106.63&current_weather=true")
    TEMP=$(echo $WEATHER | grep -o '"temperature":[0-9\.]*' | cut -d: -f2)
    WIND=$(echo $WEATHER | grep -o '"windspeed":[0-9\.]*' | cut -d: -f2)
    echo -e "\033[36m========== THỜI TIẾT SG / HCM ==========\033[0m"
    echo -e "Nhiệt độ: \033[33m${TEMP}°C\033[0m\nGió:       \033[33m${WIND} km/h\033[0m\n"

    QUOTES=("Cuộc đời này đắng, nhưng anh thì ngọt với tôi." "Giữa khói thuốc và lập trình, chỉ có tình nghĩa đàn ông ở lại." "Sống cho tử tế, code cho sạch, yêu thì đừng lật lọng." "Đời không nương anh, nhưng tôi nương anh.")
    echo -e "\033[32mTrích dẫn hôm nay: \033[0m\033[36m\"${QUOTES[$(( RANDOM % ${#QUOTES[@]} ))]}\"\033[0m\n"
}

function lich() {
    TODAY=$(date +%d); MONTH=$(date +%m); YEAR=$(date +%Y)
    RAW=$(cal $MONTH $YEAR | sed "s/ \( $TODAY \)\|^$TODAY / \033[33m[${TODAY}]\033[0m/g")
    echo -e "\033[36m====== LỊCH $MONTH / $YEAR ======\033[0m\n$RAW\n"
}

function dashboard() {
    while true; do clear; lich; sleep 60; done
}

# ------------------------------------------------------------------------------
# 10. KỊCH BẢN CHỨC NĂNG LỚN (WI-FI & CHEAT SHEET)
# ------------------------------------------------------------------------------
function ginwf() {
    local interface=$(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}')
    [[ -z "$interface" ]] && interface="en0"

    echo "🔧 [PRE-CHECK] Đang kiểm tra trạng thái Card Wi-Fi ($interface)..."
    local power_status=$(networksetup -getairportpower "$interface" | awk '{print $4}')
    
    if [[ "$power_status" == "Off" ]]; then
        echo "   ⚠️ Wi-Fi đang TẮT. Đang kích hoạt lại..."
        networksetup -setairportpower "$interface" on; sleep 3
    else
        local current_net=$(networksetup -getairportnetwork "$interface" | awk -F': ' '{print $2}')
        if [[ -n "$current_net" && "$current_net" != "You are not associated"* && "$current_net" != "Wi-Fi power is currently off." ]]; then
            echo "   🔄 Đang ngắt kết nối (Reset Card) để đảm bảo kết quả test trong sạch..."
            networksetup -setairportpower "$interface" off; sleep 2; networksetup -setairportpower "$interface" on; sleep 3
        fi
    fi

    echo "🔍 [INIT] Đang quét danh sách các mạng Wi-Fi đã lưu..."
    local saved_networks=("${(@f)$(networksetup -listpreferredwirelessnetworks "$interface" | tail -n +2 | sed 's/^\t//')}")
    [[ ${#saved_networks[@]} -eq 0 ]] && { echo "❌ Không tìm thấy mạng Wi-Fi lưu trữ."; return 1; }

    echo "\n📋 DANH SÁCH MẠNG WI-FI:"
    for i in {1..${#saved_networks[@]}}; do echo "   [$i] ${saved_networks[$i]}"; done
    
    local user_input
    read "user_input?👉 Chọn số mạng muốn test (VD: 1 3, hoặc 0 để test hết): "

    local selected_indices=()
    [[ "$user_input" == *"0"* ]] && selected_indices=({1..${#saved_networks[@]}}) || selected_indices=(${(s: :)user_input})

    local valid_networks=(); local results=(); local best_ssid=""; local best_down=0
    for idx in "${selected_indices[@]}"; do
        [[ "$idx" -ge 1 && "$idx" -le ${#saved_networks[@]} ]] && valid_networks+=("${saved_networks[$idx]}")
    done

    for ssid in "${valid_networks[@]}"; do
        echo "\n🎯 Đang test mạng: **$ssid**"
        networksetup -setairportnetwork "$interface" "$ssid" >/dev/null 2>&1
        sleep 5
        
        local ping_stats=$(ping -c 3 -W 2 8.8.8.8 2>/dev/null)
        if [[ $? -ne 0 ]]; then
            results+=("$ssid|0|0|No Internet")
            continue
        fi
        
        local nq_output=$(networkquality 2>/dev/null)
        local down_speed=$(echo "$nq_output" | awk '/Download capacity:/ {print $3}')
        local up_speed=$(echo "$nq_output" | awk '/Upload capacity:/ {print $3}')
        
        results+=("$ssid|${down_speed:-0}|${up_speed:-0}|OK")
        if (( $(echo "${down_speed:-0} > $best_down" | bc -l 2>/dev/null || echo 0) )); then
            best_down=$down_speed; best_ssid="$ssid"
        fi
    done

    echo "\n📊 KẾT QUẢ TEST:"
    for res in "${results[@]}"; do echo "$res"; done

    if [[ -n "$best_ssid" ]]; then
        echo "\n🏆 Tối ưu nhất: **$best_ssid** ($best_down Mbps). Đang kết nối..."
        networksetup -setairportnetwork "$interface" "$best_ssid" >/dev/null 2>&1
    fi
}

function cuuho() {
    local GREEN="\033[1;32m"; local YELLOW="\033[1;33m"; local CYAN="\033[1;36m"; local MAGENTA="\033[1;35m"; local RESET="\033[0m"
    clear
    echo -e "${MAGENTA}==============================================================================${RESET}"
    echo -e "${GREEN}               🚀 BẢNG CỨU HỘ TERMINAL - TINH HOA HỘI TỤ 🚀                 ${RESET}"
    echo -e "${MAGENTA}==============================================================================${RESET}\n"

    echo -e "${YELLOW}▶ 1. HOMEBREW${RESET}"
    echo -e "  ${CYAN}• Cài / Gỡ   :${RESET} ${GREEN}brew install <tên>${RESET} | ${GREEN}brew uninstall <tên>${RESET}\n"

    echo -e "${YELLOW}▶ 2. NPM & FNM${RESET}"
    echo -e "  ${CYAN}• Đổi Node   :${RESET} ${GREEN}fnm use <version>${RESET} | ${GREEN}fnm default <version>${RESET}\n"

    echo -e "${YELLOW}▶ 3. OLLAMA${RESET}"
    echo -e "  ${CYAN}• Chạy / Dừng:${RESET} ${GREEN}ollama run <tên>${RESET} | ${GREEN}ollama rm <tên>${RESET}\n"

    echo -e "${YELLOW}▶ 4. ANACONDA${RESET}"
    echo -e "  ${CYAN}• Bật / Tắt  :${RESET} ${GREEN}conda activate <tên>${RESET} | ${GREEN}conda deactivate${RESET}\n"

    echo -e "${YELLOW}▶ 5. XỬ LÝ PORT BỊ CHIẾM${RESET}"
    echo -e "  ${CYAN}• Check Port :${RESET} ${GREEN}lsof -i :<số_port>${RESET}"
    echo -e "  ${CYAN}• Kill Port  :${RESET} ${GREEN}kill -9 <PID>${RESET}\n"

    echo -e "${YELLOW}▶ 6. HỆ THỐNG CƠ BẢN${RESET}"
    echo -e "  ${CYAN}• Nén / Giải :${RESET} ${GREEN}zip -r <tên.zip> <folder>${RESET} | ${GREEN}unzip <tên.zip>${RESET}\n"

    echo -e "${CYAN} Gõ phím bất kỳ để thoát... ${RESET}"
    read -n 1 -s; clear
}

# ------------------------------------------------------------------------------
# 11. FUN & MISC
# ------------------------------------------------------------------------------
alias fuck='echo fuck you bitch'
alias me:='echo HELLO CAI DIT ME MAY CHU'
alias AI.Lia.activate='c && echo Lia xin chao chu nhan! \<3 && echo'

# ------------------------------------------------------------------------------
# 12. CONDA INITIALIZATION (GIỮ NGUYÊN BẢN GỐC TẠI ĐÁY FILE)
# ------------------------------------------------------------------------------
# >>> conda initialize >>>
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



function zsh_info() {
    local file="${HOME}/.zshrc"

    if [[ ! -f "$file" ]]; then
        echo "❌ Không tìm thấy file ~/.zshrc"
        return 1
    fi

    echo "\n====================================="
    echo "🌟 DANH SÁCH ALIAS"
    echo "====================================="
    {
        echo "TÊN ALIAS|MÔ TẢ"
        echo "---------|-----"
        awk '
            # Nếu là comment, lưu lại và bỏ dấu # đi
            /^[[:space:]]*#/ { desc = $0; sub(/^[[:space:]]*#[[:space:]]*/, "", desc); next }
            
            # Nếu là alias
            /^[[:space:]]*alias[[:space:]]+[^=[:space:]]+=/ {
                line = $0
                sub(/^[[:space:]]*alias[[:space:]]+/, "", line)
                split(line, arr, "=")
                name = arr[1]
                print name "|" desc
                desc = "" # Reset mô tả
                next
            }
            # Nếu dòng không phải comment/alias thì reset mô tả (để không bị gán nhầm cho cái dưới)
            { desc = "" }
        ' "$file" | sort
    } | column -t -s '|'

    echo "\n====================================="
    echo "🌟 DANH SÁCH HÀM (FUNCTIONS)"
    echo "====================================="
    {
        echo "TÊN HÀM|MÔ TẢ"
        echo "-------|-----"
        awk '
            /^[[:space:]]*#/ { desc = $0; sub(/^[[:space:]]*#[[:space:]]*/, "", desc); next }
            
            # Bắt style: function ten_ham
            /^[[:space:]]*function[[:space:]]+[^[:space:]()]+/ {
                line = $0
                sub(/^[[:space:]]*function[[:space:]]+/, "", line)
                split(line, arr, "[[:space:]\\(]")
                name = arr[1]
                print name "|" desc
                desc = ""
                next
            }
            
            # Bắt style: ten_ham()
            /^[[:space:]]*[^[:space:]()]+[[:space:]]*\(\)/ {
                line = $0
                sub(/^[[:space:]]*/, "", line)
                split(line, arr, "\\(")
                name = arr[1]
                if (name != "if" && name != "while" && name != "for") {
                    print name "|" desc
                }
                desc = ""
                next
            }
            { desc = "" }
        ' "$file" | sort
    } | column -t -s '|'

    echo "\n====================================="

    # Vòng lặp tương tác với người dùng
    local user_input
    while true; do
        printf "👉 Nhập tên alias hoặc hàm để xem chi tiết (hoặc nhấn 'e' để thoát): "
        read -r user_input

        # Thoát nếu nhập e hoặc bỏ trống
        if [[ "$user_input" == "e" || -z "$user_input" ]]; then
            echo "👋 Đã thoát. Chúc bạn code vui vẻ!"
            break
        fi

        echo "\n--- 🔍 CHI TIẾT: $user_input ---"
        
        # Kiểm tra xem có phải alias không
        if alias "$user_input" >/dev/null 2>&1; then
            alias "$user_input"
        
        # Kiểm tra xem có phải function không
        elif functions "$user_input" >/dev/null 2>&1; then
            functions "$user_input"
        
        else
            echo "❌ Không tìm thấy '$user_input'."
            echo "💡 Lưu ý: Hệ thống đang đọc các lệnh đã load trên terminal hiện tại."
            echo "Nếu bạn vừa thêm mới vào .zshrc, hãy nhớ chạy 'source ~/.zshrc' trước."
        fi
        echo "----------------------------------\n"
    done
}


blue() {
  # Kiểm tra xem máy đã cài blueutil chưa
  if ! command -v blueutil &> /dev/null; then
    echo "Lỗi: Lệnh này cần 'blueutil' để hoạt động trên macOS."
    echo "Anh vui lòng chạy lệnh sau để cài đặt: brew install blueutil"
    return 1
  fi

  # Lấy trạng thái hiện tại của Bluetooth (1 là On, 0 là Off)
  local state=$(blueutil -p)

  if [[ -z "$1" ]]; then
    # Không có hậu tố: Toggle (đang On -> Off, đang Off -> On)
    if [[ "$state" == "1" ]]; then
      blueutil -p 0
      echo "Bluetooth đang BẬT ➔ Đã TẮT."
    else
      blueutil -p 1
      echo "Bluetooth đang TẮT ➔ Đã BẬT."
    fi

  elif [[ "$1" == "1" ]]; then
    # Hậu tố 1: Bật Bluetooth
    if [[ "$state" == "1" ]]; then
      echo "Bluetooth hiện đã BẬT sẵn."
    else
      blueutil -p 1
      echo "Đã BẬT Bluetooth."
    fi

  elif [[ "$1" == "0" ]]; then
    # Hậu tố 0: Tắt Bluetooth
    if [[ "$state" == "0" ]]; then
      echo "Bluetooth hiện đã TẮT sẵn."
    else
      blueutil -p 0
      echo "Đã TẮT Bluetooth."
    fi

  else
    # Sai hậu tố
    echo "Hậu tố không hợp lệ. Hướng dẫn sử dụng:"
    echo "  blue    : Chuyển đổi trạng thái (Toggle) Bluetooth"
    echo "  blue 1  : Bật Bluetooth"
    echo "  blue 0  : Tắt Bluetooth"
  fi
}


# Hàm quét và kết nối Bluetooth cho macOS (yêu cầu: brew install blueutil)
function bluescan() {
    # Kiểm tra lệnh blueutil
    if ! command -v blueutil &> /dev/null; then
        echo "❌ Lỗi: Không tìm thấy lệnh 'blueutil'."
        echo "👉 Anh cần chạy lệnh này trước: brew install blueutil"
        return 1
    fi

    # Bật Bluetooth nếu nó đang tắt
    if [[ "$(blueutil --power)" == "0" ]]; then
        echo "🔄 Đang bật Bluetooth..."
        blueutil --power 1
        sleep 2
    fi

    while true; do
        echo "🔄 Đang lấy danh sách các thiết bị đã từng ghép nối (Paired Devices)..."
        
        # Lấy danh sách thiết bị
        local devices_output="$(blueutil --paired)"
        
        if [[ -z "$devices_output" ]]; then
            echo "⚠️ Không tìm thấy thiết bị nào."
        fi

        local macs=()
        local names=()
        local index=1

        echo "\n📡 DANH SÁCH THIẾT BỊ BLUETOOTH:"
        # Phân tích từng dòng kết quả
        for line in "${(@f)devices_output}"; do
            if [[ -n "$line" ]]; then
                # Lấy địa chỉ MAC (định dạng xx-xx-xx-xx-xx-xx)
                local mac=$(echo "$line" | grep -oE '([0-9a-fA-F]{2}-){5}[0-9a-fA-F]{2}' | head -n 1)
                # Lấy Tên thiết bị (nằm trong cặp dấu ngoặc kép sau chữ name: )
                local name=$(echo "$line" | sed -n 's/.*name: "\([^"]*\)".*/\1/p')
                
                if [[ -n "$mac" && -n "$name" ]]; then
                    macs[$index]=$mac
                    names[$index]=$name
                    
                    # Đã đổi tên biến 'status' thành 'conn_status' để tránh xung đột với hệ thống zsh
                    if echo "$line" | grep -q "not connected"; then
                        local conn_status="⚪ Ngắt kết nối"
                    else
                        local conn_status="🟢 Đang kết nối"
                    fi

                    echo "  $index) $name [$mac] - $conn_status"
                    ((index++))
                fi
            fi
        done

        echo "  0) 🔄 Quét lại lần nữa"
        echo "  q) ❌ Thoát"
        
        echo "------------------------------------------------"
        local choices
        read "choices?👉 Nhập số thiết bị để kết nối (vd: 1 2 5), chọn 0 để quét lại: "

        if [[ "$choices" == "0" ]]; then
            echo "\n"
            continue
        elif [[ "$choices" == "q" || "$choices" == "Q" ]]; then
            echo "Đã thoát chương trình."
            return 0
        fi

        local selected_indices=($=choices)

        echo "\n"
        for sel in $selected_indices; do
            if [[ $sel -ge 1 && $sel -lt $index ]]; then
                local target_mac="${macs[$sel]}"
                local target_name="${names[$sel]}"
                
                echo "⏳ Đang thử kết nối với: $target_name [$target_mac]..."
                
                # Gọi blueutil để kết nối
                blueutil --connect "$target_mac"
                sleep 2 # Đợi 2s để Mac thiết lập kết nối
                
                # Kiểm tra xem có kết nối thành công không (1 là có, 0 là không)
                local is_connected=$(blueutil --is-connected "$target_mac")
                
                if [[ "$is_connected" == "1" ]]; then
                    echo "✅ Kết nối THÀNH CÔNG: $target_name"
                    
                    # Lấy thông tin pin qua system_profiler
                    local battery=$(system_profiler SPBluetoothDataType 2>/dev/null | grep -A 15 "$target_name" | grep -i "Battery Level:" | head -n 1 | awk '{print $3}')
                    [[ -z "$battery" ]] && battery="Không hỗ trợ xem pin qua CLI" 
                    
                    echo "   📌 Tên thiết bị : $target_name"
                    echo "   🔋 Trạng thái pin: $battery"
                    echo "------------------------------------------------"
                else
                    echo "❌ Kết nối thất bại với $target_name. Hãy chắc chắn thiết bị đang bật và ở gần."
                    echo "------------------------------------------------"
                fi
            else
                echo "⚠️ Lựa chọn '$sel' không hợp lệ. Bỏ qua."
            fi
        done

        break
    done
}

# Hàm tự động Start / Restart Yabai
yb() {
    # Kiểm tra xem có tiến trình tên 'yabai' đang chạy không
    if pgrep -x "yabai" > /dev/null; then
        echo "🔄 Yabai đang chạy. Đang khởi động lại..."
        yabai --restart-service
        echo "✅ Đã restart xong!"
    else
        echo "🚀 Yabai chưa chạy. Đang khởi động..."
        yabai --start-service
        echo "✅ Đã start xong!"
    fi
}


function cpnix() {
    cp ~/GINETSOPHIE/NIXOS/.zshrc ~/NIXOS-GRAPHIC-shared/.zshrc;
    cp ~/GINETSOPHIE/NIXOS/configuration.nix ~/NIXOS-GRAPHIC-shared/configuration.nix;
}

# bun completions
[ -s "/Users/gc-thaitoan/.bun/_bun" ] && source "/Users/gc-thaitoan/.bun/_bun"

# fnm
eval "$(fnm env --use-on-cd)"

# bun
export PATH="$HOME/.bun/bin:$PATH"
# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/Users/gc-thaitoan/.lmstudio/bin"

# fzf
eval "$(/opt/homebrew/bin/fzf --zsh)"
export FZF_COMPLETION_TRIGGER='`'
source /Users/gc-thaitoan/.config/broot/launcher/bash/br
