#!/bin/bash 
    echo '==============Instalndo o Dev-essentials -Bibliotecas | git | vim-gtk |curl=========='
    sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk curl -y 
    echo '======================Personalização=======================' 
    echo '==============================Instalando Tema Flat-Remix=======================================' 
    cd /tmp
    git clone https://github.com/daniruiz/flat-remix-gtk #.themes·
    git clone https://github.com/daniruiz/flat-remix #.icons·
    echo '======================================Criando Diretorios para Instalação========================' 
    mkdir -p ~/.icons && mkdir -p ~/.themes
    echo '=====================================Copiando os Arquivos===================================' 
    sudo cp -r /tmp/flat-remix-gtk/Flat-Remix* ~/.themes && sudo cp -r /tmp/flat-remix/Flat-Remix* ~/.icons
    echo '=================================Instalando o Tweek-Tool & Fonte Hack============================' 
    sudo apt install gnome-tweak-tool -y 
    sudo apt install fonts-hack-ttf -y 
    echo '=====================Instalando Walpaper da Tela de Login==============================' 
    cd ~
    wget github.com/thiggy01/ubuntu-20.04-change-gdm-background/raw/master/ubuntu-20.04-change-gdm-background 
    echo  '============================Permissões de Execussão==========================='
    chmod +x ubuntu-20.04-change-gdm-background 
    echo '===========================Baixando as Imagens================================='
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
    echo '=====================================Alterando o Background===========================' 
    cd ~
    sudo ./ubuntu-20.04-change-gdm-background ~/Walpapers/wallhaven-96w8e8.png
   echo '=================Ferramentas de Desenvolvimento=============='
    echo '===================Instalando o OpenSSH=================' 
    sudo apt install openssh-server -y 
    sudo ufw enable 
    sudo ufw allow OpenSSH 
    echo '=========Instalando Apache==========' 
    sudo apt install apache2 apache2-utils -y 
    echo '================Habilitando Apache Full==============' #Habiltando "Apache Full"
    sudo  ufw allow "Apache Full"
    echo '================Instalando MySql======================' #Instalando Mysql
    read -p 'Qual é a Versão do Mysql a ser Instalada?:' -n 10 
    wget -c https://repo.mysql.com//mysql-apt-config_"$REPLY"_all.deb
    sudo dpkg -i mysql-apt-config_"$REPLY"_all.deb 
    sudo apt update 
    sudo apt install mysql-community-server -y 
    echo '=================================Instalando PhpMyAdmin========================' 
    sudo apt install php libapache2-mod-php  apache2-utils php-pear php-dev libmcrypt-dev php-mysql -y && sudo pecl install mcrypt  && sudo apt install phpmyadmin -y
    echo '=============================Instalando Programas Personalizados=========================='
    echo '=================================Google==============================='
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

    read -p 'Reiniciar pc? (y/n):' -n 1
      if [ "$REPLY" == "y" ]; then
       halt --reboot
      fi







      
    


    



    
    










