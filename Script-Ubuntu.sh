#!/bin/bash 
    #Instalndo o Dev-essentials -Bibliotecas | git | vim-gtk |curl
    sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk curl -y 
    #======================Personalização=======================
    cd /tmp 
    #Instalando Tema Flat-Remix 
    cd /tmp
    git clone https://github.com/daniruiz/flat-remix-gtk #.themes·
    git clone https://github.com/daniruiz/flat-remix #.icons·
    #Criando Diretorios para Instalação 
    mkdir -p ~/.icons && mkdir -p ~/.themes
    #Copiando os Arquivos 
    sudo cp -r /tmp/flat-remix-gtk/Flat-Remix* ~/.themes && sudo cp -r /tmp/flat-remix/Flat-Remix* ~/.icons
    #Instalando o Tweek-Tool & Fonte Hack 
    sudo apt install gnome-tweek-tool -y 
    sudo apt install fonts-hack-ttf -y 
    #Instalando Walpaper da Tela de Login 
    cd ~
    wget github.com/thiggy01/ubuntu-20.04-change-gdm-background/raw/master/ubuntu-20.04-change-gdm-background 
    #Permissões de Execussão
    chmod +x ubuntu-20.04-change-gdm-background 
    #Baixando as Imagens
    mkdir Walpapers
    cd Walpapers
    wget https://w.wallhaven.cc/full/ey/wallhaven-eymzjk.jpg
    wget https://w.wallhaven.cc/full/2e/wallhaven-2em38y.jpg
    wget https://w.wallhaven.cc/full/6k/wallhaven-6k3oox.jpg
    wget https://w.wallhaven.cc/full/md/wallhaven-md5z28.jpg
    wget https://w.wallhaven.cc/full/ym/wallhaven-ymojgd.jpg·
    wget https://w.wallhaven.cc/full/dg/wallhaven-dg7y23.jpg·
    wget https://w.wallhaven.cc/full/lm/wallhaven-lmxmxy.png·
    wget https://w.wallhaven.cc/full/96/wallhaven-96w8e8.png
    wget https://w.wallhaven.cc/full/39/wallhaven-3911w9.jpg
    #Alterando o Background 
    cd ~
    sudo ./ubuntu-20.04-change-gdm-background ~/Walpapers/wallhaven-96w8e8.png
   #=================Ferramentas de Desenvolvimento==============
   #Instando o asdf 
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0-rc1
    echo '. $HOME/.asdf/asdf.sh' >>~/.bashrc
    echo '. $HOME/.asdf/completions/asdf.bash' >>~/.bashrc
    #Instalando Ruby 
    asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git 
    asdf list-all ruby
    read -p 'Versão do Ruby a ser Instalada?:' -n 10
        asdf install ruby $REPLY
        asdf global ruby $REPLY
    #Instalando o OpenSSH 
    sudo apt install openssh-server -y 
    sudo ufw enable 
    sudo ufw allow OpenSSH 
    #Instalando Apache 
    sudo apt install apache2 apache2-utils -y 
    #Habiltando "Apache Full"
    sudo  ufw allow "Apache Full"
    #Instalando Mysql
    read -p 'Qual é a Versão do Mysql a ser Instalada?:' -n 10 
    wget -c https://repo.mysql.com//mysql-apt-config_"$REPLY"_all.deb
    sudo dpkg -i mysql-apt-config_"$REPLY"_all.deb 
    sudo apt update 
    sudo apt install mysql-community-server -y 
    #Instalando PhpMyAdmin 
    sudo apt install php libapache2-mod-php  apache2-utils php-pear php-dev libmcrypt-dev php-mysql -y && sudo pecl install mcrypt  && sudo apt install phpmyadmin -y
    #Instalando O Yadr-Oh-My-zsh-Skwp
    sudo apt install tilix tmux -y 
    sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh `"
    #Configurando o zsh para asdf 
    echo '. $HOME/.asdf/asdf.sh' >>~/.zshrc
    echo '. $HOME/.asdf/completions/asdf.bash' >>~/.zshrc
    #Instalando Programas Personalizados 
    #Google 
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt update 
    sudo apt install ./google-chrome-stable_current_amd64.deb
    read -p 'Instalar Spotify? (y/n):' -n 1
      if [ "$REPLY" == "y" ]; then
        sudo snap install spotify -y 
      fi 
    read -p 'Instalar Virtual-Box? (y/n):' -n 1
      if [ "$REPLY" == "y" ]; then
        sudo apt install virtualbox -y 
      fi
    
    read -p 'Instalar Qbittorrent? (y/n):' -n 1
      if [ "$REPLY" == "y" ]; then
        sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
        sudo apt update 
        sudo apt install qbittorent -y 
      fi
      exit 

      





      
    


    



    
    










