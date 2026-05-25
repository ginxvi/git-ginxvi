# 1. FOUNDATION / UNIX PRIMITIVES

Đây là “DNA” của toàn bộ Linux/macOS terminal ecosystem.

---

## `ssh`

Secure remote shell.

### Dùng để:

* login server
* remote dev
* copy file
* tunnel network
* deploy

### Core commands

```bash
ssh user@host
```

```bash
scp file user@host:/path
```

```bash
ssh-keygen
```

---

## `curl`

HTTP client cực mạnh.

### Dùng để:

* gọi API
* download file
* test backend
* scripting

```bash
curl https://example.com
```

POST:

```bash
curl -X POST api.com
```

---

## `wget`

Download-focused hơn curl.

```bash
wget url
```

recursive:

```bash
wget -r website.com
```

---

## `rsync`

Sync file/folder siêu mạnh.

### Use cases:

* backup
* deploy
* sync server

```bash
rsync -av folder/ server:/path
```

---

## `jq`

JSON processor.

### MUST HAVE thời API/AI hiện đại.

```bash
cat data.json | jq
```

```bash
curl api | jq '.name'
```

---

## `sed`

Text replace stream editor.

```bash
sed 's/old/new/g'
```

---

## `awk`

Mini programming language cho text.

```bash
awk '{print $1}'
```

---

## `grep`

Search text.

```bash
grep hello file.txt
```

---

## `find`

Find file.

```bash
find . -name "*.rs"
```

---

## `tar`

Archive tool.

```bash
tar -xvf file.tar
```

---

# 2. SHELL ECOSYSTEM

---

## `zsh`

Modern shell.

### Better than bash:

* autocomplete
* plugin ecosystem
* syntax
* prompts

---

## `oh-my-zsh`

Plugin manager cho zsh.

### Có:

* themes
* aliases
* plugins

---

## `p10k` (Powerlevel10k)

Prompt theme cực mạnh.

Hiển thị:

* git status
* runtime
* battery
* errors
* async info

---

## `tmux`

Terminal multiplexer.

### Cực kỳ quan trọng.

Cho phép:

* nhiều terminal session
* detach/reattach
* remote persistent work

### Workflow:

```bash
tmux
```

detach:

```bash
Ctrl+b d
```

attach lại:

```bash
tmux attach
```

---

## `zoxide`

Smart cd.

### Thay thế:

```bash
cd
```

### Example:

```bash
z proj
```

nó nhớ folder anh vào nhiều nhất.

---

# 3. TERMINAL UI / NAVIGATION

---

## `eza`

Modern `ls`.

### Better:

* icons
* git info
* tree mode

```bash
eza -la
```

---

## `broot`

Tree explorer interactive.

### Search + navigate file system.

```bash
br
```

---

## `lf`

Terminal file manager.

Kiểu:

* ranger
* nnn

nhưng tối giản.

---

## `fzf`

Fuzzy finder.

### Một trong những tool mạnh nhất UNIX hiện đại.

Search interactive:

```bash
history | fzf
```

find file:

```bash
fzf
```

---

## `fd`

Modern `find`.

Nhanh hơn + syntax đẹp hơn.

```bash
fd main
```

---

## `ripgrep` (`rg`)

Modern grep.

### Rất nhanh.

```bash
rg hello
```

---

## `bat`

Better cat.

### Có:

* syntax highlight
* git integration

```bash
bat file.rs
```

---

# 4. SYSTEM MONITORING

---

## `btop`

Modern task manager terminal.

Hiển thị:

* CPU
* RAM
* disks
* network
* processes

```bash
btop
```

---

## `htop`

Legacy version của btop.

---

## `fastfetch`

System info fetcher.

Hiển thị:

* OS
* CPU
* GPU
* shell
* packages

```bash
fastfetch
```

---

## `strace`

Debug syscall.

### Siêu mạnh.

Biết process đang:

* đọc file gì
* gọi network gì
* crash ở đâu

```bash
strace app
```

---

## `lsof`

List open files.

```bash
lsof -i :3000
```

---

## `ncdu`

Disk usage analyzer.

```bash
ncdu
```

---

## `duf`

Modern disk usage UI.

---

# 5. EDITOR / IDE

---

## `vim`

Legendary modal editor.

Core idea:

* keyboard only
* modes
* composable editing

---

## `neovim`

Modern vim fork.

### Thêm:

* Lua
* LSP
* treesitter
* async plugins

---

## `lazyvim`

Preconfigured neovim distro.

### Có sẵn:

* LSP
* git
* autocomplete
* formatter
* telescope

