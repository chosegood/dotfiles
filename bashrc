#Set vim as default editor
#export VISUAL=vim
export EDITOR=vim

# Git tab completion
source ~/projects/github/git/contrib/completion/git-completion.bash
source ~/projects/github/git/contrib/completion/git-prompt.sh

# Show branch in status line
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[1;37m\][\t]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
