# Install git 
sudo apt install git-all

# Install terminator
sudo apt-get install terminator

# Install ZSH
sudo apt install zsh
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fzf
mkdir $HOME/Documents/git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install starship shell prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo ""  >> ~/.zshrc
echo ""  >> ~/.zshrc
echo "# Enable Starship prompt in Zsh shell" >> ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc 

# Install Qtile from Source
sudo apt install python3-pip
pip3 install xcffib
pip3 install --no-cache-dir cairocffi
sudo apt-get install libpangocairo-1.0-0
sudo apt install python-gobject 
sudo apt install python-dbus