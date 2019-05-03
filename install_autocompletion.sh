sudo apt-get install npm node clang
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
curl https://sh.rustup.rs -sSf | sh
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer #--js-completer --rust-completer
