#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# First, install Brew.  Installation method sucks, but it is what it is.
echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Next, install Git.
echo "Installing git..."
brew install git

# Now, pull in some goodies like oh-my-zsh and fancy fonts.
echo "Installing oh-my-zsh and changing default shell to zsh..."
curl -s -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo "Installing Powerline patched fonts (for special oh-my-zsh themes)..."
cd /tmp
git clone --depth=1 https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ~
rm -rf /tmp/fonts

# Now install some stuff we definitely need.
echo "Installing development tools / languages / runtimes / etc..."
brew install neovim --with-python3
brew install mysql
brew install rabbitmq
brew install elixir
brew install go
brew install rustup

# Configure our Rust environment.
rustup self update
rustup install nightly
rustup component add rls-preview --toolchain nightly
rustup component add rust-analysis --toolchain nightly
rustup component add rust-src --toolchain nightly

# Now move these dotfiles into place.
mkdir -p ~/.config/nvim
ln -snf $DIR/nvim/init.vim ~/.config/nvim/init.vim
ln -snf $DIR/.zshrc ~/.zshrc
