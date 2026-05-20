sudo apt update
sudo apt upgrade
sudo apt install -y zsh git curl
echo 'exec zsh' >> .bashrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

sudo apt install nala

sudo nala install git
sudo nala remove git
sudo nala update


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source .cargo/env
rustc --version
cargo --version
rustup show
rustup component add rust-analyzer rust-src
rustup component list --installed

cargo new <name> --vcs none

sudo apt install build-essential
cc --version
sudo apt install pkg-config libssl-dev
---> cargo run/build

cargo install bacon cargo-watch cargo-expand just
cargo install --list

cargo install cargo-nextest --locked
cargo nextest run

cargo install cargo-edit
cargo add tokio
cargo remove serde
cargo update
cat Cargo.toml

cargo install cargo-tree
cargo tree | less

cargo install cargo-binstall
cargo binstall cargo-outdated
cargo outdated

sudo rm -rf /tmp/*
rm -rf .cargo/registry
rm -rf .cargo/git

GIT
sudo apt install gh
gh auth login

git init
echo > README.md
git add .
git commit -m "#"
gh repo create <name> --public --source=. --remote=origin --push
git status

git add .
git commit -m "<msg>"
git push
git pull origin main

# branch
git checkout -b feature/login
git push -u origin feature/login

# merge to main
git checkout main
git merge feature/login
git push

NEOVIM 
