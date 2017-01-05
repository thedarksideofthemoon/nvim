# My neovim settings

## Installing neovim
[Link](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## Checking out this repository

    cd ~/.config
    git clone https://github.com/thedarksideofthemoon/nvim.git

## Install Plugin Manager

    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Start nvim and install plugins

    nvim
    :PlugInstall

## Install Rust

    curl https://sh.rustup.rs -sSf | sh

Then follow the onscreen instructions (c.f. [rustup Readme](https://github.com/rust-lang-nursery/rustup.rs)).

Install racer:
    
    cargo install racer

Install the source code for racer:

    rustup component add rust-src

Edit your .bashrc to contain the following lines:

    # Rust
    export PATH="$HOME/.cargo/bin:$PATH"
    # For Racer
    export CARGO_HOME="$HOME/.cargo"
    export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

## Compile YouCompleteMe

    cd ~/.config/nvim/plugged/YouCompleteMe
    # Select your completers
    ./install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer

## Compile vim-mardown-preview

    cd ~/.config/nvim/plugged/vim-mardown-composer
    cargo build --release
