# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Alias
alias earth='ssh casea@earth.ecs.baylor.edu'
alias fire='ssh casea@fire.ecs.baylor.edu'  
alias and='ssh casea@and.ecs.baylor.edu'
alias wind='ssh casea@wind.ecs.baylor.edu'
alias e='exit'
alias ll='ls -l'
alias o='open'

# Custom bin folder
PATH="$HOME/bin:${PATH}"
export PATH

# Custom PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\h:\e[0;37m\W\e[m \u\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
