# Install Chrome Browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Install git 
sudo apt install git-all

# Install vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# Install pycharm
wget -c https://download.jetbrains.com/python/pycharm-community-2021.1.3.tar.gz -O - | tar -xz
mv pycharm-community* $HOME

# Install ZSH
sudo apt install zsh
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install terminator
sudo apt-get install terminator

# Install fzf
mkdir $HOME/Documents/git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Keepassxc
sudo apt-get install keepassxc 

# Install virtualenv
sudo apt-get install virtualenv 
mkdir $HOME/virtual_envs

# Install curl
sudo apt-get install curl

# Install Docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

# Install Homebrew (to install eg tfenv)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tfenv with homebrew
brew install tfenv
echo ""  >> ~/.zshrc
echo ""  >> ~/.zshrc
echo "# Enable tfenv" >> ~/.zshrc
echo "echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/soerenerichsen/.profile" >> ~/.zshrc
echo "eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"" >> ~/.zshrc

# Install starship shell prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo ""  >> ~/.zshrc
echo ""  >> ~/.zshrc
echo "# Enable Starship prompt in Zsh shell" >> ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc 

# Install pyenv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

curl https://pyenv.run | zsh
echo "" ~/.zshrc
echo "#pyenv" ~/.zshrc
echo "export PATH='$HOME/.pyenv/bin:$PATH'" ~/.zshrc
echo "export PATH='$PYENV_ROOT/bin:$PATH'" ~/.zshrc
echo "if command -v pyenv 1>/dev/null 2>&1; then" ~/.zshrc
echo "  eval '$(pyenv init -)'" ~/.zshrc
echo "fi" ~/.zshrc
