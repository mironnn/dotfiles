#!/bin/bash
printf "${CYAN}Apt-get updating...${NORMAL}\n"
add-apt-repository ppa:neovim-ppa/unstable
apt-get -qq update
printf "${GREEN}DONE!${NORMAL}\n"


printf "${CYAN}Install apps from apt-get...${NORMAL}\n"
apt-get -qqy install python
apt-get -qqy install python3
apt-get -qqy install vim
apt-get -qqy install tmux
apt-get -qqy install cmake

apt-get -qqy install software-properties-common
apt-get -qqy install python-software-properties
apt-get -qqy install neovim
apt-get -qqy install python-dev
apt-get -qqy install python-pip
apt-get -qqy install python3-dev
apt-get -qqy install python3-pip
apt-get -qqy install silversearcher-ag

apt-get -qqy install curl
apt-get -qqy install xclip
# apt-get -qqy install zsh
apt-get -qqy install git-extras
pip3 install --upgrade neovim

pip3 install pynvim

# mkdir -p ~/.local/share/fonts
# cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
# cd -

cd ${SCRIPTPATH}
cp -R ./src/SpaceVim.d/ ~/.SpaceVim.d/

printf "${GREEN}DONE!${NORMAL}\n"
