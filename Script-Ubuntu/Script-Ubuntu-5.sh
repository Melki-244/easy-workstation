
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
    
