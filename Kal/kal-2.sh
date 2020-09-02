
    echo '==============Instalndo o Dev-essentials -Bibliotecas | git | vim-gtk |curl=========='
    sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk curl -y 
    echo '=================================Google==============================='
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt update 
    sudo apt install ./google-chrome-stable_current_amd64.deb
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
    wget https://w.wallhaven.cc/full/96/wallhaven-96w8e8.
    echo '=====================================Alterando o Background===========================' 
    cd ~
    sudo ./ubuntu-20.04-change-gdm-background ~/Walpapers/wallhaven-96w8e8.png
    echo '====================Instalando Ruby====================' 
    asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git 
    asdf list-all ruby
    read -p 'Versão do Ruby a ser Instalada?:' -n 10
        asdf install ruby $REPLY
        asdf global ruby $REPLY 
    
    echo '======================Instalando O Yadr-Oh-My-zsh-Skwp=================='
    sudo apt install tilix tmux zsh -y
    sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh `"
    echo '==========================Configurando o $PATH========================='
    echo '. $HOME/.asdf/asdf.sh' >>~/.zshrc
    echo '. $HOME/.asdf/completions/asdf.bash' >>~/.zshrc

