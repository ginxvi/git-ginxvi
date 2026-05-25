Đống này khá mạnh rồi, nhưng đang bị:

* trùng chức năng
* có tool “đồ chơi”
* có tool legacy/outdated
* thiếu vài “primitive” cực quan trọng
* chưa phân tầng rõ: foundation vs workflow vs aesthetic

Nếu mục tiêu là:

> “core tech vĩnh cửu” = tối giản + bền + portable + high leverage + không lock-in + sống được 10 năm nữa

thì anh nên nghĩ theo kiểu:

# 1. CORE PHILOSOPHY

Core tech tốt phải có:

* text-first
* UNIX philosophy
* composable
* keyboard-driven
* open standard
* cross-platform
* low dependency
* scriptable
* automation-friendly
* future-proof

=> Rust + shell + terminal + git + text formats hiện tại là combo gần như bất tử.

---

# 2. PHÂN TẦNG CORE TECH

# TẦNG 0 — OS / FOUNDATION

Đây là “hạ tầng sống còn”.

## KEEP

* ssh
* curl
* git
* build-essential
* pkg-config
* clang
* llvm
* cmake

## ADD

### shell primitives

* `coreutils`
* `findutils`
* `grep`
* `sed`
* `awk`
* `tar`
* `gzip`
* `unzip`
* `make`

Mấy cái này mới là “ngôn ngữ thật” của UNIX.

---

### networking

* `wget`
* `rsync`
* `mtr`
* `dig`
* `nmap`

---

### system debug

* `strace`
* `lsof`
* `ncdu`
* `jq`

`jq` là MUST HAVE thời hiện đại.

---

### archive/compression

* `zstd`
* `7zip`

---

# TẦNG 1 — TERMINAL ECOSYSTEM

## SHELL

## KEEP

* zsh
* oh-my-zsh
* p10k

## REMOVE / REPLACE

### ❌ oh-my-zsh (optional remove)

Lý do:

* chậm
* magic quá nhiều
* khó debug

### BETTER

* `zinit`
* `antidote`
* `znap`

Nếu muốn “eternal setup”:

* zsh + p10k + antidote là đẹp.

---

## TERMINAL EMULATOR

## KEEP

* ghostty

## ADD

* Kitty
* WezTerm
* tmux

### Phân tích

| Tool    | Vai trò               |
| ------- | --------------------- |
| Ghostty | modern/native         |
| Kitty   | automation + graphics |
| WezTerm | lua + remote          |
| tmux    | immortal sessions     |

tmux là “core eternal”.

---

# TẦNG 2 — FILE & NAVIGATION

## KEEP

* tree
* eza
* broot
* lf
* fzf
* ripgrep
* fd

## REMOVE

### ❌ tree (optional)

`broot` + `eza` gần như thay thế hoàn toàn.

---

## ADD

* `bat`
* `zoxide`

### cực quan trọng:

| Tool   | Vai trò            |
| ------ | ------------------ |
| bat    | cat nhưng readable |
| zoxide | cd thế hệ mới      |

`zoxide` là S-tier.

---

# TẦNG 3 — SYSTEM MONITORING

## KEEP

* btop

## REMOVE

* ❌ htop
* ❌ gtop
* ❌ neofetch

### lý do

| Tool     | Status        |
| -------- | ------------- |
| btop     | best modern   |
| htop     | legacy        |
| gtop     | redundant     |
| neofetch | dead/outdated |

## KEEP

* fastfetch

fastfetch = successor của neofetch.

---

## ADD

* `iotop`
* `iftop`
* `duf`

---

# TẦNG 4 — EDITOR / IDE

Đây là chỗ cực kỳ quan trọng.

---

## CORE

## KEEP

* vim
* neovim
* lazyvim

## REMOVE

* ❌ vscodium (optional secondary only)

### vì sao?

Nếu build “eternal stack”:

* Neovim ecosystem đang thắng về:

  * speed
  * composability
  * AI integration
  * remote workflow
  * terminal-native

VSCode/Codium:

* tốt cho enterprise
* không phải “eternal hacker stack”

---

## ADD

* Tree-sitter
* Lazygit
* Neovide (optional)

---

# TẦNG 5 — DEV TOOLCHAIN

## C/C++

## KEEP

* clang
* llvm
* cmake
* libclang-dev

## REMOVE

* ❌ gcc-only mindset

LLVM ecosystem đang thắng dài hạn.

