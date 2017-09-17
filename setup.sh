# make workspace & dev directory
cd ~
mkdir workspace
cd workspace && mkdir dev
cd ~

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all
brew doctor
brew -v

# install git
brew install git
git --version

# install & setting zsh
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff
which -a zsh
sudo -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /usr/local/bin/zsh

# install mas
brew install mas

# install apps
# - sublimeText3
brew tap caskroom/homebrew-versions
brew cask install sublime-text

# - xcode
brew install 497799835 

# android-studio
brew cask install android-studio

# iterm
brew cask install iterm2

# chrome
brew cask install google-chrome

# shiftit
brew cask install shiftit
brew cask instal xquartz

# install language
# - go
brew install go
which go
mkdir workspace/dev/go/.go
export GOPATH=$HOME/workspace/dev/go/.go
export PATH=$PATH:$GOPATH/bin
# go environment setting
if [ -x "`which go`" ]; then
    export GOPATH=$HOME/workspace/dev/go/.go
    export PATH=$PATH:$GOPATH/bin
fi


