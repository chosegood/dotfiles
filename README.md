My Dotfiles
===========

mkdir projects/github/ && cd projects/github/  

git clone https://github.com/git/git.git  

git clone https://github.com/chosegood/dotfiles && cd dotfiles/  
ln -s ~/projects/github/dotfiles/gitignore ~/.gitignore  
ln -s ~/projects/github/dotfiles/gitconfig ~/.gitconfig  
ln -s ~/projects/github/dotfiles/vimrc ~/.vimrc  
ln -s ~/projects/github/dotfiles/vim ~/.vim  

cd
touch .bash_profile
echo source ~/projects/github/dotfiles/bashrc >> .bash_profile  