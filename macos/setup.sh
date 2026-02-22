echo "Instalando utilitários"

brew install --cask maccy
brew install --cask rectangle
brew install --cask iterm2
brew install jandedobbeleer/oh-my-posh/oh-my-posh

echo "Instalando nerd font"

oh-my-posh font install CascadiaCode

echo "Criando symlink para a pasta .env"
ln -s ~/source/env ~/.env

echo "Criando symlinks para os arquivos de configuração"
ln -s ~/.env/dotfiles/macos/rcs/zshrc ~/.zshrc
ln -s ~/.env/dotfiles/configs/gitconfig ~/.gitconfig