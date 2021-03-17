#!/bin/bash
##################################
# Low-Level Vagrant Machine      #
#     for Foundations            #
##################################
function install {
    echo installing "$1"
    shift
    sudo apt-get -y install "$@" >/dev/null 2>&1
}

function pip_install {
    echo installing "$1"
    shift
    sudo pip install "$@" >/dev/null 2>&1
}

echo "Updating package information"
sudo apt-get -y update >/dev/null 2>&1
echo "Upgranding package information"
sudo apt-get -y upgrade >/dev/null 2>&1

# C developement
install 'gdb' gdb git

# Python development
install 'pip' python-pip
install 'python spam spam spam spam and spam' python-numpy python-scipy python-dev python-pip python-nose

# Install MySQL
echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list
install 'mysql' mysql-server-5.7

# emacs
FILE_E='/home/vagrant/emacs'

if [ ! -d "$FILE_E" ]; then
    echo "Installing emacs"
    git clone -b master git://git.sv.gnu.org/emacs.git /home/vagrant/emacs >/dev/null 2>&1
else
    echo "Emacs is installed"
fi

# Betty linter
FILE='/home/vagrant/Betty'

if [ ! -d "$FILE" ]; then
    echo "Installing Betty linter"
    git clone https://github.com/holbertonschool/Betty /home/vagrant/Betty >/dev/null 2>&1
else
    echo "Betty is installed"
fi
# sudo /home/vagrant/Betty/install.sh

# Miscellaneous
pip_install 'required Python libraries' pyyaml cython

pip_install 'ipython' ipython

echo 'All set!'
