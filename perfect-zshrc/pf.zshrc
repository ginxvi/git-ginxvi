# gin signature : gin.w.xvi.e.s

# ZSH
source "$GINZSH_PATH/zsh"

# AUTH
export GIN_SIGNATURE="gin-w-xvi-e-s"
echo "This is $GIN_SIGNATURE."

# LOCAL VARS
export MAIN_PATH="$HOME/GINETSOPHIE"
export GITGINXVI_PATH="$MAIN_PATH/git-ginxvi"
export GINZSH_PATH="$GITGINXVI_PATH/ginzsh"
export CONFIG_PATH="$HOME/.config"
# LOCAL CDS
alias main="cd $MAIN_PATH"
alias gingit="cd $GITGINXVI_PATH"
alias ginzsh="cd $GINZSH_PATH"
alias cf="cd $CONFIG_PATH"

# GLOBAL ALIASES
alias s="source"
alias c="clear"
alias e="exit"
alias r="rm -rf"

alias sr="sudo rm -rf"
alias la="ls -alh"
alias ea="eza -alh"

alias own="sudo chown $(whoami):$(id -gn)"
alias ownall="sudo chown -R $(whoami):$(id -gn)"

# LOCAL ALIASES : MAC
alias macinfo="system_profiler SPHardwareDataType && echo && df -h && echo && vm_stat"

# GLOBAL VARS
export OS_TYPE="$(uname -s)"
export ARCH_TYPE="$(uname -m)"
export PATH="$HOME/.local/bin:$PATH"
export ZSHRC_PATH="$HOME/.zshrc"
export RECENT_TIME="$(date +%Y-%m-%d-%H-%M-%S)"

# ZSHRC STUFFS
alias nz="nano $ZSHRC_PATH"
alias sz="source $ZSHRC_PATH"
alias cz="code $ZSHRC_PATH"
alias bz="cp $ZSHRC_PATH $ZSHRC_PATH.bak"
alias iz="cp $ZSHRC_PATH $GITGINXVI_PATH/recent-zshrc/zshrc-${RECENT_TIME}.bak"
alias ez="cp $GITGINXVI_PATH/perfect-zshrc/pf.zshrc $HOME/.zshrc && source $HOME/.zshrc"

# GIT
alias gacp='git add . && git commit -m "$GIN_SIGNATURE" && git push'

# BREW
alias buuc='brew update && brew upgrade && brew cleanup'

# BUN SETUP
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH" 

# MPV
alias m='mpv --no-video --loop-playlist=inf'

# WEB CURL
alias gpt='open https://chatgpt.com/'
alias gem='open https://gemini.google.com/app'

# DU & CLEANUP
alias ducli='du -sh /opt/homebrew/Cellar/* 2>/dev/null | sort -hr | head -50'
alias ducask='du -sh /opt/homebrew/Caskroom/* 2>/dev/null | sort -hr | head -50'
alias duapp='du -sh /Applications/* 2>/dev/null | sort -hr | head -50'
alias cleantrash='[ -n "$(ls -A ~/.Trash 2>/dev/null)" ] && sudo rm -rf /Volumes/Macintosh\ HD/.Trashes/$(id -u)/* && echo "🧹 Cleaned" || echo "✅ No trash anymore"'

# BTOP
alias b1='btop -u 100'
alias b2='btop -u 100'
alias b3='btop -u 300'

# CONDA
alias concu='conda update conda'
alias conua='conda update --all'
alias condf='conda deactivate && conda activate Con-Default-14'

# Ollama AI
alias ol='ollama'
alias ols='ollama list'
alias olp='ollama pull'
alias olru='ollama run'
alias olrm='ollama rm'

# LOGX
alias logx='python ~/Desktop/NF/LOGTOOL/main.py'
alias oplogx='code ~/Desktop/NF/LOGTOOL'

# GHOSTTY
alias gttyr='osascript -e '\''tell application "Ghostty" to activate'\'' && osascript -e '\''tell application "System Events" to keystroke "," using {command down, shift down}'\'''

# FZF
eval "$(/opt/homebrew/bin/fzf --zsh)"
eval "$(/opt/homebrew/bin/fzf --zsh)"

# LICH
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
