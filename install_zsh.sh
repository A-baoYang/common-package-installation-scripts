# update packages
sudo apt update

# install required packages
sudo apt install zsh git curl -y

# verify zsh installation
zsh --version

# Set the default shell to zsh
sudo chsh -s $(which zsh) $(whoami)

# Install oh-my-zsh: https://ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k: https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k