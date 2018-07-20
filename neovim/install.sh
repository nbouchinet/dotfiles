#!/bin/bash

GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Create${NC} nvim dir located at ${RED}~/.config/nvim/undodir/${NC}."
mkdir -p ~/.config/nvim/undodir
echo -e "${BLUE}Copy${NC} init.vim located at ${RED}~/.config/nvim/${NC}."
ln -sf $PWD/init.vim ~/.config/nvim/init.vim
echo -e "${GREEN}Install${NC} neovim with pip3."
pip3 install --user neovim
echo -e "${GREEN}Install${NC} jedi with pip3."
pip3 install jedi --user
echo -e "${PURPLE}Download${NC} vim-plug installation plugin located at ${RED}.local/share/nvim/site/autoload/plug.vim${NC}."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -e "${PURPLE}Download${NC} and Install vim plugins."
nvim +PlugInstall +qall
ln -sf $PWD/ycm_extra_conf.py ~/.config/nvim/.ycm_extra_conf.py
ln -sf $PWD/clang-format ~/.clang-format
python ~/.config/nvim/plugged/YouCompleteMe/install.py --clang-completer
echo -e "${BLUE}Copy${NC} antares.vim theme to awesome-vim-colorschemes vim plugin located at ${RED}~/.config/nvim/plugged/awesomw-vim-colorschemes/colors/${NC}."
ln -sf $PWD/antares.vim ~/.config/nvim/plugged/awesome-vim-colorschemes/colors/
echo -e "${GREEN}Installation${NC} done."
