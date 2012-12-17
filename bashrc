#Set vim as default editor
#export VISUAL=vim
export EDITOR=vim

# Git tab completion
source ~/projects/github/git/contrib/completion/git-completion.bash

# Show branch in status line
PS1='\[\033[0;35m\][\t]\[\033[0;32m\][\w$(__git_ps1 " (%s)")]$\[\033[0m\] '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Open SublimeText 2
function subl() {
  /opt/sublime/sublime_text $1 &
}