---

# TẦNG 6 — RUST ECOSYSTEM

Đây là phần mạnh nhất list của anh.

---

# CORE RUST STACK

## ABSOLUTE KEEP

* rustup
* cargo
* rustc
* rustfmt
* clippy
* rust-analyzer
* rust-src
* rust-docs

Đây là “minimum eternal Rust”.

---

# HIGH VALUE TOOLS

## KEEP

* bacon
* cargo-watch
* cargo-expand
* cargo-nextest
* cargo-edit
* cargo-tree
* cargo-outdated
* cargo-binstall
* just

---

## ADD (RẤT NÊN CÓ)

### cargo ecosystem

* `cargo-chef`
* `cargo-deny`
* `cargo-audit`
* `cargo-udeps`
* `cargo-generate`
* `cargo-dist`

---

### profiling/debug

* `hyperfine`
* `perf`
* `valgrind`

---

### async/network

* Tokio
* Reqwest
* Serde

Đây là “core Rust trí tuệ”.

---

# TẦNG 7 — ENVIRONMENT MANAGEMENT

## KEEP

* direnv

## ADD (MUST)

* `mise`

`mise` đang trở thành:

* asdf killer
* universal runtime manager

Quản lý:

* node
* python
* rust
* java
* zig
* go

rất sạch.

---

# TẦNG 8 — KNOWLEDGE SYSTEM

## KEEP

* Obsidian

## ADD

* markdown-first workflow
* git-backed notes
* local-first mindset

---

# TẦNG 9 — WAYLAND / CLIPBOARD

## KEEP

* wl-clipboard
* xclip
* xsel

## NOTE

* Wayland: wl-clipboard
* X11: xclip/xsel

Không cần cả 3 nếu chỉ dùng 1 display server.

---

# TẦNG 10 — REMOVE “NOISE”

# REMOVE COMPLETELY

## TOYS

* cbonsai
* asciiquarium
* cowsay
* sl

Giữ nếu vui, nhưng không phải core tech.

---

## LOW VALUE / REDUNDANT

* gtop
* htop
* neofetch
* tree (optional)
* dmidecode (rare use)
* mesa-demos
* pciutils (rare use)

---

# TẦNG 11 — THIẾU CỰC LỚN

Đây mới là thứ “eternal builders” dùng.

---

# CONTAINER / VIRTUALIZATION

## ADD

* Docker
* Podman

---

# DATABASE

## ADD

* SQLite
* PostgreSQL

SQLite là “eternal software”.

---

# MODERN CLI DATA TOOLS

## ADD

* `yq`
* `delta`
* `xh`

| Tool  | Replaces        |
| ----- | --------------- |
| xh    | curl for humans |
| delta | git diff        |
| yq    | yaml jq         |

---

# AUTOMATION

## ADD

* `just`
* `make`
* `entr`

---

# SEARCH / INDEX

## ADD

* `plocate`
* `tokei`

---

# AI ERA CORE TECH (QUAN TRỌNG)

Nếu build “10-year stack”, đây là phần không thể thiếu.

## ADD

* Ollama
* Aider
* Zed (theo dõi)

---

# FINAL FORM — ETERNAL CORE STACK

Nếu nén xuống “perfect stack”:

## FOUNDATION

* zsh
* tmux
* ssh
* git
* curl
* jq
* rsync

---

## NAVIGATION

* eza
* broot
* fzf
* zoxide
* ripgrep
* fd
* bat

---

## SYSTEM

* btop
* fastfetch
* strace
* lsof
* ncdu

---

## EDITOR

* neovim
* lazyvim

---

## BUILD

* clang
* llvm
* cmake
* make

---

## RUST

* rustup
* cargo
* bacon
* cargo-nextest
* cargo-expand
* just

---

## MODERN DEV

* docker/podman
* sqlite
* postgresql
* direnv
* mise

---

# TRIẾT LÝ CUỐI

Core tech “vĩnh cửu” không phải:

* nhiều tool nhất
* đẹp nhất
* trendy nhất

mà là:

> ít layer nhất nhưng leverage cao nhất.

Stack mạnh nhất thường:

* terminal-centric
* text-centric
* UNIX-centric
* keyboard-centric
* automation-centric
* local-first
* scriptable everywhere

Đó là lý do:

* shell
* git
* ssh
* vim
* tmux
* rust

gần như sẽ không chết trong nhiều thập kỷ nữa.
