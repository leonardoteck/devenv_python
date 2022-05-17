sudo apt update
sudo apt upgrade

# gnome configs
sudo apt install gnome-tweak-tool

# postman
sudo snap install postman

# instala vscode, dbeaver..

# docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
su - ${USER}
docker
sudo systemctl start docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
docker --version
# fazer logoff e login de novo para o usermod funcionar

# zsh
sudo apt install zsh
chsh -s $(which zsh)
# fecha e abre de novo o terminal
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# tema spaceship
#git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
#ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# tema p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/mattberther/zsh-pyenv ~/.oh-my-zsh/custom/plugins/zsh-pyenv
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# instala as fontes Meslo
p10k configure

# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir .local/bin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
# ./.local/kitty.app/bin/kitty
cd ~/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
code ~/.config/kitty/kitty.conf
kitty +kitten themes

# firacode
sudo apt install fonts-firacode

# python
sudo apt install python3-pip
pip install pipenv
sudo apt install software-properties-common
sudo apt autoremove
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
sudo apt-get install python3-distutils
sudo apt-get install python3-apt
sudo apt-get install --reinstall python3-distutils
sudo apt-get install --reinstall python3-distutils_3.7.13
sudo apt install python3.7-distutils

# node
sudo apt install nodejs
sudo apt install npm
npm install nodemon -g
sudo npm install nodemon -g

# git linker
git config --global user.email "leonardo.costa@linker.com.br"
git config --global user.name "Leonardo Costa"
git clone git@github.com:LinkerBank/Core_DashPartners.git
git clone git@github.com:LinkerBank/Web_DashPartners.git
git clone git@github.com:LinkerBank/PIP_Banking.git
git clone git@github.com:LinkerBank/PIP_AIOLinker.git
git clone git@github.com:LinkerBank/PIP_Data.git
git clone git@github.com:LinkerBank/PIP_Fallback.git
git clone git@github.com:LinkerBank/PIP_Permissions.git
git clone git@github.com:LinkerBank/PIP_Security.git
git clone git@github.com:LinkerBank/PIP_Compliance.git
git clone git@github.com:LinkerBank/PIP_Logger.git
git clone git@github.com:LinkerBank/PIP_Bureau.git
git clone git@github.com:LinkerBank/Core_Billets.git
git clone git@github.com:LinkerBank/Core_Accounts.git
git clone git@github.com:LinkerBank/BFF_Athena.git
