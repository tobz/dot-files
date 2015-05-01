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
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ~
rm -rf /tmp/fonts

# Now install some stuff we definitely need.
echo "Installing development tools / languages / runtimes / etc..."
brew install mysql
brew install rabbitmq
brew install elixir
brew install go

# Now move these dotfiles into place.
ln -snf $DIR/.vimrc ~/.vimrc
ln -snf $DIR/.zshrc ~/.zshrc

# Time to bootstrap Vim.
echo "Configuring Vim..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/elixir-lang/vim-elixir.git
git clone git://github.com/altercation/vim-colors-solarized.git