---

## Tree-sitter

Parser engine.

### Cho:

* syntax highlight chuẩn
* structural editing
* semantic understanding

---

## Neovide

GUI cho neovim.

---

# 6. GIT ECOSYSTEM

---

## `git`

Version control.

### Core:

* snapshot
* branch
* merge
* history

---

## `gh`

GitHub CLI.

```bash
gh repo clone
```

```bash
gh pr create
```

---

## `lazygit`

Git TUI.

### Easier:

* staging
* branching
* commits

```bash
lazygit
```

---

## `delta`

Better git diff viewer.

---

# 7. BUILD / COMPILER TOOLCHAIN

---

## `clang`

C/C++ compiler.

LLVM ecosystem.

---

## `llvm`

Compiler infrastructure.

Nhiều compiler hiện đại build trên nó.

---

## `cmake`

Cross-platform build system.

```bash
cmake .
```

---

## `make`

Automation/build tool.

```make
build:
	cargo build
```

```bash
make build
```

---

## `pkg-config`

Library discovery tool.

Giúp compiler biết:

* include path
* linker flags

---

# 8. RUST ECOSYSTEM

---

## `rustup`

Rust toolchain manager.

```bash
rustup update
```

---

## `cargo`

Rust package/build manager.

### Core commands

```bash
cargo build
cargo run
cargo test
```

---

## `clippy`

Rust linter.

```bash
cargo clippy
```

---

## `rustfmt`

Formatter.

```bash
cargo fmt
```

---

## `rust-analyzer`

LSP engine cho editor.

### Cho:

* autocomplete
* go-to-definition
* inline types

---

## `bacon`

Background cargo watcher.

### Instant feedback.

```bash
bacon
```

---

## `cargo-watch`

Watch file changes.

```bash
cargo watch -x run
```

---

## `cargo-expand`

Expand macros.

### Rất quan trọng khi học Rust.

```bash
cargo expand
```

---

## `cargo-nextest`

Modern test runner.

Nhanh hơn test mặc định.

---

## `cargo-edit`

Cho phép:

```bash
cargo add serde
```

---

## `cargo-tree`

Dependency tree.

---

## `cargo-outdated`

Check crate outdated.

---

## `cargo-binstall`

Install binary siêu nhanh.

---

## `cargo-chef`

Docker dependency caching.

---

## `cargo-audit`

Security vulnerability scanner.

---

## `cargo-deny`

Policy checker:

* license
* security
* duplicate deps

---

## `cargo-udeps`

Find unused deps.

---

## `cargo-generate`

Project template generator.

---

## `cargo-dist`

Release automation.

---

# 9. ENVIRONMENT MANAGEMENT

---

## `direnv`

Auto-load env variables khi enter folder.

### Example:

```env
export DATABASE_URL=...
```

---

## `mise`

Universal runtime manager.

Quản lý:

* node
* python
* rust
* java
* go

---

# 10. DATABASE

---

## SQLite

Single-file database.

### Perfect cho:

* apps
* tooling
* local-first

---

## PostgreSQL

Best general-purpose DB hiện nay.

---

# 11. CONTAINERIZATION

---

## Docker

App isolation.

### “Works everywhere”.

---

## Podman

Docker alternative:

* rootless
* daemonless

---

# 12. AI ERA TOOLS

---

## Ollama

Run AI models locally.

```bash
ollama run llama3
```

---

## Aider

AI coding assistant trong terminal.

---

## Zed

Next-gen editor:

* Rust-based
* multiplayer
* AI-native

---

# 13. KNOWLEDGE SYSTEM

---

## Obsidian

Markdown knowledge base.

### Core ideas:

* local-first
* graph notes
* backlinking

---

# 14. TERMINAL “FUN” TOOLS

---

## `cbonsai`

ASCII bonsai tree.

---

## `cowsay`

ASCII cow.

---

## `asciiquarium`

ASCII aquarium.

---

## `sl`

Fake train khi gõ nhầm `ls`.

---

# 15. CÁI QUAN TRỌNG NHẤT

Không phải nhớ command.

Mà là hiểu:

| Layer      | Purpose         |
| ---------- | --------------- |
| shell      | orchestrate     |
| text tools | transform       |
| git        | history         |
| ssh        | remote          |
| tmux       | persistence     |
| editor     | thinking        |
| compiler   | creation        |
| containers | reproducibility |
| database   | memory          |
| automation | leverage        |

Khi hiểu layer này, anh sẽ:

* tự build workflow
* không phụ thuộc IDE
* không lock-in ecosystem
* làm chủ terminal thật sự.
