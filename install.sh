sudo apt-get install git curl stow zsh tmux python bc vim
sudo apt-get install python-setuptools python-dev build-essential 
sudo easy_install pip
chsh -s /bin/zsh
autoload -Uz zsh-newuser-install; zsh-newuser-install -f
cd
git clone https://github.com/14roiron/dotfiles/ .dotfiles
cd .dotfiles
git checkout linux

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions 
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
pip install --user powerline-status

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9kdd
rm ~/.zshrc
cd ~/.dotfile
stow vim tmux git zsh 

curl https://raw.githubusercontent.com/14roiron/spf13-vim/3.0/bootstrap.sh -L | sh


#create ssh key
ssh-keygen -t rsa -b 4096 -C "yohann.roiron@mines-paristech.fr"
eval "$(ssh-agent -s)"
ssh-add -k ~/.ssh/id_rsa
echo "key to put on github"
cat ~/.ssh/id_rsa.pub
echo '----'
